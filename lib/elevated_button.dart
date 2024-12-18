import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  const CustomElevatedButton(
      {super.key,
      this.focusNode,
      required this.onPressed,
      this.color,
      required this.text});
  final FocusNode? focusNode;
  final void Function()? onPressed;
  final Color? color;
  final String text;
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    final double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: Align(
        alignment: Alignment.center,
        child: ElevatedButton(
          focusNode: focusNode,
          style: ElevatedButton.styleFrom(
            backgroundColor: color,
            maximumSize: Size(width * 0.4, height * 0.1),
            minimumSize: Size(width * 0.05, height * 0.07),
          ),
          onPressed: onPressed,
          child: Text(
            text,
            style: TextStyle(fontSize: width * 0.012, color: Colors.white),
          ),
        ),
      ),
    );
  }
}
// const Color.fromARGB(255, 59, 224, 13),
