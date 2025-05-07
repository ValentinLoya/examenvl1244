import 'package:flutter/material.dart';

class PantallaSiete extends StatelessWidget {
  const PantallaSiete({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Placeholder')),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          const Placeholder(
            fallbackHeight: 100,
            strokeWidth: 5,
            color: Colors.teal,
          ),
          Row(
            mainAxisAlignment:
                MainAxisAlignment.center, // Centré la fila para el Placeholder
            children: const [
              Placeholder(
                fallbackHeight:
                    200, // Reduje la altura para mejor visualización
                fallbackWidth: 150, // Reduje el ancho
                strokeWidth: 5,
                color: Colors.pink,
              ),
            ],
          ),
          const Placeholder(
            fallbackHeight: 90,
            strokeWidth: 5,
            color: Colors.red,
          ),
          const SizedBox(height: 20), // Espacio antes del botón
          ElevatedButton(
            onPressed: () {
              Navigator.pop(context);
            },
            child: const Text('Regresar!'),
          ),
        ],
      ),
    );
  }
}
