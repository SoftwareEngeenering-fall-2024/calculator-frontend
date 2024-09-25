import 'dart:math';

import 'package:flutter/material.dart';

class CalcButton extends StatelessWidget {
  const CalcButton({
    super.key,
    required this.text,
    required this.onTap,
    this.backgroundColor,
    this.foregroundColor,
    this.fontSizeFactor,
    this.fontWeight,
  });

  final String text;
  final void Function()? onTap;
  final Color? backgroundColor;
  final Color? foregroundColor;
  final double? fontSizeFactor;
  final FontWeight? fontWeight;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(4.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          return ElevatedButton(
            onPressed: onTap,
            style: ElevatedButton.styleFrom(
              foregroundColor: foregroundColor,
              backgroundColor: backgroundColor,
            ),
            child: SizedBox(
              width: double.infinity,
              height: double.infinity,
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    fontSize: fontSizeFactor != null
                        ? min(constraints.maxWidth, constraints.maxHeight) *
                            fontSizeFactor!
                        : min(constraints.maxWidth, constraints.maxHeight) / 2,
                    fontWeight: fontWeight,
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
