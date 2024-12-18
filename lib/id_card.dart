import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_input_form_validation/custom_text_form_field.dart';
import 'package:flutter_input_form_validation/string_validation.dart';

class IdCard extends StatelessWidget {
  const IdCard({super.key, required this.controller, required this.focusNode});

  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.width;
    return Expanded(
      child: Focus(
        onKeyEvent: (node, event) {
          if (!(event.logicalKey.keyId >= 48 && event.logicalKey.keyId <= 57 ||
              event.logicalKey.keyId == 45 ||
              event.logicalKey.keyId == LogicalKeyboardKey.backspace.keyId)) {
            return KeyEventResult.handled;
          } else {
            return KeyEventResult.ignored;
          }
        },
        child: CustomTextFormField(
          // autoFacus: true,
          labelText: 'Id card',
          labelStyle: TextStyle(
            fontSize: width * 0.012,
          ),
          controller: controller,
          focusNode: focusNode,
          suffixIcon: const Icon(Icons.person),
          keyBoardInputType: TextInputType.number,
          validator: (value) {
            if (value.isEmptyTextField(value)) {
            return 'Please Enter CNIC ';
          }
            if (!(value.isValidIdCard())) {
              controller.clear();
              return 'e.g 32103- must be 13 char';
            }
            return null;
          },
        ),
      ),
    );
  }
}
