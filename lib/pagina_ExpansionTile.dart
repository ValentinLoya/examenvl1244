import 'package:flutter/material.dart';

class PantallaUno extends StatelessWidget {
  const PantallaUno({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Expansion Tile')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            const ExpansionTile(
              title: Text(
                'Ver más',
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              leading: Icon(Icons.info),
              backgroundColor: Colors.black12,
              children: [
                ListTile(title: Text('Primer elemento')),
                ListTile(title: Text('Segundo elemento')),
                ListTile(title: Text('Tercer elemento')),
                ListTile(title: Text('Cuarto elemento')),
              ],
            ),
            const SizedBox(
                height: 20), // Espacio entre la ExpansionTile y el botón
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
