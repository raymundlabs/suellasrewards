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
        // signupZUu (172:773)
        width: double.infinity,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              // signup1VtM (130:459)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
              width: 414*fem,
              height: 896*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
          
                  Positioned(
                    // line18XkV (133:480)
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
                    // line19d2q (133:482)
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
                    // emailYvV (133:483)
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
                    // autogroupvrcvEYR (SrCipxue8Uz6xGJbjmvRcV)
                    left: 31*fem,
                    top: 342*fem,
                    child: Container(
                      width: 340*fem,
                      height: 24*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // passwordkWm (133:485)
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
                            // vuesaxlineareyeslashTAH (133:497)
                            width: 24*fem,
                            height: 24*fem,
                            child: Image.asset(
                              'assets/design/images/vuesax-linear-eye-slash-YY1.png',
                              width: 24*fem,
                              height: 24*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // thiswillbeyourusernamexMw (133:481)
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
                    // line24qgd (135:494)
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
                    // autogroupksjpmaH (SrCj53LX62xUE34EkjKsjP)
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
                    // line25rrd (135:496)
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
                    // lastnameP5s (135:497)
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
                    // logindetailsV8u (133:479)
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
                    // personaldetailsbBw (133:528)
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
                    // line20H4m (133:507)
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
                    // autogroupkk8ynXK (SrCixYXLxEyDwqKnkHkk8y)
                    left: 34*fem,
                    top: 403*fem,
                    child: Container(
                      width: 337*fem,
                      height: 24*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // confirmpasswordJVf (133:508)
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
                            // vuesaxlineareyeslashDcd (133:509)
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
                    // autogroupcuu3Yeu (SrCigieP345XDPioLucuu3)
                    left: 22*fem,
                    top: 86*fem,
                    child: Container(
                      width: 348*fem,
                      height: 30*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // btnbackTG5 (139:510)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 286*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/design/images/btn-back-K3f.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Text(
                            // next9Po (143:520)
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
                    // hiosirisTvH (142:500)
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
                    // welcometosuellasAph (142:502)
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
              // signup2R1s (142:506)
              margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41*fem, 0*fem),
              width: 414*fem,
              height: 896*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Stack(
                children: [
                  Positioned(
                    // barsstatusbariphonelight681 (142:507)
                    left: 57.9299316406*fem,
                    top: 39.7731933594*fem,
                    child: Container(
                      width: 316.93*fem,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // timezUH (I142:507;104:534)
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
                            // cellularconnectionVR3 (I142:507;104:528)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                            width: 16.44*fem,
                            height: 10.32*fem,
                            child: Image.asset(
                              'assets/design/images/cellular-connection-s3P.png',
                              width: 16.44*fem,
                              height: 10.32*fem,
                            ),
                          ),
                          Container(
                            // wifizch (I142:507;104:524)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                            width: 14.83*fem,
                            height: 10.64*fem,
                            child: Image.asset(
                              'assets/design/images/wifi-RZs.png',
                              width: 14.83*fem,
                              height: 10.64*fem,
                            ),
                          ),
                          Container(
                            // batteryiYh (I142:507;104:520)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                            width: 23.53*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/design/images/battery-yD3.png',
                              width: 23.53*fem,
                              height: 10.97*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroupunwudff (SrCkBve59WDFReRtubUnWu)
                    left: 31*fem,
                    top: 376*fem,
                    child: Container(
                      width: 344*fem,
                      height: 1*fem,
                    ),
                  ),
                  Positioned(
                    // autogroupdjbjmG5 (SrCjzmJ181mmvKmBCgdJbj)
                    left: 32*fem,
                    top: 351*fem,
                    child: Container(
                      width: 330.39*fem,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // day5Gm (142:510)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                            child: Text(
                              'Day',
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
                            // vectorPHT (142:535)
                            margin: EdgeInsets.fromLTRB(0*fem, 5.52*fem, 55.61*fem, 0*fem),
                            width: 9.39*fem,
                            height: 5.52*fem,
                            child: Image.asset(
                              'assets/design/images/vector-9ku.png',
                              width: 9.39*fem,
                              height: 5.52*fem,
                            ),
                          ),
                          Container(
                            // monthJfK (142:582)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 147*fem, 0*fem),
                            child: Text(
                              'Month',
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
                            // vectorRV3 (142:583)
                            margin: EdgeInsets.fromLTRB(0*fem, 5.52*fem, 0*fem, 0*fem),
                            width: 9.39*fem,
                            height: 5.52*fem,
                            child: Image.asset(
                              'assets/design/images/vector-mLu.png',
                              width: 9.39*fem,
                              height: 5.52*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // wewouldneverwanttomisssuchaspe (142:512)
                    left: 28*fem,
                    top: 274*fem,
                    child: Align(
                      child: SizedBox(
                        width: 352*fem,
                        height: 60*fem,
                        child: Text(
                          'We would never want to miss such a special day. Your birthday cannot be changed after submission.',
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
                    // line21CPK (142:513)
                    left: 31*fem,
                    top: 466*fem,
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
                    // addressKTw (142:514)
                    left: 34*fem,
                    top: 440*fem,
                    child: Align(
                      child: SizedBox(
                        width: 56*fem,
                        height: 20*fem,
                        child: Text(
                          'Address',
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
                    // line27p9o (142:584)
                    left: 31*fem,
                    top: 507*fem,
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
                    // autogroupzjvfwER (SrCkKkkMpe3RCTHZgjzJVF)
                    left: 34*fem,
                    top: 481*fem,
                    child: Container(
                      width: 331.39*fem,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // provinceTiZ (142:585)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 263*fem, 0*fem),
                            child: Text(
                              'Province',
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
                            // vectorBeZ (142:586)
                            margin: EdgeInsets.fromLTRB(0*fem, 3.52*fem, 0*fem, 0*fem),
                            width: 9.39*fem,
                            height: 5.52*fem,
                            child: Image.asset(
                              'assets/design/images/vector.png',
                              width: 9.39*fem,
                              height: 5.52*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // birthday7HK (142:526)
                    left: 28*fem,
                    top: 231*fem,
                    child: Align(
                      child: SizedBox(
                        width: 63*fem,
                        height: 20*fem,
                        child: Text(
                          'Birthday',
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
                    // contactaddresscUy (142:530)
                    left: 27*fem,
                    top: 408*fem,
                    child: Align(
                      child: SizedBox(
                        width: 124*fem,
                        height: 20*fem,
                        child: Text(
                          'Contact Address',
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
                    // autogroup7sthWaM (SrCm4ZrMgWGJAfAGCR7StH)
                    left: 34*fem,
                    top: 796*fem,
                    child: Container(
                      width: 344*fem,
                      height: 54*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // termsofusectH (143:522)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 159*fem, 0*fem),
                            child: Text(
                              'Terms of Use',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 13*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.5384615385*ffem/fem,
                                color: Color(0xff57cc99),
                              ),
                            ),
                          ),
                          Container(
                            // autogrouppy7xh93 (SrCmByofwM23yQHoMqpy7X)
                            margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 0*fem, 0*fem),
                            width: 102*fem,
                            height: 35*fem,
                            decoration: BoxDecoration (
                              color: Color(0xff57cc99),
                              borderRadius: BorderRadius.circular(40*fem),
                            ),
                            child: Center(
                              child: Text(
                                'Join now',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w700,
                                  height: 1.4285714286*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // line30kd7 (143:514)
                    left: 96.9991455078*fem,
                    top: 629.5*fem,
                    child: Align(
                      child: SizedBox(
                        width: 278*fem,
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
                    // autogroupvrv5gFs (SrCkiQmH1TP6akQJnjvrv5)
                    left: 27*fem,
                    top: 600*fem,
                    child: Container(
                      width: 176*fem,
                      height: 29*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroupsntro5b (SrCkrEsZgbDGMZFyZtSNtR)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 22*fem, 0*fem),
                            width: 51*fem,
                            height: double.infinity,
                            decoration: BoxDecoration (
                              color: Color(0xbf57cc99),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Center(
                              child: Text(
                                '+63',
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 14*ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.4285714286*ffem/fem,
                                  color: Color(0xffffffff),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            // mobilenumberDQD (143:515)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                            child: Text(
                              'Mobile Number',
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
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // line28vJd (142:587)
                    left: 33*fem,
                    top: 547*fem,
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
                    // autogroupb1utF61 (SrCkTqMEM9idkVyiEXB1uT)
                    left: 34*fem,
                    top: 522*fem,
                    child: Container(
                      width: 330.39*fem,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // citymKF (142:588)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 294*fem, 0*fem),
                            child: Text(
                              'City',
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
                            // vectorHoP (142:589)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.48*fem),
                            width: 9.39*fem,
                            height: 5.52*fem,
                            child: Image.asset(
                              'assets/design/images/vector-PRB.png',
                              width: 9.39*fem,
                              height: 5.52*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // line29CvM (143:510)
                    left: 32*fem,
                    top: 588*fem,
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
                    // autogrouprlwjLFs (SrCkaaezLKYvowYe1bRLwj)
                    left: 34*fem,
                    top: 562*fem,
                    child: Container(
                      width: 331.39*fem,
                      height: 20*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Container(
                            // barangayFtd (143:511)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 258*fem, 0*fem),
                            child: Text(
                              'Barangay',
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
                            // vectorypd (143:512)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.48*fem),
                            width: 9.39*fem,
                            height: 5.52*fem,
                            child: Image.asset(
                              'assets/design/images/vector-aWu.png',
                              width: 9.39*fem,
                              height: 5.52*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // btnbackuTP (142:537)
                    left: 22*fem,
                    top: 86*fem,
                    child: Align(
                      child: SizedBox(
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/design/images/btn-back.png',
                          width: 30*fem,
                          height: 30*fem,
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // hiosiris22D (142:579)
                    left: 28*fem,
                    top: 140*fem,
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
                    // welcometosuellasKX7 (142:580)
                    left: 28*fem,
                    top: 168*fem,
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
                  Positioned(
                    // emailpreferencestermsabT (143:517)
                    left: 31*fem,
                    top: 661*fem,
                    child: Align(
                      child: SizedBox(
                        width: 178*fem,
                        height: 20*fem,
                        child: Text(
                          'Email preferences & terms',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.4285714286*ffem/fem,
                            color: Color(0xe5000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                  Positioned(
                    // autogroup586ug8h (SrCkwQPdH3Mb99sCod586u)
                    left: 31*fem,
                    top: 695*fem,
                    child: Container(
                      width: 328*fem,
                      height: 40*fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle5737bWZ (143:518)
                            margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 19*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            decoration: BoxDecoration (
                              borderRadius: BorderRadius.circular(10*fem),
                              border: Border.all(color: Color(0xe557cc99)),
                            ),
                          ),
                          Container(
                            // idonotwishtoreceivenewsspecial (143:519)
                            constraints: BoxConstraints (
                              maxWidth: 279*fem,
                            ),
                            child: Text(
                              'I do not wish to receive news, special offers and more from Suellas',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.6666666667*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Positioned(
                    // byclickingthisbuttoniagreetoth (143:521)
                    left: 32*fem,
                    top: 755*fem,
                    child: Align(
                      child: SizedBox(
                        width: 251*fem,
                        height: 40*fem,
                        child: Text(
                          'By clicking this button, I agree to the \nterms and conditions.',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 14*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.4285714286*ffem/fem,
                            color: Color(0xe5000000),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),
            Container(
              // alldoneH21 (153:581)
              padding: EdgeInsets.fromLTRB(45*fem, 39.77*fem, 40.14*fem, 207*fem),
              width: 414*fem,
              height: 896*fem,
              decoration: BoxDecoration (
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // barsstatusbariphonelight9pu (153:582)
                    margin: EdgeInsets.fromLTRB(11.93*fem, 0*fem, 0*fem, 20.23*fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // timerjK (I153:582;104:534)
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
                          // cellularconnectionxGZ (I153:582;104:528)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                          width: 16.44*fem,
                          height: 10.32*fem,
                          child: Image.asset(
                            'assets/design/images/cellular-connection-xBT.png',
                            width: 16.44*fem,
                            height: 10.32*fem,
                          ),
                        ),
                        Container(
                          // wifiFmT (I153:582;104:524)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                          width: 14.83*fem,
                          height: 10.64*fem,
                          child: Image.asset(
                            'assets/design/images/wifi-BPf.png',
                            width: 14.83*fem,
                            height: 10.64*fem,
                          ),
                        ),
                        Container(
                          // battery9bw (I153:582;104:520)
                          margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                          width: 23.53*fem,
                          height: 10.97*fem,
                          child: Image.asset(
                            'assets/design/images/battery-Nkq.png',
                            width: 23.53*fem,
                            height: 10.97*fem,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // suellaslogoblack1EtH (4:16599)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.86*fem, 47*fem),
                    width: 128*fem,
                    height: 50*fem,
                    child: Image.asset(
                      'assets/design/images/suellas-logo-black-1-W8Z.png',
                      fit: BoxFit.cover,
                    ),
                  ),
                  Container(
                    // alldoneXcV (153:591)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 242.86*fem, 23*fem),
                    child: Text(
                      'All Done',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 21*ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.2125*ffem/fem,
                        color: Color(0xff57cc99),
                      ),
                    ),
                  ),
                  Container(
                    // thanksforgivingusyourprecioust (153:584)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.86*fem, 86.67*fem),
                    constraints: BoxConstraints (
                      maxWidth: 324*fem,
                    ),
                    child: Text(
                      'Thanks for giving us your precious time. Now you are ready to earn points.\n',
                      style: SafeGoogleFont (
                        'Inter',
                        fontSize: 15*ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3333333333*ffem/fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // iconlyregularoutlineticksquare (4:31189)
                    margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.86*fem, 119.67*fem),
                    width: 166.67*fem,
                    height: 166.67*fem,
                    child: Image.asset(
                      'assets/design/images/iconly-regular-outline-tick-square.png',
                      width: 166.67*fem,
                      height: 166.67*fem,
                    ),
                  ),
                  Container(
                    // autogroupayimzeV (SrCmsYW5jKFJoWJGsJAYiM)
                    margin: EdgeInsets.fromLTRB(14*fem, 0*fem, 19.86*fem, 0*fem),
                    width: double.infinity,
                    height: 50*fem,
                    decoration: BoxDecoration (
                      color: Color(0xff57cc99),
                      borderRadius: BorderRadius.circular(70*fem),
                    ),
                    child: Center(
                      child: Text(
                        'Let’s go',
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
                ],
              ),
            ),
          ],
        ),
      ),
          );
  }
}