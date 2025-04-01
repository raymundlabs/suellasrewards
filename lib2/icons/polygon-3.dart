import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 188;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // polygon3m3P (4:26180)
        width: double.infinity,
        height: 188*fem,
        child: Image.asset(
          'assets/icons/images/polygon-3.png',
          width: 188*fem,
          height: 188*fem,
        ),
      ),
          );
  }
}