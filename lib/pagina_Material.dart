import 'package:flutter/material.dart';

class PantallaDiez extends StatelessWidget {
  const PantallaDiez({Key? key}) : super(key: key);

  Widget _myWidget(BuildContext context) {
    return Center(
      child: Text(
        '"Builder" widget will give a new context',
        style: Theme.of(context).textTheme.displayMedium,
        textAlign: TextAlign.center,
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[900],
      appBar: AppBar(title: const Text('Material')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Material(
              color: Colors.red,
              textStyle: const TextStyle(color: Colors.white),
              borderRadius: BorderRadius.circular(20.0),
              elevation: 10.0,
              shadowColor: Colors.white,
              child: Container(
                alignment: Alignment.center,
                height: 150.0,
                width: 150.0,
                child: const Text('I Need a Shadow'),
              ),
            ),
            const Material(
              color: Colors.deepOrange,
              elevation: 30.0,
              shadowColor: Colors.blue,
              child: ListTile(
                leading: Text('I also'),
                trailing: Text('Need a drop shadow'),
              ),
            ),
            const Material(
              color: Colors.yellow,
              textStyle: TextStyle(fontSize: 18, color: Colors.black),
              child: Padding(
                padding: EdgeInsets.all(
                    8.0), // Añadí un poco de padding para el texto
                child: Text('What about me, Can I have one as well? '),
              ),
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
      ),
    );
  }
}
