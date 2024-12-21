import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_input_form_validation/custom_text_form_field.dart';


class CardDetails extends StatelessWidget {
  const CardDetails(
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
            // autofocus: true,
            descendantsAreFocusable: true,
            canRequestFocus: true,
            onKeyEvent: (node, event) {
              if (!(event.logicalKey.keyId >= 97 &&
                      event.logicalKey.keyId <= 122 ||
                  event.logicalKey.keyId >= 65 &&
                      event.logicalKey.keyId <= 90 ||
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
              labelText: 'Card Details',
              labelStyle: TextStyle(
                fontSize: width * 0.012,
              ),
              controller: controller,
              focusNode: focusNode,
              suffixIcon: const Icon(Icons.atm_rounded),
              keyBoardInputType: TextInputType.text,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  // controller.clear();
                  return 'Please Enter Card Type';
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
