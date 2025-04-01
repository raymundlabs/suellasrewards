import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/gestures.dart';
import 'package:suellas/customer/rewards_screen.dart';
import 'dart:ui';


class Rewards extends StatelessWidget {
  const Rewards({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final String qrData = "ABC123";
    
    return Scaffold(
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // scanqrcustomer5Ym (4:30439)
            width: double.infinity,
            height: 896 * fem,
            child: Container(
              // rewardsRcd (4:30440)
              padding: EdgeInsets.fromLTRB(29 * fem, 39.77 * fem, 40.14 * fem, 27 * fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
         
           
                ],
              ),
            ),
          ),
        ),
      ),
    bottomNavigationBar: _buildBottomNavigationBar(fem,ffem),

    );
  }


  


Widget _buildBottomNavigationBar(double fem, double ffem) {
  return Container(
    width: 333 * fem,
    height: 50 * fem,
    padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
    margin: EdgeInsets.fromLTRB(44 * fem, 20.14 * fem, 44 * fem, 20.14  * fem),
    decoration: BoxDecoration(
       color: Color(0xFFF0F0F3),
      borderRadius: BorderRadius.circular(50),
      boxShadow: [
        BoxShadow(
          color: Color(0xFFFFFFFF),
          blurRadius: 20,
          offset: Offset(5, 5),
          spreadRadius: 0,
        ),
        BoxShadow(
          color: Color(0xFFFFFFFF),
          blurRadius: 20,
          offset: Offset(-5, -5),
          spreadRadius: 0,
        ),
      ],
    ),
    child: Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
   children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.0),
          child: Image.asset(
            'assets/icons/images/iconly-regular-outline-ticket-star.png',
            width: 18,
            height: 18,
          ),
        ),
 
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.0),
          child: Image.asset(
            'assets/icons/images/iconly-regular-outline-message-8Pb.png',
           width: 18,
            height: 18,
          ),
        ),

        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.0),
          child: Image.asset(
            'assets/icons/images/iconly-regular-outline-scan-q2q.png',
            width: 28,
            height: 28,
          ),
        ),
   
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.0),
          child: Image.asset(
            'assets/icons/images/iconly-regular-outline-location.png',
            width: 18,
            height: 18,
          ),
        ),
  
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 1.0),
          child: Image.asset(
            'assets/icons/images/iconly-regular-light-profile.png',
        width: 18,
            height: 18,
          ),
        ),
      ],
    ),
  );
}






}
