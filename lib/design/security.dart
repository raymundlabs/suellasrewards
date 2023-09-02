import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // security3B7 (4:31395)
        width: double.infinity,
        height: 896*fem,
        child: Container(
          // rewardsagq (4:31396)
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Stack(
            children: [
              Positioned(
                // autogroupe6tkJcq (SrD7R4mgcFkQMycsM9E6TK)
                left: 29*fem,
                top: 96*fem,
                child: Container(
                  width: 343*fem,
                  height: 30*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // btnbackc7j (4:31398)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                        width: 30*fem,
                        height: 30*fem,
                        child: Image.asset(
                          'assets/design/images/btn-back-X9j.png',
                          width: 30*fem,
                          height: 30*fem,
                        ),
                      ),
                      Container(
                        // accountWU1 (4:31424)
                        margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 112*fem, 0*fem),
                        child: Text(
                          'Account',
                          style: SafeGoogleFont (
                            'Inter',
                            fontSize: 16*ffem,
                            fontWeight: FontWeight.w600,
                            height: 1.2125*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                      Container(
                        // autogroupzcwmcX3 (SrD7a4WhFpC8SZi73uZCWM)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                        width: 20*fem,
                        height: 20*fem,
                        child: Image.asset(
                          'assets/design/images/auto-group-zcwm.png',
                          width: 20*fem,
                          height: 20*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // autogroupzvx9X8D (SrD7gUVg79Zh8MVj8oZvx9)
                left: 44.9992675781*fem,
                top: 153*fem,
                child: Container(
                  width: 327*fem,
                  height: 35*fem,
                  child: Stack(
                    children: [
                      Positioned(
                        // rewards2Ks (4:31411)
                        left: 123.5007324219*fem,
                        top: 15*fem,
                        child: Align(
                          child: SizedBox(
                            width: 76*fem,
                            height: 20*fem,
                            child: Text(
                              'Rewards',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.25*ffem/fem,
                                letterSpacing: 1*fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // profilehS1 (4:31425)
                        left: 59.0007324219*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 48*fem,
                            height: 20*fem,
                            child: Text(
                              'Profile',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286*ffem/fem,
                                letterSpacing: 0.5*fem,
                                color: Color(0x7f000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // line33nyF (4:31426)
                        left: 0*fem,
                        top: 29.5*fem,
                        child: Align(
                          child: SizedBox(
                            width: 327*fem,
                            height: 2*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                color: Color(0x26000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // line34haR (4:31427)
                        left: 162.0007324219*fem,
                        top: 29*fem,
                        child: Align(
                          child: SizedBox(
                            width: 165*fem,
                            height: 2*fem,
                            child: Container(
                              decoration: BoxDecoration (
                                color: Color(0xff57cc99),
                              ),
                            ),
                          ),
                        ),
                      ),
                      Positioned(
                        // securitypuw (4:31428)
                        left: 212.0007324219*fem,
                        top: 0*fem,
                        child: Align(
                          child: SizedBox(
                            width: 61*fem,
                            height: 20*fem,
                            child: Text(
                              'Security',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286*ffem/fem,
                                letterSpacing: 0.5*fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // group48095457Krh (4:31412)
                left: 38*fem,
                top: 813*fem,
                child: Align(
                  child: SizedBox(
                    width: 333*fem,
                    height: 56*fem,
                    child: Image.asset(
                      'assets/design/images/group-48095457-dBo.png',
                      width: 333*fem,
                      height: 56*fem,
                    ),
                  ),
                ),
              ),
              Positioned(
                // barsstatusbariphonelightDSH (4:31420)
                left: 56.9299068451*fem,
                top: 39.7731933594*fem,
                child: Container(
                  width: 316.93*fem,
                  height: 20*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // timeXC5 (I4:31420;104:534)
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
                        // cellularconnectionpgy (I4:31420;104:528)
                        margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                        width: 16.44*fem,
                        height: 10.32*fem,
                        child: Image.asset(
                          'assets/design/images/cellular-connection-LDw.png',
                          width: 16.44*fem,
                          height: 10.32*fem,
                        ),
                      ),
                      Container(
                        // wifiXbP (I4:31420;104:524)
                        margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                        width: 14.83*fem,
                        height: 10.64*fem,
                        child: Image.asset(
                          'assets/design/images/wifi-mwF.png',
                          width: 14.83*fem,
                          height: 10.64*fem,
                        ),
                      ),
                      Container(
                        // battery3Jq (I4:31420;104:520)
                        margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                        width: 23.53*fem,
                        height: 10.97*fem,
                        child: Image.asset(
                          'assets/design/images/battery-aJM.png',
                          width: 23.53*fem,
                          height: 10.97*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // autogroupps3kkU9 (SrD8AYXEjntk5V4BFApS3K)
                left: 55*fem,
                top: 674*fem,
                child: Container(
                  width: 295*fem,
                  height: 50*fem,
                  decoration: BoxDecoration (
                    color: Color(0xff57cc99),
                    borderRadius: BorderRadius.circular(70*fem),
                  ),
                  child: Center(
                    child: Text(
                      'Update Password',
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
                // changepasswordQob (4:31451)
                left: 39*fem,
                top: 209*fem,
                child: Align(
                  child: SizedBox(
                    width: 133*fem,
                    height: 20*fem,
                    child: Text(
                      'Change Password',
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
                // line19W5w (4:31496)
                left: 39*fem,
                top: 273*fem,
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
                // autogroupvdlmpsK (SrD7rDiSJqYZYf6Q9TvdLm)
                left: 39*fem,
                top: 244*fem,
                child: Container(
                  width: 340*fem,
                  height: 24*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // oldpasswordMcM (4:31497)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 223*fem, 0*fem),
                        child: Text(
                          'Old Password',
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
                        // vuesaxlineareyeslashGjK (4:31498)
                        width: 24*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/design/images/vuesax-linear-eye-slash-mCM.png',
                          width: 24*fem,
                          height: 24*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // line201B7 (4:31499)
                left: 39*fem,
                top: 324*fem,
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
                // autogroupvkwb7E9 (SrD7xiXcSdXoprpr9uVkwB)
                left: 42*fem,
                top: 295*fem,
                child: Container(
                  width: 337*fem,
                  height: 24*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // newpasswordpeM (4:31500)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 213*fem, 0*fem),
                        child: Text(
                          'New Password',
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
                        // vuesaxlineareyeslash8f3 (4:31501)
                        width: 24*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/design/images/vuesax-linear-eye-slash-kRX.png',
                          width: 24*fem,
                          height: 24*fem,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Positioned(
                // line214Yh (4:31520)
                left: 39*fem,
                top: 375*fem,
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
                // autogroupqhw7yQm (SrD84t21Sb4KjQmzUAqHw7)
                left: 42*fem,
                top: 346*fem,
                child: Container(
                  width: 337*fem,
                  height: 24*fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Container(
                        // confirmpasswordJC9 (4:31521)
                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 190*fem, 0*fem),
                        child: Text(
                          'Confirm Password',
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
                        // vuesaxlineareyeslashoub (4:31522)
                        width: 24*fem,
                        height: 24*fem,
                        child: Image.asset(
                          'assets/design/images/vuesax-linear-eye-slash-rbb.png',
                          width: 24*fem,
                          height: 24*fem,
                        ),
                      ),
                    ],
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