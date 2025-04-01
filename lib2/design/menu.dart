import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 415;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // menumzh (4:30015)
        width: double.infinity,
        height: 896*fem,
        child: Stack(
          children: [
            Positioned(
              // rewardshdT (4:30016)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 414*fem,
                height: 896*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupzwar18M (SrD9JBJYMPgfcowGhvzwAR)
                      padding: EdgeInsets.fromLTRB(33*fem, 54.77*fem, 50.14*fem, 41.36*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xff2f6e53),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // barsstatusbariphonelight6vV (4:30018)
                            margin: EdgeInsets.fromLTRB(20.93*fem, 0*fem, 0*fem, 14.23*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // time1nZ (I4:30018;104:534)
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
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // cellularconnectionhfP (I4:30018;104:528)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                                  width: 16.44*fem,
                                  height: 10.32*fem,
                                  child: Image.asset(
                                    'assets/design/images/cellular-connection-PGu.png',
                                    width: 16.44*fem,
                                    height: 10.32*fem,
                                  ),
                                ),
                                Container(
                                  // wifiCs3 (I4:30018;104:524)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                                  width: 14.83*fem,
                                  height: 10.64*fem,
                                  child: Image.asset(
                                    'assets/design/images/wifi-2Hf.png',
                                    width: 14.83*fem,
                                    height: 10.64*fem,
                                  ),
                                ),
                                Container(
                                  // batteryJv5 (I4:30018;104:520)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                                  width: 23.53*fem,
                                  height: 10.97*fem,
                                  child: Image.asset(
                                    'assets/design/images/battery-iUq.png',
                                    width: 23.53*fem,
                                    height: 10.97*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogrouphayyDGM (SrD9a61hZ3C3wfV62rhAYy)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.86*fem, 32*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // btnbackjEh (4:30040)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 84*fem, 0*fem),
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/design/images/btn-back-1VB.png',
                                    width: 30*fem,
                                    height: 30*fem,
                                  ),
                                ),
                                Container(
                                  // suellaslogowhite13FP (4:30039)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                  width: 127*fem,
                                  height: 50*fem,
                                  child: Image.asset(
                                    'assets/design/images/suellas-logo-white-1-Vku.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // iconlyboldfilterM1B (4:30038)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.22*fem),
                                  width: 20*fem,
                                  height: 17.78*fem,
                                  child: Image.asset(
                                    'assets/design/images/iconly-bold-filter-C2V.png',
                                    width: 20*fem,
                                    height: 17.78*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // rewards3ub (4:30052)
                            margin: EdgeInsets.fromLTRB(17.14*fem, 0*fem, 0*fem, 17.23*fem),
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
                          Container(
                            // autogroupfscve8h (SrD9jR5VLS6WPuMdRoFsCV)
                            margin: EdgeInsets.fromLTRB(53*fem, 0*fem, 34.86*fem, 0*fem),
                            width: double.infinity,
                            height: 160.42*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle39374YUy (4:30019)
                                  left: 0*fem,
                                  top: 4.7749023438*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 250*fem,
                                      height: 152*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(10*fem),
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // sicon12Q9 (4:30020)
                                  left: 142.6625671387*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 107.31*fem,
                                      height: 160.42*fem,
                                      child: Image.asset(
                                        'assets/design/images/s-icon-1-2zm.png',
                                        width: 107.31*fem,
                                        height: 160.42*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // suellasrewardj3f (4:30029)
                                  left: 23*fem,
                                  top: 13.7749023438*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 118*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'SUELLAS REWARD',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 11*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.8181818182*ffem/fem,
                                          letterSpacing: 1.25*fem,
                                          color: Color(0xff00613a),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group48095447ct9 (4:30030)
                                  left: 22*fem,
                                  top: 92.7749023438*fem,
                                  child: Container(
                                    width: 133*fem,
                                    height: 18.34*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(10*fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // rectangle39372jSy (4:30031)
                                          left: 3*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 130*fem,
                                              height: 18*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(10*fem),
                                                  border: Border.all(color: Color(0x0a000000)),
                                                  color: Color(0xc9d8d8d8),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // rectangle393733Cm (4:30032)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 73.82*fem,
                                              height: 18.34*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(10*fem),
                                                  color: Color(0xff57cc99),
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
                                  // starstonextrewardsxKj (4:30033)
                                  left: 25*fem,
                                  top: 120.7749023438*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 111*fem,
                                      height: 20*fem,
                                      child: Text(
                                        '65 Stars to Next Rewards',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 9*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 2.2222222222*ffem/fem,
                                          color: Color(0xff00613a),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group48095456eiM (4:30034)
                                  left: 26.5*fem,
                                  top: 51.7749023438*fem,
                                  child: Container(
                                    width: 87*fem,
                                    height: 21*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // ZaR (4:30035)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                          child: Text(
                                            '35',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 26*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 0.7692307692*ffem/fem,
                                              letterSpacing: 1*fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // VU5 (4:30036)
                                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                          child: Text(
                                            '/150',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 21*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 0.9523809524*ffem/fem,
                                              letterSpacing: 1*fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // star3DQ5 (4:30037)
                                  left: 175*fem,
                                  top: 39.7749023438*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 36*fem,
                                      height: 36*fem,
                                      child: Image.asset(
                                        'assets/design/images/star-3-31B.png',
                                        width: 36*fem,
                                        height: 36*fem,
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
                      // autogrouptfahvJV (SrDAiZ6x1E8oR7pSj4TfAH)
                      padding: EdgeInsets.fromLTRB(38*fem, 65*fem, 43*fem, 27*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group480954592MX (4:30091)
                            margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 98*fem, 35*fem),
                            width: double.infinity,
                            height: 62*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupqs6vwjP (SrDBjMkJMCUkJbBnVCqS6V)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.67*fem, 17.99*fem, 0*fem),
                                  width: 42.01*fem,
                                  height: 50.34*fem,
                                  child: Image.asset(
                                    'assets/design/images/auto-group-qs6v.png',
                                    width: 42.01*fem,
                                    height: 50.34*fem,
                                  ),
                                ),
                                Container(
                                  // autogroupypnr3nR (SrDBo7947rAU1Aiy2gyPnR)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // get20offbasiccleanc4q (4:30092)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                        child: Text(
                                          'Get 20% Off Basic Clean',
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
                                        // autogroupfkcyi7s (SrDBrwN1AxTsJACyVifkcy)
                                        width: 144*fem,
                                        height: 39*fem,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // openonlytowalkinsrUy (4:30093)
                                              left: 0*fem,
                                              top: 0*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 123*fem,
                                                  height: 20*fem,
                                                  child: Text(
                                                    'Open only to walk-ins',
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
                                              // validseptember1302023kKT (4:30094)
                                              left: 0*fem,
                                              top: 19*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 144*fem,
                                                  height: 20*fem,
                                                  child: Text(
                                                    'Valid: September 1 - 30, 2023',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 2*ffem/fem,
                                                      color: Color(0xff000000),
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
                              ],
                            ),
                          ),
                          Container(
                            // group480954582Gy (4:30053)
                            margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 4*fem, 41*fem),
                            width: double.infinity,
                            height: 82*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroupxkbj9cV (SrDAuDTrKxtBMxpCthxkBj)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.67*fem, 11.99*fem, 0*fem),
                                  width: 42.01*fem,
                                  height: 51.34*fem,
                                  child: Image.asset(
                                    'assets/design/images/auto-group-xkbj.png',
                                    width: 42.01*fem,
                                    height: 51.34*fem,
                                  ),
                                ),
                                Container(
                                  // autogroupyjj34UZ (SrDAxt2Qp9xDU8QZWeYJj3)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // offonyour2ndpairofdeepcleancFB (4:30062)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                                        child: Text(
                                          '10% Off on your 2nd Pair of Deep Clean',
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
                                        // autogroup2fjhK9b (SrDB38QLHZL2jBchbQ2fJh)
                                        width: 222*fem,
                                        height: 59*fem,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // pluscollectdoublestarsondeepcl (4:30054)
                                              left: 0*fem,
                                              top: 0*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 222*fem,
                                                  height: 40*fem,
                                                  child: Text(
                                                    'Plus collect double stars on deep clean service',
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
                                              // validseptember1152023kkh (4:30055)
                                              left: 1*fem,
                                              top: 39*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 142*fem,
                                                  height: 20*fem,
                                                  child: Text(
                                                    'Valid: September 1 - 15, 2023',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 2*ffem/fem,
                                                      color: Color(0xff000000),
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
                              ],
                            ),
                          ),
                          Container(
                            // group480954603E1 (4:30063)
                            margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 47*fem, 40*fem),
                            width: double.infinity,
                            height: 66*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupaw4rxrm (SrDBJ7yMNA4uXVmRmLaW4R)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.99*fem, 1.33*fem),
                                  width: 42.01*fem,
                                  height: 51.34*fem,
                                  child: Image.asset(
                                    'assets/design/images/auto-group-aw4r.png',
                                    width: 42.01*fem,
                                    height: 51.34*fem,
                                  ),
                                ),
                                Container(
                                  // autogroupus9sfmB (SrDBMY3KzyHtrRXJceUs9s)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // offonshoerestorationDXo (4:30072)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          '5% Off on Shoe Restoration',
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
                                        // opentosmbaguioandsmurdanetabiD (4:30064)
                                        'Open to SM Baguio and SM Urdaneta b',
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
                                        // validseptember1152023d5j (4:30065)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'Valid: September 1 - 15, 2023',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 2*ffem/fem,
                                            color: Color(0xff000000),
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
                            // autogroupy8xjKUM (SrDAGz1DtMGEGNcnK1y8Xj)
                            width: double.infinity,
                            height: 71*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group48095461sEy (4:30073)
                                  left: 9*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 277*fem,
                                    height: 66*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupwqh3BFf (SrDARUm4qA1rnV34UWwqh3)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.99*fem, 1.33*fem),
                                          width: 42.01*fem,
                                          height: 51.34*fem,
                                          child: Image.asset(
                                            'assets/design/images/auto-group-wqh3.png',
                                            width: 42.01*fem,
                                            height: 51.34*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupcbgdgiD (SrDAVPpDAivwftTts6CbgD)
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // offonreglue3Hs (4:30082)
                                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                child: Text(
                                                  '5% Off on Re-Glue',
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
                                                // opentosmbaguioandsmurdanetab8q (4:30074)
                                                'Open to SM Baguio and SM Urdaneta b',
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
                                                // validseptember11520232fb (4:30075)
                                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                child: Text(
                                                  'Valid: September 1 - 15, 2023',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2*ffem/fem,
                                                    color: Color(0xff000000),
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
                                Positioned(
                                  // group480954579ER (4:30083)
                                  left: 0*fem,
                                  top: 15*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 333*fem,
                                      height: 56*fem,
                                      child: Image.asset(
                                        'assets/design/images/group-48095457-grV.png',
                                        width: 333*fem,
                                        height: 56*fem,
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
                  ],
                ),
              ),
            ),
            Positioned(
              // promotionsq7F (4:30101)
              left: 26*fem,
              top: 437*fem,
              child: Align(
                child: SizedBox(
                  width: 79*fem,
                  height: 17*fem,
                  child: Text(
                    'Promotions',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // rectangle39378XVs (4:30154)
              left: 157*fem,
              top: 0*fem,
              child: Align(
                child: SizedBox(
                  width: 258*fem,
                  height: 896*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // notificationsqmT (4:30165)
              left: 179*fem,
              top: 150*fem,
              child: Align(
                child: SizedBox(
                  width: 84*fem,
                  height: 20*fem,
                  child: Text(
                    'Notifications',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 14*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.4285714286*ffem/fem,
                      letterSpacing: -0.2399999946*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group48095449YA5 (4:30166)
              left: 317*fem,
              top: 146*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(42.63*fem, 6.51*fem, 11.37*fem, 5.49*fem),
                width: 69*fem,
                height: 27*fem,
                decoration: BoxDecoration (
                  color: Color(0xffc7f9cc),
                  borderRadius: BorderRadius.circular(30*fem),
                ),
                child: Align(
                  // ellipse590736q (4:30168)
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    width: double.infinity,
                    height: 15*fem,
                    child: Container(
                      decoration: BoxDecoration (
                        borderRadius: BorderRadius.circular(7.5*fem),
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlyregularboldprofileLrd (4:30189)
              left: 191.3333435059*fem,
              top: 79.6667480469*fem,
              child: Align(
                child: SizedBox(
                  width: 21.33*fem,
                  height: 26.67*fem,
                  child: Image.asset(
                    'assets/design/images/iconly-regular-bold-profile.png',
                    width: 21.33*fem,
                    height: 26.67*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // osirisdelimeMX (4:30171)
              left: 234.5*fem,
              top: 83*fem,
              child: Align(
                child: SizedBox(
                  width: 107*fem,
                  height: 20*fem,
                  child: Text(
                    'Osiris Delim',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 19*ffem,
                      fontWeight: FontWeight.w600,
                      height: 1.0526315789*ffem/fem,
                      letterSpacing: -0.2399999946*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // xregular241193P (4:30172)
              left: 373*fem,
              top: 14*fem,
              child: Align(
                child: SizedBox(
                  width: 30*fem,
                  height: 30*fem,
                  child: Image.asset(
                    'assets/design/images/x-regular-24-1-1.png',
                    fit: BoxFit.cover,
                  ),
                ),
              ),
            ),
            Positioned(
              // memberprofile4g9 (4:30173)
              left: 178*fem,
              top: 198*fem,
              child: Align(
                child: SizedBox(
                  width: 84*fem,
                  height: 20*fem,
                  child: Text(
                    'Member Profile',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6666666667*ffem/fem,
                      letterSpacing: -0.2399999946*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // accountsecurityy2R (4:30174)
              left: 179*fem,
              top: 235*fem,
              child: Align(
                child: SizedBox(
                  width: 94*fem,
                  height: 20*fem,
                  child: Text(
                    'Account Security',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6666666667*ffem/fem,
                      letterSpacing: -0.2399999946*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // servicesTTP (4:30175)
              left: 177*fem,
              top: 272*fem,
              child: Align(
                child: SizedBox(
                  width: 47*fem,
                  height: 20*fem,
                  child: Text(
                    'Services',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6666666667*ffem/fem,
                      letterSpacing: -0.2399999946*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // termsconditionsAMo (4:30176)
              left: 176*fem,
              top: 310*fem,
              child: Align(
                child: SizedBox(
                  width: 106*fem,
                  height: 20*fem,
                  child: Text(
                    'Terms & Conditions',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6666666667*ffem/fem,
                      letterSpacing: -0.2399999946*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // privacypolicy4TB (4:30177)
              left: 177*fem,
              top: 347*fem,
              child: Align(
                child: SizedBox(
                  width: 76*fem,
                  height: 20*fem,
                  child: Text(
                    'Privacy Policy',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6666666667*ffem/fem,
                      letterSpacing: -0.2399999946*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // contactus9zR (4:30818)
              left: 177*fem,
              top: 387*fem,
              child: Align(
                child: SizedBox(
                  width: 62*fem,
                  height: 20*fem,
                  child: Text(
                    'Contact Us',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w400,
                      height: 1.6666666667*ffem/fem,
                      letterSpacing: -0.2399999946*fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // logout3pu (4:30180)
              left: 178*fem,
              top: 424*fem,
              child: Align(
                child: SizedBox(
                  width: 45*fem,
                  height: 15*fem,
                  child: Text(
                    'Log out',
                    style: SafeGoogleFont (
                      'Inter',
                      fontSize: 12*ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.2125*ffem/fem,
                      letterSpacing: 0.12*fem,
                      color: Color(0xff00613a),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group48095450wvH (4:30181)
              left: 177*fem,
              top: 797*fem,
              child: Container(
                width: 162*fem,
                height: 24*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // instagramlogo2415Fo (4:30182)
                      width: 30*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/design/images/instagram-logo-24-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 14*fem,
                    ),
                    Container(
                      // facebookcirclelogo241QYy (4:30183)
                      width: 30*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/design/images/facebook-circle-logo-24-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 14*fem,
                    ),
                    Container(
                      // pinterestlogo241LSd (4:30184)
                      width: 30*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/design/images/pinterest-logo-24-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                    SizedBox(
                      width: 14*fem,
                    ),
                    Container(
                      // youtubelogo241GbB (4:30185)
                      width: 30*fem,
                      height: 24*fem,
                      child: Image.asset(
                        'assets/design/images/youtube-logo-24-1.png',
                        fit: BoxFit.cover,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // rectangle39380or1 (4:30186)
              left: 177*fem,
              top: 463*fem,
              child: Align(
                child: SizedBox(
                  width: 100*fem,
                  height: 2*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xff00613a),
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}