import 'package:flutter/material.dart';

class FlutterNeumorphismButton extends StatefulWidget {
  const FlutterNeumorphismButton({super.key});

  @override
  State<FlutterNeumorphismButton> createState() =>
      _FlutterNeumorphismButtonState();
}

class _FlutterNeumorphismButtonState extends State<FlutterNeumorphismButton> {
  bool isPressed = true;
  @override
  Widget build(BuildContext context) {
    final backgroundColor = const Color(0xFFE7ECEF);
    Offset distance = isPressed ? Offset(10, 10) : Offset(28, 28);
    double blur = isPressed ? 5.0 : 30.0;

    return Scaffold(
      backgroundColor: backgroundColor,
      body: Center(
        child: Listener(
          onPointerUp: (event) => setState(() {
            isPressed = false;
          }),
          onPointerDown: (event) => setState(() {
            isPressed = true;
          }),
          child: AnimatedContainer(
            duration: Duration(milliseconds: 200),
            decoration: BoxDecoration(
                color: backgroundColor,
                borderRadius: BorderRadius.circular(30),
                boxShadow: [
                  BoxShadow(
                    blurRadius: blur,
                    offset: -distance,
                    color: Colors.white,
                  ),
                  BoxShadow(
                    blurRadius: blur,
                    offset: distance,
                    color: Colors.grey,
                  )
                ]),
            child: SizedBox(
              height: 200,
              width: 200,
            ),
          ),
        ),
      ),
    );
  }
}
