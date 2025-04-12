import 'package:flutter/material.dart';

class ClipPathWidget extends StatefulWidget {
  const ClipPathWidget({super.key});

  @override
  State<ClipPathWidget> createState() => _ClipPathWidgetState();
}

class _ClipPathWidgetState extends State<ClipPathWidget> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clip Path'),centerTitle: true,elevation: 2,
      ),
      body: Center(
        child: ClipPath(
        clipper: CustomClipPath(),
          child: Container(
            color: Colors.red,
            height: 400,
            child: Center(child: Text('Clip Path', style: TextStyle(
              color: Colors.white, fontSize: 25
            ),)),
          ),
        ),
      ),
    );
  }
}

class CustomClipPath extends CustomClipper<Path>{
  @override
  Path getClip(Size size) {
    double w = size.width;
    double h = size.height;
    final path = Path();
    // (0,0 ) 1 point
    path.lineTo(0, h);  // (0,h) 2 point
    // path.lineTo(w, h); // (w,h) 4 point
    path.quadraticBezierTo(w*0.5, h-100, w, h);
    path.lineTo(w, 0);  // (w,0) 5 point
    path.close();


    return path;
  }

  @override
  bool shouldReclip(covariant CustomClipper<Path> oldClipper) {
    return false;
  }
  
}