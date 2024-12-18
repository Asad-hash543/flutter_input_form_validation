import 'package:flutter/material.dart';

class CustomTextField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final void Function(String)? onChanged;
  final void Function(String)? onSubmitted;
  final bool autoFacus;
  final TextStyle? labelStyle;
  const CustomTextField(
      {super.key,
      this.controller,
      this.focusNode,
      this.suffixIcon,
      this.labelText,
      this.onChanged,
      this.onSubmitted,
      this.labelStyle,
      this.autoFacus = false});

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    return Expanded(
      child: SizedBox(
        width: width * 0.01,
        // height: height * 0.09,
        child: TextField(
          autofocus: autoFacus,
          controller: controller,
          focusNode: focusNode,
          onChanged: onChanged,
          onSubmitted: onSubmitted,
          decoration: InputDecoration(
            labelText: labelText,
            labelStyle: labelStyle,
            suffix: suffixIcon,
            focusColor: Colors.grey,
            border: const OutlineInputBorder(
                // borderRadius: BorderRadius.circular(width * 0.02),
                ),
          ),
        ),
      ),
    );
  }
}
