import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // forgotpasswordZ6Z (172:772)
        padding: EdgeInsets.fromLTRB(500*fem, 0*fem, 500*fem, 0*fem),
        width: double.infinity,
        height: 896*fem,
        child: Container(
          // forgotpasswordFVB (151:545)
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // barsstatusbariphonelightxeV (151:546)
                left: 56.9299316406*fem,
                top: 39.7731933594*fem,
                child: Container(
                  width: 316.93*fem,
                  height: 20*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // timeSZf (I151:546;104:534)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 223.45*fem, 0*fem),
                        child: Text(
                          '9:41',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w400,
                            height: 1.3333333333*ffem/fem,
                            letterSpacing: -0.2399999946*fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // cellularconnection8SV (I151:546;104:528)
                        margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                        width: 16.44*fem,
                        height: 10.32*fem,
                        child: Image.asset(
                          'assets/design/images/cellular-connection-o85.png',
                          width: 16.44*fem,
                          height: 10.32*fem,
                        ),
                      ),
                      Container(
                        // wifipq7 (I151:546;104:524)
                        margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                        width: 14.83*fem,
                        height: 10.64*fem,
                        child: Image.asset(
                          'assets/design/images/wifi-uS1.png',
                          width: 14.83*fem,
                          height: 10.64*fem,
                        ),
                      ),
                      Container(
                        // batterywPw (I151:546;104:520)
                        margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                        width: 23.53*fem,
                        height: 10.97*fem,
                        child: Image.asset(
                          'assets/design/images/battery-6Q1.png',
                          width: 23.53*fem,
                          height: 10.97*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // forgotpasswordFfX (151:608)
                left: 117*fem,
                top: 209*fem,
                child: Align(
                  child: SizedBox(
                    width: 174*fem,
                    height: 20*fem,
                    child: Text(
                      'Forgot Password?',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1*ffem/fem,
                        color: Color(0xff57cc99),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // line26wYM (151:560)
                left: 36*fem,
                top: 399*fem,
                child: Align(
                  child: SizedBox(
                    width: 345*fem,
                    height: 1*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        color: Color(0xa5000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // emailSzu (151:561)
                left: 38*fem,
                top: 374*fem,
                child: Align(
                  child: SizedBox(
                    width: 36*fem,
                    height: 20*fem,
                    child: Text(
                      'Email',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 14*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.4285714286*ffem/fem,
                        color: Color(0xa5000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // dontworryenteryourregisteredem (152:609)
                left: 55.5*fem,
                top: 266*fem,
                child: Align(
                  child: SizedBox(
                    width: 286*fem,
                    height: 40*fem,
                    child: Text(
                      'Don’t worry! Enter your registered email below to receive password instructions',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3333333333*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // autogroupj6hdZy3 (TkqMjqfJ9FgwanGhu7j6hD)
                left: 103*fem,
                top: 416*fem,
                child: Container(
                  width: 209*fem,
                  height: 19*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // rememberpassword6CH (152:611)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                        child: Text(
                          'Remember Password?',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                      Text(
                        // loginPBP (152:612)
                        'Log In',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff57cc99),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // autogroupq36fijT (TkqMqfpv1Nkj7gSYXCq36f)
                left: 61*fem,
                top: 476*fem,
                child: Container(
                  width: 295*fem,
                  height: 50*fem,
                  decoration: BoxDecoration (
                    color: Color(0xff57cc99),
                    borderRadius: BorderRadius.circular(70*fem),
                  ),
                  child: Center(
                    child: Text(
                      'Reset Password',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 18*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.1111111111*ffem/fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                ),
              ),
              Positioned(
                // autogroupzb8bNZ7 (TkqMvAhRL9yb9yVANazb8B)
                left: 89*fem,
                top: 563*fem,
                child: Container(
                  width: 233*fem,
                  height: 19*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // donthaveanaccountgZo (152:615)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                        child: Text(
                          'Don’t have an account?',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff333333),
                          ),
                        ),
                      ),
                      Text(
                        // signupafB (152:616)
                        'Sign Up',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont (
                          'Inter',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w600,
                          height: 1.2125*ffem/fem,
                          color: Color(0xff57cc99),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // btnbackiWV (152:617)
                left: 30*fem,
                top: 152*fem,
                child: Align(
                  child: SizedBox(
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/design/images/btn-back-k7T.png',
                      width: 30*fem,
                      height: 30*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // suellaslogoblack1QeD (2:16588)
                left: 143*fem,
                top: 80*fem,
                child: Align(
                  child: SizedBox(
                    width: 128*fem,
                    height: 50*fem,
                    child: Image.asset(
                      'assets/design/images/suellas-logo-black-1-QMw.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}