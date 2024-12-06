import 'package:flutter/material.dart';

class Ejercicio02 extends StatelessWidget {
  const Ejercicio02({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Ejercicio 02"),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            // Entrada para la altura
            alturaInput(),
            SizedBox(height: 20),
            // Botón para calcular la presión
            ElevatedButton(
              onPressed: () {
                // Mostrar resultado en un cuadro de diálogo
                showDialog(
                  context: context,
                  builder: (context) => AlertDialog(
                    title: Text("Resultado"),
                    content:
                        calcularPresion(), // Calcula y muestra el resultado
                    actions: [
                      TextButton(
                        onPressed: () {
                          Navigator.of(context).pop(); // Cierra el diálogo
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

TextEditingController _altura = new TextEditingController();
Widget alturaInput() {
  return TextField(
    keyboardType: TextInputType.number,
    controller: _altura,
    decoration: InputDecoration(
      border: OutlineInputBorder(borderRadius: BorderRadius.circular(10)),
      labelText: 'Ingrese altura',
      labelStyle: const TextStyle(fontSize: 18),
    ),
  );
}

Widget calcularPresion() {
  double densidad = 1025;
  double gravedad = 9.8;
  double altura = double.parse(_altura.text);
  double presion = densidad * gravedad * altura;
  return Text(
    "La presión es: ${presion.toStringAsFixed(2)} Pa",
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
  );
}
