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
        // scanqrbranchTTX (4:30535)
        width: double.infinity,
        height: 896*fem,
        child: Container(
          // rewards1E9 (4:30536)
          padding: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 27*fem),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupjkqxuqK (SrCxZQMuaKhYKw5K8bJkqX)
                padding: EdgeInsets.fromLTRB(29*fem, 39.77*fem, 40.14*fem, 22*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // barsstatusbariphonelight3Aq (4:30559)
                      margin: EdgeInsets.fromLTRB(27.93*fem, 0*fem, 0*fem, 36.23*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // timewn1 (I4:30559;104:534)
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
                            // cellularconnectiondPw (I4:30559;104:528)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                            width: 16.44*fem,
                            height: 10.32*fem,
                            child: Image.asset(
                              'assets/design/images/cellular-connection-s6H.png',
                              width: 16.44*fem,
                              height: 10.32*fem,
                            ),
                          ),
                          Container(
                            // wifijSy (I4:30559;104:524)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                            width: 14.83*fem,
                            height: 10.64*fem,
                            child: Image.asset(
                              'assets/design/images/wifi-LCy.png',
                              width: 14.83*fem,
                              height: 10.64*fem,
                            ),
                          ),
                          Container(
                            // battery3iZ (I4:30559;104:520)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                            width: 23.53*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/design/images/battery-VYu.png',
                              width: 23.53*fem,
                              height: 10.97*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup3przZS1 (SrCxAzqaEtCuiso3oE3PrZ)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.36*fem, 27*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // btnbacktUH (4:30538)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/design/images/btn-back-AcZ.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Container(
                            // scanqrCjs (4:30561)
                            margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 112*fem, 0*fem),
                            child: Text(
                              'Scan QR',
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
                            // iconlyregularoutlinefilter7rq (4:31071)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.1*fem),
                            width: 17.5*fem,
                            height: 15.9*fem,
                            child: Image.asset(
                              'assets/design/images/iconly-regular-outline-filter-MjF.png',
                              width: 17.5*fem,
                              height: 15.9*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroups7xfQb3 (SrCxJfHUM6oiJrm4jHS7Xf)
                      margin: EdgeInsets.fromLTRB(14.14*fem, 0*fem, 0*fem, 0*fem),
                      width: 327*fem,
                      height: 35*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rewardsuXo (4:30550)
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
                            // scana89 (4:30602)
                            left: 66.0007324219*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 36*fem,
                                height: 20*fem,
                                child: Text(
                                  'Scan',
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
                          Positioned(
                            // line33sd3 (4:30603)
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
                            // line34QN5 (4:30604)
                            left: 0.0007324219*fem,
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
                            // historyLFj (4:30690)
                            left: 218.0007324219*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 53*fem,
                                height: 20*fem,
                                child: Text(
                                  'History',
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupj2pjdEq (SrCxSzNvizKye9Hh3hJ2Pj)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 33*fem),
                padding: EdgeInsets.fromLTRB(161.17*fem, 250.5*fem, 159.08*fem, 241.33*fem),
                width: double.infinity,
                decoration: BoxDecoration (
                  color: Color(0xffd9d9d9),
                ),
                child: Center(
                  // iconlyregularoutlinescanLQ9 (4:30606)
                  child: SizedBox(
                    width: 93.75*fem,
                    height: 78.17*fem,
                    child: Image.asset(
                      'assets/design/images/iconly-regular-outline-scan.png',
                      width: 93.75*fem,
                      height: 78.17*fem,
                    ),
                  ),
                ),
              ),
              Container(
                // group48095457rdP (4:30551)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                width: 333*fem,
                height: 56*fem,
                child: Image.asset(
                  'assets/design/images/group-48095457-Two.png',
                  width: 333*fem,
                  height: 56*fem,
                ),
              ),
            ],
          ),
        ),
      ),
          );
  }
}