import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

import 'package:suellas/screens/auth.dart'; // Import the AuthScreen
import 'package:suellas/customer/home.dart'; // Import the customer home screen

void main() {
  runApp(const MaterialApp(
      home: CustomerHomeScreen(),
  ));
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: CustomerHomeScreen(),
    );
  }
}
