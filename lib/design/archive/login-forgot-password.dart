import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1323;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // loginforgotpasswordNxH (172:772)
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // signintfj (144:667)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
              width: 414*fem,
              height: 896*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  
                  Positioned(
                    // goodmorning51T (144:687)
                    left: 31*fem,
                    top: 88*fem,
                    child: Align(
                      child: SizedBox(
                        width: 114*fem,
                        height: 20*fem,
                        child: Text(
                          'Good Morning,',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff898a7a),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // welcomebackkdP (144:688)
                    left: 30*fem,
                    top: 116*fem,
                    child: Align(
                      child: SizedBox(
                        width: 163*fem,
                        height: 26*fem,
                        child: Text(
                          'Welcome back!',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 21*ffem,
                            fontWeight: FontWeight.w900,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff040b14),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // autogrouptyahFKF (SrCnoGTZmJ4cVo1DKFTyah)
                    left: 74*fem,
                    top: 486*fem,
                    child: Container(
                      width: 287*fem,
                      height: 21*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // line31Zaq (144:704)
                            margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 29*fem, 0*fem),
                            width: 102*fem,
                            height: 2*fem,
                            decoration: BoxDecoration (
                              color: Color(0x7c000000),
                            ),
                          ),
                          Container(
                            // orgfT (144:703)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 30*fem, 0*fem),
                            child: Text(
                              'OR',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 17*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125*ffem/fem,
                                color: Color(0x7c000000),
                              ),
                            ),
                          ),
                          Container(
                            // line32CNu (144:705)
                            margin: EdgeInsets.fromLTRB(0*fem, 7*fem, 0*fem, 0*fem),
                            width: 102*fem,
                            height: 2*fem,
                            decoration: BoxDecoration (
                              color: Color(0x7c000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogrouptrboKCd (SrCo4BCPZSBohhD7ZeTRBo)
                    left: 70*fem,
                    top: 602*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(23*fem, 16*fem, 75*fem, 13*fem),
                      width: 295*fem,
                      height: 50*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff000000)),
                        color: Color(0x7fffffff),
                        borderRadius: BorderRadius.circular(70*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // groupBEq (144:693)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.36*fem, 3*fem),
                            width: 17.64*fem,
                            height: 18*fem,
                            child: Image.asset(
                              'assets/design/images/group.png',
                              width: 17.64*fem,
                              height: 18*fem,
                            ),
                          ),
                          Container(
                            // loginwithgoogleVFX (144:699)
                            margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                            child: Text(
                              'Login with Google',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupd69xzCH (SrCnwRtdaGMWeFeBnaD69X)
                    left: 69*fem,
                    top: 532*fem,
                    child: Container(
                      padding: EdgeInsets.fromLTRB(21*fem, 12*fem, 63*fem, 13*fem),
                      width: 295*fem,
                      height: 50*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff4285f4),
                        borderRadius: BorderRadius.circular(70*fem),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // ellipse3U7T (144:700)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 25*fem, 0*fem),
                            width: 25*fem,
                            height: 25*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(12.5*fem),
                              image: DecorationImage (
                                fit: BoxFit.cover,
                                image: AssetImage (
                                  'assets/design/images/ellipse-3-bg.png',
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // loginwithfacebookNCq (144:698)
                            margin: EdgeInsets.fromLTRB(0*fem, 3*fem, 0*fem, 0*fem),
                            child: Text(
                              'Login with Facebook',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.2125*ffem/fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupgqjps9b (SrCnhBoN3o9nBeztvXgqjP)
                    left: 66*fem,
                    top: 374*fem,
                    child: Container(
                      width: 295*fem,
                      height: 50*fem,
                      decoration: BoxDecoration (
                        color: Color(0xff57cc99),
                        borderRadius: BorderRadius.circular(70*fem),
                      ),
                      child: Center(
                        child: Text(
                          'Login ',
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
                    // line26KXP (144:706)
                    left: 32*fem,
                    top: 208*fem,
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
                    // emaileJm (144:707)
                    left: 34*fem,
                    top: 183*fem,
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
                    // line26wHs (144:708)
                    left: 32*fem,
                    top: 277*fem,
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
                    // autogroupvzim47b (SrCnScPKPVVKMQaJNJvzim)
                    left: 32*fem,
                    top: 248*fem,
                    child: Container(
                      width: 340*fem,
                      height: 24*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // passwordNe5 (144:709)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 250*fem, 0*fem),
                            child: Text(
                              'Password',
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
                          Container(
                            // vuesaxlineareyeslashtsK (144:710)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/design/images/vuesax-linear-eye-slash-zRF.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupjiufc2d (SrCnZSXGf7wJ1G644vjiuf)
                    left: 35*fem,
                    top: 312*fem,
                    child: Container(
                      width: 339.5*fem,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle5739Jg9 (144:720)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                            width: 20*fem,
                            height: 20*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
                              border: Border.all(color: Color(0xe557cc99)),
                            ),
                          ),
                          Container(
                            // keepmeloggedin26M (144:721)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 63.5*fem, 0*fem),
                            child: Text(
                              'Keep me logged in',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // forgotpasswordjFf (148:528)
                            'Forgot Password?',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4285714286*ffem/fem,
                              color: Color(0xff57cc99),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupg9tvscm (SrCoAB2PzUUxRRGc2pg9tV)
                    left: 100*fem,
                    top: 696*fem,
                    child: Container(
                      width: 231*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // donthaveanaccountPb7 (148:531)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6*fem, 0*fem),
                            child: Text(
                              'Don’t have an account?',
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
                            // signup5Tw (148:532)
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
                ],
              ),
            ),
            Container(
              // forgotpasswordDq3 (151:545)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41*fem, 0*fem),
              width: 414*fem,
              height: 896*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // barsstatusbariphonelight8SD (151:546)
                    left: 56.9299316406*fem,
                    top: 39.7731933594*fem,
                    child: Container(
                      width: 316.93*fem,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // time2Xb (I151:546;104:534)
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
                            // cellularconnection96R (I151:546;104:528)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                            width: 16.44*fem,
                            height: 10.32*fem,
                            child: Image.asset(
                              'assets/design/images/cellular-connection-22m.png',
                              width: 16.44*fem,
                              height: 10.32*fem,
                            ),
                          ),
                          Container(
                            // wifi3Sh (I151:546;104:524)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                            width: 14.83*fem,
                            height: 10.64*fem,
                            child: Image.asset(
                              'assets/design/images/wifi-2kh.png',
                              width: 14.83*fem,
                              height: 10.64*fem,
                            ),
                          ),
                          Container(
                            // batteryAGR (I151:546;104:520)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                            width: 23.53*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/design/images/battery-Mpd.png',
                              width: 23.53*fem,
                              height: 10.97*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // forgotpasswordH69 (151:608)
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
                    // line26a5F (151:560)
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
                    // email63b (151:561)
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
                    // autogroupzk9xF4u (SrCp9UiFEBkcdTd5BAzk9X)
                    left: 103*fem,
                    top: 416*fem,
                    child: Container(
                      width: 209*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rememberpasswordMdj (152:611)
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
                            // loginsry (152:612)
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
                    // autogroupo3pxpnD (SrCpK96p9R7oTMGvGHo3PX)
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
                    // autogroupqo7o6jj (SrCpPUJvuH7JJpRtGaqo7o)
                    left: 89*fem,
                    top: 563*fem,
                    child: Container(
                      width: 233*fem,
                      height: 19*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // donthaveanaccount2dP (152:615)
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
                            // signupwVT (152:616)
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
                    // btnbackse1 (152:617)
                    left: 30*fem,
                    top: 152*fem,
                    child: Align(
                      child: SizedBox(
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/design/images/btn-back-nUH.png',
                          width: 30*fem,
                          height: 30*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // suellaslogoblack1xQZ (2:16588)
                    left: 143*fem,
                    top: 80*fem,
                    child: Align(
                      child: SizedBox(
                        width: 128*fem,
                        height: 50*fem,
                        child: Image.asset(
                          'assets/design/images/suellas-logo-black-1-A9o.png',
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // twofactorverification2fK (152:626)
              padding: EdgeInsets.fromLTRB(30*fem, 39.77*fem, 40.14*fem, 116*fem),
              width: 414*fem,
              height: 896*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // barsstatusbariphonelightuj7 (152:627)
                    margin: EdgeInsets.fromLTRB(26.93*fem, 0*fem, 0*fem, 20.23*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // time1XF (I152:627;104:534)
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
                          // cellularconnection7qB (I152:627;104:528)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                          width: 16.44*fem,
                          height: 10.32*fem,
                          child: Image.asset(
                            'assets/design/images/cellular-connection-n97.png',
                            width: 16.44*fem,
                            height: 10.32*fem,
                          ),
                        ),
                        Container(
                          // wifi2x9 (I152:627;104:524)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                          width: 14.83*fem,
                          height: 10.64*fem,
                          child: Image.asset(
                            'assets/design/images/wifi-bgD.png',
                            width: 14.83*fem,
                            height: 10.64*fem,
                          ),
                        ),
                        Container(
                          // batteryx57 (I152:627;104:520)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                          width: 23.53*fem,
                          height: 10.97*fem,
                          child: Image.asset(
                            'assets/design/images/battery-xqF.png',
                            width: 23.53*fem,
                            height: 10.97*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // suellaslogoblack14tq (2:16589)
                    margin: EdgeInsets.fromLTRB(10.14*fem, 0*fem, 0*fem, 22*fem),
                    width: 128*fem,
                    height: 50*fem,
                    child: Image.asset(
                      'assets/design/images/suellas-logo-black-1-iZF.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // btnbacknZw (152:640)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 313.86*fem, 22*fem),
                    width: 30*fem,
                    height: 30*fem,
                    child: Image.asset(
                      'assets/design/images/btn-back-nAV.png',
                      width: 30*fem,
                      height: 30*fem,
                    ),
                  ),
                  Container(
                    // emailsenthgu (2:2870)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.86*fem, 36*fem),
                    child: Text(
                      'Email Sent!',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 20*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff57cc99),
                      ),
                    ),
                  ),
                  Container(
                    // wevesentapasswordresetlinktosu (152:632)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 6.86*fem, 69.67*fem),
                    constraints: BoxConstraints (
                      maxWidth: 250*fem,
                    ),
                    child: RichText(
                      textAlign: TextAlign.center,
                      text: TextSpan(
                        style: SafeGoogleFont (
                          'Poppins',
                          fontSize: 15*ffem,
                          fontWeight: FontWeight.w400,
                          height: 1.3333333333*ffem/fem,
                          color: Color(0xff000000),
                        ),
                        children: [
                          TextSpan(
                            text: 'We’ve sent a password reset link to\n',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.3333333333*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          TextSpan(
                            text: 'sue***@gmail.com',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3333333333*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // iconlyregularoutlinemessage6W5 (4:31203)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.03*fem, 75.83*fem),
                    width: 179.17*fem,
                    height: 162.5*fem,
                    child: Image.asset(
                      'assets/design/images/iconly-regular-outline-message.png',
                      width: 179.17*fem,
                      height: 162.5*fem,
                    ),
                  ),
                  Container(
                    // autogroupjukfCp1 (SrCps3MKqAkFhUKNqgjuKF)
                    margin: EdgeInsets.fromLTRB(88*fem, 0*fem, 77.86*fem, 42*fem),
                    width: double.infinity,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // didntreceivewmb (153:575)
                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 16*fem, 0*fem),
                          child: Text(
                            'Didnt Receive?',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 15*ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2125*ffem/fem,
                              color: Color(0xb73c3c43),
                            ),
                          ),
                        ),
                        Text(
                          // resendfSh (153:576)
                          'Resend',
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
                  Container(
                    // autogroupcf8dQQH (SrCpxYCAZTMJrihumbcF8D)
                    margin: EdgeInsets.fromLTRB(25*fem, 0*fem, 23.86*fem, 37*fem),
                    width: double.infinity,
                    height: 50*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff57cc99),
                      borderRadius: BorderRadius.circular(70*fem),
                    ),
                    child: Center(
                      child: Text(
                        'Back to Login',
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
                  Container(
                    // contactusgMo (153:579)
                    margin: EdgeInsets.fromLTRB(10.14*fem, 0*fem, 0*fem, 0*fem),
                    child: Text(
                      'Contact Us',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125*ffem/fem,
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
          );
  }
}