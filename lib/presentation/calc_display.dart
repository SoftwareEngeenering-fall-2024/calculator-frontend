import 'package:auto_size_text/auto_size_text.dart';
import 'package:flutter/material.dart';

class CalcDisplay extends StatefulWidget {
  const CalcDisplay({super.key, required this.text});

  final String text;

  @override
  State<CalcDisplay> createState() => _CalcDisplayState();
}

class _CalcDisplayState extends State<CalcDisplay> {
  final ScrollController _controller = ScrollController();

  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: LayoutBuilder(
        builder: (context, constraints) {
          int maxSymb =
              (constraints.maxHeight ~/ 20) * (constraints.maxWidth ~/ 11);
          if (widget.text.length > maxSymb) {
            WidgetsBinding.instance.addPostFrameCallback((_) =>
                _controller.jumpTo(_controller.position.maxScrollExtent));
            return Align(
              alignment: Alignment.bottomRight,
              child: SingleChildScrollView(
                controller: _controller,
                child: Text(
                  widget.text,
                  textAlign: TextAlign.right,
                  style: const TextStyle(
                      fontSize: 16, fontWeight: FontWeight.w300,),
                ),
              ),
            );
          } else {
            return Align(
              alignment: Alignment.bottomRight,
              child: ConstrainedBox(
                constraints: BoxConstraints(
                  maxHeight: widget.text.length > 40 ? constraints.maxHeight : constraints.maxHeight * 0.67,
                ),
                child: AutoSizeText(
                  widget.text,
                  textAlign: TextAlign.right,
                  style: TextStyle(
                      fontSize: constraints.maxHeight / 3,
                      fontWeight: FontWeight.w300),
                  minFontSize: 16,
                ),
              ),
            );
          }
        },
      ),
    );
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }
}
