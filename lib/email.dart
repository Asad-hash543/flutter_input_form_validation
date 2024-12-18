import 'package:flutter/material.dart';
import 'package:flutter_input_form_validation/custom_text_form_field.dart';
import 'package:flutter_input_form_validation/string_validation.dart';

class Email extends StatelessWidget {
  const Email({super.key, required this.controller, required this.focusNode});

  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.width;
    return Expanded(
      child: CustomTextFormField(
        // autoFacus: true,
        labelText: 'Email',
        labelStyle: TextStyle(
          fontSize: width * 0.012,
        ),
        controller: controller,
        focusNode:focusNode,
        suffixIcon: const Icon(Icons.email_outlined),
        keyBoardInputType: TextInputType.emailAddress,
        validator: (value) {
          if (value.isEmptyTextField(value)) {
            return 'Please Enter Email ';
          }
          if (!(value.isValidEmail()) ) {
            controller.clear();
            return 'Please Enter Valid Email';
          }
          return null;
        },
      ),
    );
  }
}
