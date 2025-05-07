import 'package:flutter/material.dart';

class PantallaCuatro extends StatelessWidget {
  const PantallaCuatro({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Radial & Sweep Gradient')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const SizedBox(height: 10.0),
            const Text(
              'Radial Gradient ⬇',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            Container(
              height:
                  150, // Reduje la altura para mejor visualización en la pantalla
              width: 250, // Reduje el ancho
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: const RadialGradient(
                  colors: [
                    Colors.red,
                    Colors.orange,
                    Colors.yellow,
                    Colors.green,
                    Colors.blue,
                    Colors.indigo,
                    Colors.deepPurpleAccent,
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            const Text(
              'Sweep Gradient ⬇',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 5.0),
            Container(
              height: 150, // Reduje la altura
              width: 250, // Reduje el ancho
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(12.0),
                gradient: const SweepGradient(
                  colors: [
                    Colors.purple,
                    Colors.red,
                    Colors.orange,
                    Colors.yellow,
                    Colors.green,
                    Colors.blue,
                    Colors.indigo,
                    Colors.deepPurpleAccent,
                  ],
                ),
              ),
            ),
            const SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Volver'),
            ),
          ],
        ),
      ),
    );
  }
}
