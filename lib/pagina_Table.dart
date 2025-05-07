import 'package:flutter/material.dart';

class PantallaCinco extends StatelessWidget {
  const PantallaCinco({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('Table')),
      body: Column(
        children: [
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Table(
              border: TableBorder.all(),
              columnWidths: const {
                0: FlexColumnWidth(.35),
                3: FlexColumnWidth(0.50),
              },
              textDirection: TextDirection.ltr,
              children: const [
                TableRow(
                  children: [
                    Text(
                      'No.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Surname',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      'Age',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 18,
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ],
                ),
                TableRow(
                  children: [
                    Text('1.', textAlign: TextAlign.center),
                    Text('Md.', textAlign: TextAlign.center),
                    Text('Siam', textAlign: TextAlign.center),
                    Text('27', textAlign: TextAlign.center),
                  ],
                ),
                TableRow(
                  children: [
                    Text('2.', textAlign: TextAlign.center),
                    Text('Jasia', textAlign: TextAlign.center),
                    Text('Khatun', textAlign: TextAlign.center),
                    Text('20', textAlign: TextAlign.center),
                  ],
                ),
                TableRow(
                  children: [
                    Text('3.', textAlign: TextAlign.center),
                    Text('Mahmuda', textAlign: TextAlign.center),
                    Text('Khatun', textAlign: TextAlign.center),
                    Text('31', textAlign: TextAlign.center),
                  ],
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Padding(
            padding: const EdgeInsets.all(10.0),
            child: Table(
              children: [
                TableRow(
                  children: [
                    Container(
                        height: 50,
                        color: Colors
                            .blue), // Reduje la altura para mejor visualización
                    Container(height: 50, color: Colors.orange),
                    Container(height: 50, color: Colors.green),
                    Container(height: 50, color: Colors.red),
                    Container(height: 50, color: Colors.grey),
                    Container(height: 50, color: Colors.teal),
                    Container(height: 50, color: Colors.purple),
                  ],
                ),
                TableRow(
                  children: [
                    Container(height: 50, color: Colors.black),
                    Container(height: 50, color: Colors.cyan),
                    Container(height: 50, color: Colors.amber),
                    Container(height: 50, color: Colors.white),
                    Container(height: 50, color: Colors.pink),
                    Container(height: 50, color: Colors.indigo),
                    Container(height: 50, color: Colors.lime),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pop(context);
        },
        child: const Text('Regresar!'),
      ),
    );
  }
}
