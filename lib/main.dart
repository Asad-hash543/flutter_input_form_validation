import 'package:flutter/material.dart';
// import 'package:flutter_input_form_validation/horizontal_layout.dart';
import 'package:flutter_input_form_validation/vertical_layout.dart';

void main() {
  runApp(const MyPurchaseForm());
}

class MyPurchaseForm extends StatelessWidget {
  const MyPurchaseForm({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Purchase Form',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.deepPurple),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});
  final String title;
  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  late TextEditingController firstNameController;
  late TextEditingController lastNameController;
  late TextEditingController phoneController;
  late TextEditingController locationController;
  late TextEditingController shirtSizeController;
  late TextEditingController cardDetailsController;
  late TextEditingController delievryController;
  late TextEditingController paymentMethodController;
  late TextEditingController emailController;
  late TextEditingController passwordController;
  late TextEditingController dateController;
  late TextEditingController idCardController;

  @override
  void initState() {
    firstNameController = TextEditingController();
    lastNameController = TextEditingController();
    phoneController = TextEditingController();
    locationController = TextEditingController();
    shirtSizeController = TextEditingController();
    cardDetailsController = TextEditingController();
    delievryController = TextEditingController();
    paymentMethodController = TextEditingController();
    emailController = TextEditingController();
    passwordController = TextEditingController();
    dateController = TextEditingController();
    idCardController = TextEditingController();
    super.initState();
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
    return Scaffold(
        backgroundColor: const Color.fromARGB(255, 218, 11, 152),
        body: VerticalLayout(
          firstNameController: firstNameController,
          lastNameController: lastNameController,
          phoneController: phoneController,
          locationController: locationController,
          shirtSizeController: shirtSizeController,
          cardDetailsController: cardDetailsController,
          delievryController: delievryController,
          paymentMethodController: paymentMethodController,
          emailController: emailController,
          passwordController: passwordController,
          dateController: dateController,
          idCardController: idCardController,
        )
        //  OrientationBuilder(
        //   builder: (context, orientation) {
        //     return orientation == Orientation.portrait
        //         ? VerticalLayout(
        //             firstNameController: firstNameController,
        //             lastNameController: lastNameController,
        //             phoneController: phoneController,
        //             locationController: locationController,
        //             shirtSizeController: shirtSizeController,
        //             cardDetailsController: cardDetailsController,
        //             delievryController: delievryController,
        //             paymentMethodController: paymentMethodController,
        //             emailController: emailController,
        //             passwordController: passwordController,
        //             dateController: dateController,
        //             idCardController: idCardController,
        //           )
        //         : HorizontalLayout(
        //             firstNameController: firstNameController,
        //             lastNameController: lastNameController,
        //             phoneController: phoneController,
        //             locationController: locationController,
        //             shirtSizeController: shirtSizeController,
        //             cardDetailsController: cardDetailsController,
        //             delievryController: delievryController,
        //             paymentMethodController: paymentMethodController,
        //             emailController: emailController,
        //             passwordController: passwordController,
        //             dateController: dateController,
        //             idCardController: idCardController,
        //           );
        //   },
        // ),
        );
  }
}
