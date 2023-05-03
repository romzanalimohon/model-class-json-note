import 'package:flutter/material.dart';
import 'package:json_model_classes/home_screen.dart';
import 'package:json_model_classes/sliding_button.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      //home: HomeScreen(),
      home:SlidingButton()
    );
  }
}
