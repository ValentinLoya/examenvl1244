import 'package:flutter/material.dart';

class PantallaNueve extends StatefulWidget {
  const PantallaNueve({Key? key}) : super(key: key);

  @override
  _PantallaNueveState createState() => _PantallaNueveState();
}

class _PantallaNueveState extends State<PantallaNueve> {
  bool switchValue = false;
  String switchState = 'OFF';
  int _radioValue = 1;
  bool checkboxValue = false;
  String checkboxState = 'NOT SELECTED';
  bool checkboxSelectAll = false;
  bool checkboxSelectAll1 = false;
  bool checkboxSelectAll2 = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.deepPurple[100],
      appBar: AppBar(title: const Text('S W I T C H E S')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            switchMethod(),
            checkboxMethod(),
            radioMethod(),
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

//*----------------------- Switch ---------------------*//
  Container switchMethod() {
    return Container(
      height: 55,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: ListTile(
        leading: Switch(
          value: switchValue,
          onChanged: (newValue) {
            setState(() {
              switchValue = newValue;
              switchState = newValue ? 'ON' : 'OFF';
            });
          },
        ),
        title: Text(
          'Switch is: $switchState',
          style: const TextStyle(fontSize: 18),
        ),
      ),
    );
  }

  //?-------------------- Checkbox --------------------------
  Container checkboxMethod() {
    return Container(
      height: 250,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Checkbox(
              value: checkboxValue,
              onChanged: (value) {
                setState(() {
                  checkboxValue = value!;
                  checkboxState = value ? 'SELECTED' : 'NOT SELECTED';
                });
              },
            ),
            title: Text('Status:  $checkboxState'),
          ),
          const Divider(height: 2),

          // Select all
          ListTile(
            leading: Checkbox(
              value: checkboxSelectAll,
              onChanged: (value) {
                setState(() {
                  checkboxSelectAll = value!;
                  checkboxSelectAll1 = value;
                  checkboxSelectAll2 = value;
                });
              },
            ),
            title: const Text(
              'Select all',
              style: TextStyle(fontWeight: FontWeight.bold),
            ),
          ),
          ListTile(
            leading: Checkbox(
              value: checkboxSelectAll1,
              onChanged: (value) {
                setState(() {
                  checkboxSelectAll1 = value!;
                  if (!value) checkboxSelectAll = false;
                  if (checkboxSelectAll1 && checkboxSelectAll2)
                    checkboxSelectAll = true;
                });
              },
            ),
            title: const Text('Checkbox 1'),
          ),
          ListTile(
            leading: Checkbox(
              value: checkboxSelectAll2,
              onChanged: (value) {
                setState(() {
                  checkboxSelectAll2 = value!;
                  if (!value) checkboxSelectAll = false;
                  if (checkboxSelectAll1 && checkboxSelectAll2)
                    checkboxSelectAll = true;
                });
              },
            ),
            title: const Text('Checkbox 2'),
          )
        ],
      ),
    );
  }

  //!----------------------- Radio ---------------------!//
  Container radioMethod() {
    return Container(
      height: 180,
      width: 350,
      decoration: BoxDecoration(
        color: Colors.white54,
        borderRadius: BorderRadius.circular(8.0),
      ),
      child: Column(
        children: [
          ListTile(
            leading: Radio(
              value: 1,
              groupValue: _radioValue,
              onChanged: (_) {
                setState(() {
                  _radioValue = 1;
                  print('Radio $_radioValue selected');
                });
              },
            ),
            title: const Text(
              'Radio 1',
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            leading: Radio(
              value: 2,
              groupValue: _radioValue,
              onChanged: (_) {
                setState(() {
                  _radioValue = 2;
                  print('Radio $_radioValue selected');
                });
              },
            ),
            title: const Text(
              'Radio 2',
              style: TextStyle(fontSize: 18),
            ),
          ),
          ListTile(
            leading: Radio(
              value: 3,
              groupValue: _radioValue,
              onChanged: (_) {
                setState(() {
                  _radioValue = 3;
                  print('Radio $_radioValue selected');
                });
              },
            ),
            title: const Text(
              'Radio 3',
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
