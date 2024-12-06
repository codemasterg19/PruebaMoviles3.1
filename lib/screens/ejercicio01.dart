import 'package:flutter/material.dart';

class Ejercicio01 extends StatelessWidget {
  const Ejercicio01({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("EJERCICIO 01"),
        centerTitle: true,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            velocidadInicial(),
            SizedBox(height: 10),
            velocidadFinal(),
            SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Resultado"),
                    content: resultado_btn(),
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop();
                        },
                        child: Text("Aceptar"),
                      ),
                    ],
                  ),
                );
              },
              child: Text("Calcular"),
            ),
          ],
        ),
      ),
    );
  }
}

TextEditingController _vinicial = new TextEditingController();
Widget velocidadInicial() {
  return TextField(
    keyboardType: TextInputType.number,
    controller: _vinicial,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      labelText: 'Ingrese velocidad inicial',
      labelStyle: const TextStyle(fontSize: 18),
    ),
  );
}

TextEditingController _vfinal = new TextEditingController();
Widget velocidadFinal() {
  return TextField(
    keyboardType: TextInputType.number,
    controller: _vfinal,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      labelText: 'Ingrese velocidad final',
      labelStyle: const TextStyle(fontSize: 18),
    ),
  );
}

Widget resultado_btn() {
  double vinicial = double.parse(_vinicial.text);
  double vfinal = double.parse(_vfinal.text);
  double a = 10;

  double tiempo = (vfinal - vinicial) / a;

  if (tiempo <= 10) {
    return Text(
        "El vehiculo aprobó con un tiempo de: ${tiempo.toStringAsFixed(2)} segundos.");
  } else {
    return Text(
        "El vehiculo no aprobó con un tiempo de: ${tiempo.toStringAsFixed(2)} segundos.");
  }
}
