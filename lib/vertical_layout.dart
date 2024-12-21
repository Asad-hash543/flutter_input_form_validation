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
  const VerticalLayout(
      {super.key,
      required this.firstNameController,
      required this.lastNameController,
      required this.phoneController,
      required this.cardDetailsController,
      required this.dateController,
      required this.delievryController,
      required this.emailController,
      required this.idCardController,
      required this.locationController,
      required this.passwordController,
      required this.paymentMethodController,
      required this.shirtSizeController});

  final TextEditingController firstNameController;
  final TextEditingController lastNameController;
  final TextEditingController phoneController;
  final TextEditingController locationController;
  final TextEditingController shirtSizeController;
  final TextEditingController cardDetailsController;
  final TextEditingController delievryController;
  final TextEditingController paymentMethodController;
  final TextEditingController emailController;
  final TextEditingController passwordController;
  final TextEditingController dateController;
  final TextEditingController idCardController;

  @override
  State<VerticalLayout> createState() => _VerticalLayoutState();
}

class _VerticalLayoutState extends State<VerticalLayout> {

  final GlobalKey<FormState> _key = GlobalKey<FormState>();

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

  void _isClear(
      TextEditingController firstNameController,
      TextEditingController lastNameController,
      TextEditingController phoneController,
      TextEditingController locationController,
      TextEditingController shirtSizeController,
      TextEditingController cardDetailsController,
      TextEditingController delievryController,
      TextEditingController paymentMethodController,
      TextEditingController emailController,
      TextEditingController passwordController,
      TextEditingController dateController,
      TextEditingController idCardController) {
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
  Widget build(BuildContext context) {
    final double width = MediaQuery.of(context).size.width;
    return Column(
      children: [
        Expanded(
          child: Center(
            child: Padding(
              padding: EdgeInsets.all(width * 0.01),
              child: Container(
                width: width * 0.36,
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
                                  controller: widget.firstNameController,
                                  focusNode: _firstNameFocusNode,
                                ),
                              ),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.007),
                                    child: LastName(
                                      controller: widget.lastNameController,
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
                                    controller: widget.phoneController,
                                    focusNode: _phoneFocusNode,
                                  )),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.007),
                                    child: Location(
                                      controller: widget.locationController,
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
                                    controller: widget.shirtSizeController,
                                    focusNode: _shirtSizeFocusNode,
                                  )),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.007),
                                    child: CardDetails(
                                      controller:
                                          widget.cardDetailsController,
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
                                    controller: widget.delievryController,
                                    focusNode: _delievryFocusNode,
                                  )),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.007),
                                    child: Payment(
                                      controller:
                                          widget.paymentMethodController,
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
                                    controller: widget.emailController,
                                    focusNode: _emailFocusNode,
                                  )),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.007),
                                    child: Password(
                                      controller: widget.passwordController,
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
                                    controller: widget.dateController,
                                    focusNode: _dateFocusNode,
                                  )),
                              Expanded(
                                flex: 1,
                                child: Padding(
                                    padding:
                                        EdgeInsets.only(left: width * 0.007),
                                    child: IdCard(
                                      controller: widget.idCardController,
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
                                    color: const Color.fromARGB(
                                        255, 37, 185, 14),
                                    focusNode: _submitButtonFocusNode,
                                    onPressed: () {
                                      _key.currentState?.validate();
                                    },
                                    text: 'Submit'),
                              ),
                              Expanded(
                                flex: 1,
                                child: CustomElevatedButton(
                                    color: const Color.fromARGB(
                                        255, 207, 16, 16),
                                    focusNode: _clearButtonFocusNode,
                                    onPressed: () => _isClear(
                                        widget.firstNameController,
                                        widget.lastNameController,
                                        widget.phoneController,
                                        widget.locationController,
                                        widget.shirtSizeController,
                                        widget.cardDetailsController,
                                        widget.delievryController,
                                        widget.paymentMethodController,
                                        widget.emailController,
                                        widget.passwordController,
                                        widget.dateController,
                                        widget.idCardController),
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
