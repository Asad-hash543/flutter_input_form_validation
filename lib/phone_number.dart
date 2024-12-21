import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_input_form_validation/custom_text_form_field.dart';
import 'package:flutter_input_form_validation/string_validation.dart';

class PhoneNumber extends StatelessWidget {
  const PhoneNumber(
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
          child: Focus(
            onKeyEvent: (node, event) {
              if (!(event.logicalKey.keyId >= LogicalKeyboardKey.digit0.keyId &&
                      event.logicalKey.keyId <=
                          LogicalKeyboardKey.digit9.keyId ||
                  event.logicalKey.keyId ==
                      LogicalKeyboardKey.backspace.keyId ||
                  event.logicalKey.keyId == LogicalKeyboardKey.space.keyId ||
                  event.logicalKey.keyId ==
                      LogicalKeyboardKey.arrowLeft.keyId ||
                  event.logicalKey.keyId ==
                      LogicalKeyboardKey.arrowRight.keyId)) {
                return KeyEventResult.handled;
              } else {
                return KeyEventResult.ignored;
              }
            },
            child: CustomTextFormField(
              // autoFacus: true,
              labelText: 'Phone Number',
              labelStyle: TextStyle(
                fontSize: width * 0.012,
              ),
              controller: controller,
              focusNode: focusNode,
              suffixIcon: const Icon(Icons.phone_enabled),
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Phone Number ';
                }
                if (!(value.isPhoneNumber())) {
                  // controller.clear();
                  return "Invalid! Enter 11 digits";
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
