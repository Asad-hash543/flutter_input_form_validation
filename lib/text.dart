import 'package:flutter/material.dart';

class HeadText extends StatelessWidget {
  final String text;
  final Color? color;
  final double? fontSize;
  const HeadText({super.key, this.fontSize, required this.text, this.color});

  @override
  Widget build(BuildContext context) {
    // final double width = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          child: FittedBox(
            fit: BoxFit.scaleDown,
            child: Text(
              text,
              style: TextStyle(
                  fontSize: fontSize, color: color, fontWeight: FontWeight.w700),
            ),
          ),
        ),
      ],
    );
  }
}
