import 'package:flutter/material.dart';
import 'package:flutter_input_form_validation/card_details.dart';
import 'package:flutter_input_form_validation/date.dart';
import 'package:flutter_input_form_validation/delievry.dart';
import 'package:flutter_input_form_validation/elevated_button.dart';
import 'package:flutter_input_form_validation/email.dart';
import 'package:flutter_input_form_validation/first_name.dart';
import 'package:flutter_input_form_validation/id_card.dart';
import 'package:flutter_input_form_validation/last_name.dart';
import 'package:flutter_input_form_validation/location.dart';
import 'package:flutter_input_form_validation/password.dart';
import 'package:flutter_input_form_validation/payment.dart';
import 'package:flutter_input_form_validation/phone_number.dart';
import 'package:flutter_input_form_validation/shirt_size.dart';
import 'package:flutter_input_form_validation/text.dart';

class VerticalLayout extends StatefulWidget {

  const VerticalLayout({super.key});

  @override
  State<VerticalLayout> createState() => _VerticalLayoutState();
}

class _VerticalLayoutState extends State<VerticalLayout> {
   final GlobalKey<FormState> _key = GlobalKey<FormState>();

  final TextEditingController firstNameController = TextEditingController();

  final TextEditingController lastNameController = TextEditingController();

  final TextEditingController phoneController = TextEditingController();

  final TextEditingController locationController = TextEditingController();

  final TextEditingController shirtSizeController = TextEditingController();

  final TextEditingController cardDetailsController = TextEditingController();

  final TextEditingController delievryController = TextEditingController();

  final TextEditingController paymentMethodController = TextEditingController();

  final TextEditingController emailController = TextEditingController();

  final TextEditingController passwordController = TextEditingController();

  final TextEditingController dateController = TextEditingController();

  final TextEditingController idCardController = TextEditingController();

  final FocusNode _firstNameFocusNode = FocusNode();

  final FocusNode _lastNameFocusNode = FocusNode();

  final FocusNode _phoneFocusNode = FocusNode();

  final FocusNode _locationFocusNode = FocusNode();

  final FocusNode _shirtSizeFocusNode = FocusNode();

  final FocusNode _cardDetailsFocusNode = FocusNode();

  final FocusNode _delievryFocusNode = FocusNode();

  final FocusNode _paymentmethodFocusNode = FocusNode();

  final FocusNode _emailFocusNode = FocusNode();

  final FocusNode _passwordFocusNode = FocusNode();

  final FocusNode _dateFocusNode = FocusNode();

  final FocusNode _idCardFocusNode = FocusNode();

  final FocusNode _submitButtonFocusNode = FocusNode();

  final FocusNode _clearButtonFocusNode = FocusNode();

  void _isClear() {
    firstNameController.clear();
    lastNameController.clear();
    phoneController.clear();
    locationController.clear();
    shirtSizeController.clear();
    cardDetailsController.clear();
    delievryController.clear();
    paymentMethodController.clear();
    emailController.clear();
    passwordController.clear();
    dateController.clear();
    idCardController.clear();
  }

  @override
  void dispose() {
    firstNameController.dispose();
    lastNameController.dispose();
    locationController.dispose();
    locationController.dispose();
    shirtSizeController.dispose();
    cardDetailsController.dispose();
    delievryController.dispose();
    paymentMethodController.dispose();
    emailController.dispose();
    passwordController.dispose();
    dateController.dispose();
    idCardController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Padding(
                padding: EdgeInsets.all(width * 0.01),
                child: Container(
                  width: width * 0.3,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(width * 0.01)),
                  child: Form(
                    key: _key,
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Expanded(
                          flex: 3,
                          child: Align(
                            alignment: Alignment.center,
                            child: HeadText(
                              text: 'Get Your Choice!',
                              fontSize: width * 0.015,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.006, right: width * 0.006),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: FirstName(
                                    controller: firstNameController,
                                    focusNode: _firstNameFocusNode,
                                  ),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: width * 0.007),
                                      child: LastName(
                                        controller: lastNameController,
                                        focusNode: _lastNameFocusNode,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.006, right: width * 0.006),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: PhoneNumber(
                                      controller: phoneController,
                                      focusNode: _phoneFocusNode,
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: width * 0.007),
                                      child: Location(
                                        controller: locationController,
                                        focusNode: _locationFocusNode,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.006, right: width * 0.006),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: ShirtSize(
                                      controller: shirtSizeController,
                                      focusNode: _shirtSizeFocusNode,
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: width * 0.007),
                                      child: CardDetails(
                                        controller: cardDetailsController,
                                        focusNode: _cardDetailsFocusNode,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.006, right: width * 0.006),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: DeliveryTime(
                                      controller: delievryController,
                                      focusNode: _delievryFocusNode,
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: width * 0.007),
                                      child: Payment(
                                        controller: paymentMethodController,
                                        focusNode: _paymentmethodFocusNode,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.006, right: width * 0.006),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Email(
                                      controller: emailController,
                                      focusNode: _emailFocusNode,
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: width * 0.007),
                                      child: Password(
                                        controller: passwordController,
                                        focusNode: _passwordFocusNode,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.006, right: width * 0.006),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                    flex: 1,
                                    child: Date(
                                      controller: dateController,
                                      focusNode: _dateFocusNode,
                                    )),
                                Expanded(
                                  flex: 1,
                                  child: Padding(
                                      padding: EdgeInsets.only(left: width * 0.007),
                                      child: IdCard(
                                        controller: idCardController,
                                        focusNode: _idCardFocusNode,
                                      )),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: Padding(
                            padding: EdgeInsets.only(
                                left: width * 0.006, right: width * 0.006),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: [
                                Expanded(
                                  flex: 1,
                                  child: CustomElevatedButton(
                                      color: const Color.fromARGB(255, 37, 185, 14),
                                      focusNode: _submitButtonFocusNode,
                                      onPressed: () {
                                        _key.currentState?.validate();
                                      },
                                      text: 'Submit'),
                                ),
                                Expanded(
                                  flex: 1,
                                  child: CustomElevatedButton(
                                      color: const Color.fromARGB(255, 207, 16, 16),
                                      focusNode: _clearButtonFocusNode,
                                      onPressed: _isClear,
                                      text: 'Clear'),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
          ),
        ),
      ],
    );
  }
}