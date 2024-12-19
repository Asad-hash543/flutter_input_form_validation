import 'package:flutter/material.dart';
import 'package:flutter_input_form_validation/horizontal_layout.dart';
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
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 218, 11, 152),
      body: OrientationBuilder(builder: (context, orientation) {
        return orientation == Orientation.portrait
            ? VerticalLayout()
            : HorizontalLayout();
      }),
    );
  }
}
