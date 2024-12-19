import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_input_form_validation/custom_text_form_field.dart';
import 'package:flutter_input_form_validation/string_validation.dart';

class Date extends StatelessWidget {
  const Date({super.key, required this.controller, required this.focusNode});

  final FocusNode focusNode;
  final TextEditingController controller;

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    // final double height = MediaQuery.of(context).size.width;
    return Focus(
      onKeyEvent: (node, event) {
        if (!(event.logicalKey.keyId >= 48 &&
                event.logicalKey.keyId <= LogicalKeyboardKey.digit9.keyId ||
            event.logicalKey.keyId == 47 ||
            event.logicalKey.keyId == LogicalKeyboardKey.backspace.keyId)) {
          return KeyEventResult.handled;
        } else {
          return KeyEventResult.ignored;
        }
      },
      child: Row(
        children: [
          Expanded(
            child: CustomTextFormField(
              // autoFacus: true,
              labelText: 'Date',
              labelStyle: TextStyle(
                fontSize: width * 0.012,
              ),
              controller: controller,
              focusNode: focusNode,
              suffixIcon: const Icon(Icons.date_range_outlined),
              keyBoardInputType: TextInputType.datetime,
          
              validator: (value) {
                if (value.isEmptyTextField(value)) {
                return 'Please Enter Date ';
              }
                if (!(value.isValidDate(value))) {
                  controller.clear();
                  return ' DD-MM-YYYY';
                }
                return null;
              },
            ),
          ),
        ],
      ),
    );
  }
}
