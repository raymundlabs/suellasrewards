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
        // scanqrbranch7AZ (4:30615)
        width: double.infinity,
        height: 896*fem,
        child: Container(
          // rewardsrtq (4:30616)
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // autogroupjr6rQQZ (SrCym32Yox2EM5L4uUJR6R)
                padding: EdgeInsets.fromLTRB(29*fem, 39.77*fem, 40.14*fem, 37*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // barsstatusbariphonelightWyP (4:30639)
                      margin: EdgeInsets.fromLTRB(27.93*fem, 0*fem, 0*fem, 36.23*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // timepz5 (I4:30639;104:534)
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
                            // cellularconnectionJuF (I4:30639;104:528)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                            width: 16.44*fem,
                            height: 10.32*fem,
                            child: Image.asset(
                              'assets/design/images/cellular-connection-Nq7.png',
                              width: 16.44*fem,
                              height: 10.32*fem,
                            ),
                          ),
                          Container(
                            // wifipMo (I4:30639;104:524)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                            width: 14.83*fem,
                            height: 10.64*fem,
                            child: Image.asset(
                              'assets/design/images/wifi-X5K.png',
                              width: 14.83*fem,
                              height: 10.64*fem,
                            ),
                          ),
                          Container(
                            // batteryjzZ (I4:30639;104:520)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                            width: 23.53*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/design/images/battery-921.png',
                              width: 23.53*fem,
                              height: 10.97*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup12py4X3 (SrCyQiH5ZyufaLgTei12py)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.36*fem, 24*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // btnbackPZK (4:30618)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/design/images/btn-back-fvR.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Container(
                            // scanqru1s (4:30641)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 112*fem, 2*fem),
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
                            // iconlyregularoutlinefilterzp1 (4:31083)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.1*fem),
                            width: 17.5*fem,
                            height: 15.9*fem,
                            child: Image.asset(
                              'assets/design/images/iconly-regular-outline-filter.png',
                              width: 17.5*fem,
                              height: 15.9*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroup1lksuRB (SrCyZxWg4vCSSAcB871LKs)
                      margin: EdgeInsets.fromLTRB(14.14*fem, 0*fem, 0*fem, 22*fem),
                      width: 327*fem,
                      height: 38*fem,
                      child: Stack(
                        children: [
                          Positioned(
                            // rewardsDRs (4:30630)
                            left: 123.5007324219*fem,
                            top: 18*fem,
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
                            // scanhM3 (4:30642)
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
                                    color: Color(0x7f000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // line33ntH (4:30643)
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
                            // line34KNR (4:30644)
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
                            // historyrNM (4:30645)
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
                                    color: Color(0xff000000),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // btnordernowjww (4:31579)
                      margin: EdgeInsets.fromLTRB(10.14*fem, 0*fem, 0*fem, 0*fem),
                      padding: EdgeInsets.fromLTRB(21*fem, 17*fem, 18*fem, 14*fem),
                      height: 91*fem,
                      decoration: BoxDecoration (
                        border: Border.all(color: Color(0xff306e53)),
                        color: Color(0xff306e53),
                        borderRadius: BorderRadius.circular(20*fem),
                        boxShadow: [
                          BoxShadow(
                            color: Color(0x7faeaec0),
                            offset: Offset(5*fem, 5*fem),
                            blurRadius: 10*fem,
                          ),
                          BoxShadow(
                            color: Color(0xffffffff),
                            offset: Offset(-5*fem, -5*fem),
                            blurRadius: 10*fem,
                          ),
                        ],
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogroup2yktxph (SrCzCwT44fMXsUK31h2YKT)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 9*fem),
                            width: 103*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // totalqrscannedVZj (4:31582)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 16*fem),
                                  child: Text(
                                    'Total QR Scanned',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.0833333333*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroup6tpkQAu (SrCzJ28vNetB4eySKt6tPK)
                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 32*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // iconlyregularbulkscan8sb (12:3973)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11*fem, 0*fem),
                                        width: 22*fem,
                                        height: 18*fem,
                                        child: Image.asset(
                                          'assets/design/images/iconly-regular-bulk-scan.png',
                                          width: 22*fem,
                                          height: 18*fem,
                                        ),
                                      ),
                                      Container(
                                        // FBX (4:31584)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                        child: Text(
                                          '100',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 0.65*ffem/fem,
                                            color: Color(0xffffffff),
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
                            // dividerm9s (4:31581)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 19*fem, 0*fem),
                            height: double.infinity,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xffc7f9cc)),
                              borderRadius: BorderRadius.circular(20*fem),
                            ),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Opacity(
                                  // rectangle27Vbf (I4:31581;160:922)
                                  opacity: 0.5,
                                  child: Container(
                                    width: 1*fem,
                                    height: 60*fem,
                                    decoration: BoxDecoration (
                                      color: Color(0x7f306e53),
                                      boxShadow: [
                                        BoxShadow(
                                          color: Color(0x0c000000),
                                          offset: Offset(0*fem, 1*fem),
                                          blurRadius: 5*fem,
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Container(
                                  // rectangle26BUV (I4:31581;160:921)
                                  width: 1*fem,
                                  height: 60*fem,
                                  decoration: BoxDecoration (
                                    color: Color(0x7fffffff),
                                    boxShadow: [
                                      BoxShadow(
                                        color: Color(0x3fffffff),
                                        offset: Offset(0*fem, -1*fem),
                                        blurRadius: 5*fem,
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupnombK4u (SrCzRWvRuxFcTp3oQrNomB)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 10*fem),
                            width: 128*fem,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // totalshoesacceptedEBs (4:31583)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 13*fem),
                                  child: Text(
                                    'Total Shoes Accepted',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.0833333333*ffem/fem,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                                Container(
                                  // autogroupyxe5M1b (SrCzVvxjxGrnuh9bLgyxe5)
                                  margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 59*fem, 0*fem),
                                  width: double.infinity,
                                  child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        // iconlyregularbulkgraphGeM (12:3980)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 12*fem, 0*fem),
                                        width: 20*fem,
                                        height: 20*fem,
                                        child: Image.asset(
                                          'assets/design/images/iconly-regular-bulk-graph.png',
                                          width: 20*fem,
                                          height: 20*fem,
                                        ),
                                      ),
                                      Container(
                                        // yof (4:31585)
                                        margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                        child: Text(
                                          '120',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 20*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 0.65*ffem/fem,
                                            color: Color(0xffffffff),
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
                  ],
                ),
              ),
              Container(
                // group48095459Vn1 (4:30700)
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
                      // autogroupwap1DCD (SrD273xFDJfzFFyMT1WAp1)
                      margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 68*fem, 18*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // customerno0000001jAZ (4:30704)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                            child: Text(
                              'Customer No. 0000001',
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
                            // servicebasiccleanshoes1points1 (4:30705)
                            'Service: Basic Clean, Shoes: 1, Points: 1',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.6666666667*ffem/fem,
                              color: Color(0x91000000),
                            ),
                          ),
                          Container(
                            // readmoreMxd (4:30706)
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
                      // autogroupvjvdUXT (SrD2CiTUWWWQbLFYE1VJvD)
                      width: 87*fem,
                      height: double.infinity,
                      child: Stack(
                        children: [
                          Positioned(
                            // rectangle39405d9T (4:30702)
                            left: 37*fem,
                            top: 0*fem,
                            child: Align(
                              child: SizedBox(
                                width: 50*fem,
                                height: 100*fem,
                                child: Image.asset(
                                  'assets/design/images/rectangle-39405-KB7.png',
                                  width: 50*fem,
                                  height: 100*fem,
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            // aug30wA9 (4:30712)
                            left: 0*fem,
                            top: 15*fem,
                            child: Align(
                              child: SizedBox(
                                width: 41*fem,
                                height: 20*fem,
                                child: Text(
                                  'Aug 30',
                                  textAlign: TextAlign.right,
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
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupzzdsSMo (SrCzpRRvx9SLdM12HUzZds)
                padding: EdgeInsets.fromLTRB(35*fem, 21*fem, 43*fem, 27*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // group48095458NmF (4:30691)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 30*fem),
                      width: 333*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupmg2vW6m (SrCzzAeh9qRD3ebhJ9MG2V)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // customerno0000002dSH (4:30694)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 126*fem, 0*fem),
                                  child: Text(
                                    'Customer No. 0000002 ',
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
                                  // aug30whs (4:30713)
                                  'Aug 30',
                                  textAlign: TextAlign.right,
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6666666667*ffem/fem,
                                    color: Color(0x91000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            // servicedeepcleanshoes1points2g (4:30692)
                            'Service: Deep Clean, Shoes: 1, Points: 2',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w400,
                              height: 1.6666666667*ffem/fem,
                              color: Color(0x91000000),
                            ),
                          ),
                          Container(
                            // readmorecZ7 (4:30693)
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
                      // group48095460Lk1 (4:30695)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3*fem, 195*fem),
                      width: 333*fem,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            // autogroupumpdG7s (SrD19aYgDgwM6JR4cdUMpd)
                            margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                            width: double.infinity,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // customerno000000315T (4:30698)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 129*fem, 0*fem),
                                  child: Text(
                                    'Customer No. 0000003',
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
                                  // aug30vTK (4:30714)
                                  'Aug 30',
                                  textAlign: TextAlign.right,
                                  style: SafeGoogleFont (
                                    'Inter',
                                    fontSize: 12*ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6666666667*ffem/fem,
                                    color: Color(0x91000000),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          SizedBox(
                            height: 3*fem,
                          ),
                          Text(
                            // servicereglueshoes1points2SRf (4:30696)
                            'Service: Re-glue, Shoes: 1, Points: 2',
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
                            // readmorew7X (4:30697)
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
                      // group48095457T5s (4:30631)
                      margin: EdgeInsets.fromLTRB(3*fem, 0*fem, 0*fem, 0*fem),
                      width: 333*fem,
                      height: 56*fem,
                      child: Image.asset(
                        'assets/design/images/group-48095457-P1T.png',
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