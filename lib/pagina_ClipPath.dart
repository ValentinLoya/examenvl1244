import 'package:flutter/material.dart';

class PantallaTres extends StatelessWidget {
  const PantallaTres({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text('Clip Path')),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ClipPath(
              clipper: CustomClipPath(),
              child: Container(
                color: Colors.red,
                height: 200, // Ajusté la altura para que sea más visible
                width: 300, // Ajusté el ancho
                child: const Center(
                  child: Text(
                    'Clip Path',
                    style: TextStyle(color: Colors.white, fontSize: 30), // Ajusté el tamaño del texto
                  ),
                ),
              ),
            ),
            const SizedBox(height: 20),
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

class CustomClipPath extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;

    final path = Path();

    path.lineTo(0, h);
    path.quadraticBezierTo(
      w * 0.5,
      h - 50, // Ajusté este valor para una curva más suave
      w,
      h,
    );
    path.lineTo(w, 0);
    path.close();

    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) {
    return false;
  }
}