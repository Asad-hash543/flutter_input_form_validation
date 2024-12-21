import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  final TextEditingController? controller;
  final String? labelText;
  final Widget? suffixIcon;
  final FocusNode? focusNode;
  final String? Function(String?)? validator;
  final TextStyle? labelStyle;
  final bool obscureText;
  final String obscurrCharacter;
  final TextInputType? keyBoardInputType;
  final bool autoFacus;
  final void Function(String)? onChanged;
  const CustomTextFormField(
      {super.key,
      this.controller,
      this.focusNode,
      this.suffixIcon,
      this.autoFacus = false,
      this.labelText,
      this.validator,
      this.labelStyle,
      this.obscureText = false,
      this.keyBoardInputType,
      this.onChanged,
      this.obscurrCharacter = '.'});
  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.height;
    return Row(
      children: [
        Expanded(
          child: SizedBox(
            width: width * 0.08,
            // height: height * 0.09,
            child: TextFormField(
              onChanged: onChanged ,
              controller: controller,
              focusNode: focusNode,
              validator: validator,
              obscureText: obscureText,
              obscuringCharacter: obscurrCharacter,
              keyboardType: keyBoardInputType,
              decoration: InputDecoration(
                labelText: labelText,
                labelStyle: labelStyle,
                suffix: suffixIcon,
                border: const OutlineInputBorder(
                    // borderRadius: BorderRadius.circular(width * 0.02),
                    ),
              ),
            ),
          ),
        ),
      ],
    );
  }
}
