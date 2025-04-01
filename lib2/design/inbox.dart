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
        // inboxEwB (4:30195)
        width: double.infinity,
        height: 896*fem,
        child: Container(
          // rewardsnho (4:30196)
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogrouptxqzKSq (SrCuxygZ5acgnKu5svTxQZ)
                padding: EdgeInsets.fromLTRB(29*fem, 39.77*fem, 40.14*fem, 10*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // barsstatusbariphonelightEph (4:30384)
                      margin: EdgeInsets.fromLTRB(27.93*fem, 0*fem, 0*fem, 36.23*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // timekY9 (I4:30384;104:534)
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
                            // cellularconnectiondrq (I4:30384;104:528)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                            width: 16.44*fem,
                            height: 10.32*fem,
                            child: Image.asset(
                              'assets/design/images/cellular-connection-JqP.png',
                              width: 16.44*fem,
                              height: 10.32*fem,
                            ),
                          ),
                          Container(
                            // wifi8Yh (I4:30384;104:524)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                            width: 14.83*fem,
                            height: 10.64*fem,
                            child: Image.asset(
                              'assets/design/images/wifi-Pe9.png',
                              width: 14.83*fem,
                              height: 10.64*fem,
                            ),
                          ),
                          Container(
                            // batteryeG9 (I4:30384;104:520)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                            width: 23.53*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/design/images/battery-JU9.png',
                              width: 23.53*fem,
                              height: 10.97*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupcauhMAZ (SrCudQQqPk3GMJkuw4CAUh)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.86*fem, 27*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // btnbacksub (4:30220)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 127*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/design/images/btn-back-gaV.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Container(
                            // inboxap1 (4:30324)
                            margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 123*fem, 0*fem),
                            child: Text(
                              'Inbox',
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
                            // iconlycurvedoutlineeditsquaret (4:30415)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                            width: 20*fem,
                            height: 20*fem,
                            child: Image.asset(
                              'assets/design/images/iconly-curved-outline-edit-square-jkM.png',
                              width: 20*fem,
                              height: 20*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup5fgmnv5 (SrCunUz3Km6g2JnyZN5fgM)
                      margin: EdgeInsets.fromLTRB(14.14*fem, 0*fem, 0*fem, 0*fem),
                      width: 327*fem,
                      height: 35*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rewardsuE1 (4:30232)
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
                            // newNtH (4:30325)
                            left: 66.0007324219*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 32*fem,
                                height: 20*fem,
                                child: Text(
                                  'New',
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
                            // line335Gu (4:30436)
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
                            // line34ajT (4:30437)
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
                            // readtEM (4:30435)
                            left: 226.0007324219*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 37*fem,
                                height: 20*fem,
                                child: Text(
                                  'Read',
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
                // group48095459mZ3 (4:30271)
                padding: EdgeInsets.fromLTRB(35*fem, 0*fem, 0*fem, 0*fem),
                width: double.infinity,
                height: 100*fem,
                decoration: BoxDecoration (
                  color: Color(0xfff6fff7),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogrouphecqt7s (SrCw87RMoSUu15o3xUheCq)
                      margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 44*fem, 18*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // readyforpickupcZf (4:30272)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            child: Text(
                              'Ready for Pick-up',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            // yourshoesisnowreadyforpickupat (4:30273)
                            'Your shoes is now ready for pick-up at SM Baguio.',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.6666666667*ffem/fem,
                              color: Color(0x91000000),
                            ),
                          ),
                          Container(
                            // readmoreFMj (4:30274)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              'Read more',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.6666666667*ffem/fem,
                                color: Color(0xff57cc99),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup1asby2q (SrCwDXS1FGUGZvEkxr1asB)
                      padding: EdgeInsets.fromLTRB(16*fem, 42*fem, 15.54*fem, 38*fem),
                      height: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xffed6a5a),
                      ),
                      child: Center(
                        // iconlyregularoutlinedeletetfb (4:30430)
                        child: SizedBox(
                          width: 18.46*fem,
                          height: 20*fem,
                          child: Image.asset(
                            'assets/design/images/iconly-regular-outline-delete.png',
                            width: 18.46*fem,
                            height: 20*fem,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupqwnhP6Z (SrCvJoSrco39zasjbRQwnH)
                padding: EdgeInsets.fromLTRB(35*fem, 21*fem, 43*fem, 27*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group48095458UNu (4:30233)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 28*fem, 31*fem),
                      width: 308*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // claimyourrewardPkm (4:30242)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                            child: Text(
                              'Claim Your Reward',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Container(
                            // autogroup3g3stSd (SrCvSoDXrr6gxDd4Df3G3s)
                            width: double.infinity,
                            height: 59*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // youvecollected100starsclaimyou (4:30234)
                                  left: 0*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 308*fem,
                                      height: 40*fem,
                                      child: Text(
                                        'You’ve collected 100 stars. Claim your free basic clean for 1 pair of shoes.',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.6666666667*ffem/fem,
                                          color: Color(0x91000000),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // readmore62u (4:30235)
                                  left: 1*fem,
                                  top: 39*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 62*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'Read more',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.6666666667*ffem/fem,
                                          color: Color(0xff57cc99),
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
                      // group48095460Zx5 (4:30243)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 20*fem, 315*fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // starscredited6SD (4:30252)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              '2 stars credited',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 14*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.4285714286*ffem/fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          SizedBox(
                            height: 3*fem,
                          ),
                          Text(
                            // yougotdoublestarsforavaiingour (4:30244)
                            'You got double stars for avaiing our deep clean service.',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.6666666667*ffem/fem,
                              color: Color(0x91000000),
                            ),
                          ),
                          SizedBox(
                            height: 3*fem,
                          ),
                          Container(
                            // readmoregQR (4:30245)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                            child: Text(
                              'Read more',
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w600,
                                height: 1.6666666667*ffem/fem,
                                color: Color(0xff57cc99),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // group48095457zR7 (4:30263)
                      margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                      width: 333*fem,
                      height: 56*fem,
                      child: Image.asset(
                        'assets/design/images/group-48095457-iRF.png',
                        width: 333*fem,
                        height: 56*fem,
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