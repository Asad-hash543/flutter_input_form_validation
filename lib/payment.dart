import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_input_form_validation/custom_text_form_field.dart';
import 'package:flutter_input_form_validation/string_validation.dart';

class Payment extends StatelessWidget {
  const Payment({super.key, required this.controller, required this.focusNode});

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
                      LogicalKeyboardKey.arrowRight.keyId||
                  event.logicalKey.keyId == 46)) {
                return KeyEventResult.handled;
              } else {
                return KeyEventResult.ignored;
              }
            },
            child: CustomTextFormField(
              // autoFacus: true,
              labelText: 'Payment',
              labelStyle: TextStyle(
                fontSize: width * 0.012,
              ),
              controller: controller,
              focusNode: focusNode,
              suffixIcon: const Icon(Icons.monetization_on_sharp),
              keyBoardInputType: TextInputType.number,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please Enter Amount ';
                }
                if ((!(value.isValidPaymentFormat()))) {
                  // controller.clear();
                  return '00.00';
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
