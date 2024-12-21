import 'package:flutter/material.dart';
import 'package:flutter_input_form_validation/custom_text_form_field.dart';
import 'package:flutter_input_form_validation/string_validation.dart';

class Password extends StatelessWidget {
  const Password(
      {super.key, required this.controller, required this.focusNode});

  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
            child: CustomTextFormField(
              labelText: 'Password',
              labelStyle: TextStyle(
                fontSize: width * 0.012,
              ),
              controller: controller,
              focusNode: focusNode,
              suffixIcon: const Icon(Icons.password_rounded),
              keyBoardInputType: TextInputType.text,
              // obscureText: true,
              obscurrCharacter: '*',
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Password ';
                }
                if (!(value.isValidPassword())) {
                  // controller.clear();
                  return 'lowerCase,UperCase & digit';
                }
                return null;
              },
            ),
          ),
      
      ],
    );
  }
}
