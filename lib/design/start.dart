import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
// import 'package:suellas/design/blank.dart';
import 'package:suellas/design/login.dart';
import 'package:suellas/design/register.dart';

class StartScreen extends StatelessWidget {
  const StartScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final String qrData = "ABC123";
    
    return Scaffold(
      // appBar: CustomAppBar(fem: fem, ffem: ffem),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
               

            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 100 * fem, 12.79 * fem, 51 * fem),
              width: 204 * fem,
              height: 80 * fem,
              child: Image.asset(
                'assets/design/images/suellas-logo-black-1.png',
                fit: BoxFit.cover,
              ),
            ),

            Container(
              margin: EdgeInsets.fromLTRB(7.65 * fem, 0 * fem, 0 * fem, 34 * fem),
              width: 298.45 * fem,
              height: 257 * fem,
              child: Image.asset(
                'assets/design/images/drawkit-vector-illustration-ecommerce-08-1.png',
                width: 298.45 * fem,
                height: 257 * fem,
              ),
            ),

                    Container(
                      margin: EdgeInsets.fromLTRB(26.07 * fem, 0 * fem, 27.86 * fem, 21 * fem),
                      width: double.infinity,
                      height: 96 * fem,
                      child: Center( // Center the content vertically and horizontally
                        child: SizedBox(
                     
                          height: 96 * fem, // Set the height to match the Container's height
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'We handle each',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.365 * ffem / fem,
                                  letterSpacing: -1.08 * fem,
                                  color: Color(0xff57cc99),
                                ),
                              ),
                              Text(
                                'pair with care',
                                style: TextStyle(
                                  fontFamily: 'Manrope',
                                  fontSize: 20 * ffem,
                                  fontWeight: FontWeight.w800,
                                  height: 1.365 * ffem / fem,
                                  letterSpacing: -1.08 * fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                      

            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 18.79 * fem, 50 * fem),
              child: Text(
                'Providing quality shoe care service',
                textAlign: TextAlign.center,
                style: TextStyle(
                  fontFamily: 'Inter',
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w400,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),

            
                GestureDetector(
                  onTap: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => RegisterScreen()), // Navigate to LoginScreen
                    );
                  },
                  child: Container(
                    margin: EdgeInsets.fromLTRB(36.07 * fem, 0 * fem, 45.86 * fem, 36 * fem),
                    width: double.infinity,
                    height: 60 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff57cc99),
                      borderRadius: BorderRadius.circular(30 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Get Started',
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          fontFamily: 'Inter',
                          fontSize: 22 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.2125 * ffem / fem,
                          letterSpacing: 1.1 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                ),

            Container(
              margin: EdgeInsets.fromLTRB(10.07 * fem, 0 * fem, 22.86 * fem, 0 * fem),
              width: double.infinity,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center, // Center the content vertically
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 9 * fem, 0 * fem),
                    child: Text(
                      'Already have an account?',
                      textAlign: TextAlign.center,
                      style: TextStyle(
                        fontFamily: 'Inter',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff333333),
                      ),
                    ),
                  ),
                  GestureDetector(
                    onTap: () {
                      Navigator.push(
                        context,
                        MaterialPageRoute(builder: (context) => AuthScreen()), // Navigate to LoginPage
                      );
                    },
                    child: Text(
                      'Log In',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 18 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff57cc99),
                      ),
                    ),
                  ),
                ],
              ),
            ),


            ],
          ),
        ),
      ),



    );
  }

  }
  


  