import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
// import 'package:suellas/customer/main_screen.dart';
// import 'dart:convert';

import 'package:suellas/screens/auth.dart'; // Import the AuthScreen
// import 'package:suellas/customer/home.dart'; // Import the customer home screen
import 'package:suellas/design/start.dart';


void main() {
  runApp(const MaterialApp(
    home: MyApp(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: StartScreen(),
    );
  }
}
