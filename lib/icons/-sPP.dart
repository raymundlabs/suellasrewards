import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // FRB (4:25003)
        padding: EdgeInsets.fromLTRB(96*fem, 31*fem, 96*fem, 33*fem),
        width: double.infinity,
        height: 110*fem,
        decoration: BoxDecoration (
          border: Border.all(color: Color(0xff000000)),
          color: Color(0xfff776d2),
        ),
        child: Text(
          'SHARP',
          style: SafeGoogleFont (
            'Plus Jakarta Display',
            fontSize: 36*ffem,
            fontWeight: FontWeight.w500,
            height: 1.2575*ffem/fem,
            color: Color(0xff000000),
          ),
        ),
      ),
          );
  }
}