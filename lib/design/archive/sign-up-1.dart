import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';

class SignUp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // signup1qrH (34:848)
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // signup1kyF (34:849)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 495*fem, 0*fem),
              width: 414*fem,
              height: 896*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // barsstatusbariphonelightqUu (34:850)
                    left: 57.9298095703*fem,
                    top: 39.7731933594*fem,
                    child: Container(
                      width: 316.93*fem,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // timeWL9 (I34:850;104:534)
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
                            // cellularconnectionaL1 (I34:850;104:528)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                            width: 16.44*fem,
                            height: 10.32*fem,
                            child: Image.asset(
                              'assets/design/images/cellular-connection-qFf.png',
                              width: 16.44*fem,
                              height: 10.32*fem,
                            ),
                          ),
                          Container(
                            // wifiTeh (I34:850;104:524)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                            width: 14.83*fem,
                            height: 10.64*fem,
                            child: Image.asset(
                              'assets/design/images/wifi.png',
                              width: 14.83*fem,
                              height: 10.64*fem,
                            ),
                          ),
                          Container(
                            // batterymQV (I34:850;104:520)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                            width: 23.53*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/design/images/battery-ByK.png',
                              width: 23.53*fem,
                              height: 10.97*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // line18U41 (34:851)
                    left: 30*fem,
                    top: 298*fem,
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
                    // line19yFf (34:852)
                    left: 31*fem,
                    top: 371*fem,
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
                    // emailttR (34:853)
                    left: 32*fem,
                    top: 273*fem,
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
                    // autogroup9vmmb29 (TkpsAaSNtrhPCK2aVt9vMM)
                    left: 31*fem,
                    top: 342*fem,
                    child: Container(
                      width: 340*fem,
                      height: 24*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // passworduoX (34:854)
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
                            // vuesaxlineareyeslashS2m (34:862)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/design/images/vuesax-linear-eye-slash-9Ym.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // thiswillbeyourusernamejnZ (34:855)
                    left: 33*fem,
                    top: 308*fem,
                    child: Align(
                      child: SizedBox(
                        width: 194*fem,
                        height: 20*fem,
                        child: Text(
                          'This will be your username',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.3333333333*ffem/fem,
                            color: Color(0xa5000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line241zy (34:856)
                    left: 31*fem,
                    top: 533*fem,
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
                    // autogroupwvesjAH (TkpsVZtjbUy2USYxywWvEs)
                    left: 33*fem,
                    top: 508*fem,
                    child: Container(
                      width: 335.39*fem,
                      height: 20*fem,
                      child: Text(
                        'First Name',
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
                  Positioned(
                    // line25cUy (34:858)
                    left: 31*fem,
                    top: 582*fem,
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
                    // lastnameX69 (34:859)
                    left: 32*fem,
                    top: 557*fem,
                    child: Align(
                      child: SizedBox(
                        width: 72*fem,
                        height: 20*fem,
                        child: Text(
                          'Last Name',
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
                    // logindetailsd9B (34:860)
                    left: 30*fem,
                    top: 231*fem,
                    child: Align(
                      child: SizedBox(
                        width: 96*fem,
                        height: 20*fem,
                        child: Text(
                          'Login Details',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3333333333*ffem/fem,
                            color: Color(0xff57cc99),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // personaldetailsXEZ (34:861)
                    left: 31*fem,
                    top: 464*fem,
                    child: Align(
                      child: SizedBox(
                        width: 119*fem,
                        height: 20*fem,
                        child: Text(
                          'Personal Details',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 15*ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.3333333333*ffem/fem,
                            color: Color(0xff57cc99),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // line20Qp9 (34:863)
                    left: 31*fem,
                    top: 432*fem,
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
                    // autogrouprqjdjbX (TkpsJ5DtSA4pbU6warRqjD)
                    left: 34*fem,
                    top: 403*fem,
                    child: Container(
                      width: 337*fem,
                      height: 24*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // confirmpassword4do (34:864)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 190*fem, 0*fem),
                            child: Text(
                              'Confirm Password',
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
                            // vuesaxlineareyeslasha6M (34:865)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/design/images/vuesax-linear-eye-slash.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupe6nkD2q (TkprtLQSZNjGVohTUnE6NK)
                    left: 22*fem,
                    top: 86*fem,
                    child: Container(
                      width: 348*fem,
                      height: 30*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // btnbackJpy (34:867)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 286*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/design/images/btn-back.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Text(
                            // nextzho (34:875)
                            'Next',
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
                    // hiosirisXhj (34:873)
                    left: 26*fem,
                    top: 143*fem,
                    child: Align(
                      child: SizedBox(
                        width: 69*fem,
                        height: 20*fem,
                        child: Text(
                          'Hi, Osiris',
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
                    // welcometosuellasDqT (34:874)
                    left: 26*fem,
                    top: 171*fem,
                    child: Align(
                      child: SizedBox(
                        width: 207*fem,
                        height: 26*fem,
                        child: RichText(
                          text: TextSpan(
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 21*ffem,
                              fontWeight: FontWeight.w900,
                              height: 1.2102272397*ffem/fem,
                              color: Color(0xff040b14),
                            ),
                            children: [
                              TextSpan(
                                text: 'Welcome to ',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 21*ffem,
                                  fontWeight: FontWeight.w900,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff040b14),
                                ),
                              ),
                              TextSpan(
                                text: 'Suellas',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 21*ffem,
                                  fontWeight: FontWeight.w900,
                                  height: 1.2125*ffem/fem,
                                  color: Color(0xff57cc99),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // autogroup3todw2h (Tkpqxn7M6K9KzLtAsv3ToD)
              width: 414*fem,
              height: 896*fem,
            ),
          ],
        ),
      ),
          );
  }
}