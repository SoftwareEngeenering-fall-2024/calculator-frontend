import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    required this.size,
    required this.text,
    this.factor = 1.0,
    required this.buttonColor,
    this.textColor = Colors.white,
  });

  final String text;
  final double size;
  final double factor;
  final Color buttonColor;
  final Color textColor;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: size,
      height: size * factor,
      child: ElevatedButton(
        onPressed: () {},
        style: ElevatedButton.styleFrom(
          shape: StadiumBorder(),
          backgroundColor: buttonColor,
        ),
        child: Text(
          text,
          style: TextStyle(fontSize: size * factor / 4, color: textColor),
        ),
      ),
    );
  }
}
