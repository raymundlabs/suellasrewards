import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/location.dart';
import 'package:suellas/customer/inbox.dart';
import 'package:suellas/design/login.dart';

class Done extends StatelessWidget {
  const Done({Key? key}) : super(key: key);

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
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    29 * fem, 39.77 * fem, 40.14 * fem, 27 * fem),
                width: double.infinity,
                height: 800 * fem,
                decoration: BoxDecoration(
                  color: Color.fromARGB(255, 255, 255, 255),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // suellaslogoblack1oj7 (4:16599)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 4.86 * fem, 47 * fem),
                      width: 128 * fem,
                      height: 50 * fem,
                      child: Image.asset(
                        'assets/design/images/suellas-logo-black-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                   
                    Container(
                      // alldone6TK (153:591)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 242.86 * fem, 23 * fem),
                      child: Text(
                        'All Done',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 21 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125 * ffem / fem,
                          color: Color(0xff57cc99),
                        ),
                      ),
                    ),
                    Container(
                      // thanksforgivingusyourprecioust (153:584)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 4.86 * fem, 86.67 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 324 * fem,
                      ),
                      child: Text(
                        'Thanks for giving us your precious time. Now you are ready to earn points.\n',
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 15 * ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3333333333 * ffem / fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      // autogroupczum42m (TkpiHLEuUCxYtRXKjzczum)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 4.86 * fem, 119.67 * fem),
                      width: 166.67 * fem,
                      height: 166.67 * fem,
                      child: Image.asset(
                        'assets/design/images/iconly-regular-outline-tick-square.png',
                        width: 166.67 * fem,
                        height: 166.67 * fem,
                      ),
                    ),
                    GestureDetector(
                      onTap: () {
                        Navigator.of(context).pushReplacement(
                          MaterialPageRoute(
                            builder: (context) =>
                                AuthScreen(), // Replace with your LoginScreen widget
                          ),
                        );
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                            14 * fem, 0 * fem, 19.86 * fem, 0 * fem),
                        width: double.infinity,
                        height: 50 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff57cc99),
                          borderRadius: BorderRadius.circular(70 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Let’s go',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.1111111111 * ffem / fem,
                              color: Color(0xffffffff),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 20 * fem), // Add spacing between the containers
              // Container(
              //   padding: EdgeInsets.all(20 * fem),
              //   width: double.infinity,
              //   height: 500 * fem, // Use the same height as the green container
              //   color: Colors.blue, // Set the background color to blue
              //   child: Column(
              //     crossAxisAlignment: CrossAxisAlignment.center,
              //     children: [
              //       // ... (blue container's child widgets)
              //     ],
              //   ),
              // ),
            ],
          ),
        ),
      ),
    );
  }
}
