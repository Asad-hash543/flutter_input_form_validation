import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_input_form_validation/custom_text_form_field.dart';
import 'package:flutter_input_form_validation/string_validation.dart';

class LastName extends StatelessWidget {
  const LastName({super.key, required this.controller, required this.focusNode});

  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.width;
    return Row(
      children: [
        Expanded(
          child: Focus(
            onKeyEvent: (node, event) {
              if (!(event.logicalKey.keyId >= 97 && event.logicalKey.keyId <= 122 ||
                  event.logicalKey.keyId >= 65 && event.logicalKey.keyId <= 90 ||
                  event.logicalKey.keyId == LogicalKeyboardKey.backspace.keyId||
                  event.logicalKey.keyId == LogicalKeyboardKey.space.keyId)) {
                return KeyEventResult.handled;
              } else {
                return KeyEventResult.ignored;
              }
            },
            child: CustomTextFormField(
              // autoFacus: true,
              labelText: 'Last Name',
              labelStyle: TextStyle(
                fontSize: width * 0.012,
              ),
              controller: controller,
              focusNode: focusNode,
              suffixIcon: const Icon(Icons.person),
              keyBoardInputType: TextInputType.name,
              validator: (value) {
                if ((value.isEmptyTextField(value))) {
                  // controller.clear();
                  return 'Enter your Last Name';
                }
                return null;
              },
            ),
          ),
        ),
      ],
    );
  }
}
