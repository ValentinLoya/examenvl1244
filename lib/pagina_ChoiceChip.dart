import 'package:flutter/material.dart';

class PantallaDos extends StatefulWidget {
  const PantallaDos({super.key});

  @override
  State<PantallaDos> createState() => _PantallaDosState();
}

class _PantallaDosState extends State<PantallaDos> {
  bool _isSelected = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Pantalla Dos')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ChoiceChip(
              avatar: const Icon(Icons.ac_unit),
              label: const Text('Opción Seleccionable'),
              selected: _isSelected,
              onSelected: (newBoolValue) {
                setState(() {
                  _isSelected = newBoolValue;
                });
              },
            ),
            const SizedBox(height: 20), // Add some spacing
            ElevatedButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: const Text('Regresar!'),
            ),
          ],
        ),
      ),
    );
  }
}
