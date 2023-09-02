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
        // locationsSGR (4:30716)
        width: double.infinity,
        height: 896*fem,
        child: Container(
          // rewardsnbB (4:30717)
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
                // autogroupwrvhteD (SrD3JbnhAUNzfzHHJLwRvH)
                padding: EdgeInsets.fromLTRB(29*fem, 39.77*fem, 40.14*fem, 26*fem),
                width: double.infinity,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // barsstatusbariphonelightQsT (4:30740)
                      margin: EdgeInsets.fromLTRB(27.93*fem, 0*fem, 0*fem, 36.23*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // time8YZ (I4:30740;104:534)
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
                            // cellularconnectionpAV (I4:30740;104:528)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                            width: 16.44*fem,
                            height: 10.32*fem,
                            child: Image.asset(
                              'assets/design/images/cellular-connection-bDb.png',
                              width: 16.44*fem,
                              height: 10.32*fem,
                            ),
                          ),
                          Container(
                            // wifiKd3 (I4:30740;104:524)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                            width: 14.83*fem,
                            height: 10.64*fem,
                            child: Image.asset(
                              'assets/design/images/wifi-d1j.png',
                              width: 14.83*fem,
                              height: 10.64*fem,
                            ),
                          ),
                          Container(
                            // batteryr7B (I4:30740;104:520)
                            margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                            width: 23.53*fem,
                            height: 10.97*fem,
                            child: Image.asset(
                              'assets/design/images/battery-ox5.png',
                              width: 23.53*fem,
                              height: 10.97*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupsu9kxAD (SrD2YTPamGKCDBHN1xsu9K)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.36*fem, 0*fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // btnbacksHB (4:30719)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 110*fem, 0*fem),
                            width: 30*fem,
                            height: 30*fem,
                            child: Image.asset(
                              'assets/design/images/btn-back-z9P.png',
                              width: 30*fem,
                              height: 30*fem,
                            ),
                          ),
                          Container(
                            // locationsaBb (4:30741)
                            margin: EdgeInsets.fromLTRB(0*fem, 4*fem, 107*fem, 0*fem),
                            child: Text(
                              'Locations',
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
                            // iconlyregularoutlinefiltertTB (4:31108)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 2.1*fem),
                            width: 17.5*fem,
                            height: 15.9*fem,
                            child: Image.asset(
                              'assets/design/images/iconly-regular-outline-filter-N4h.png',
                              width: 17.5*fem,
                              height: 15.9*fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupud5knHf (SrD2fhgWTBqaq6XFLJUd5K)
                width: double.infinity,
                height: 237*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rewardsut5 (4:30731)
                      left: 168.5*fem,
                      top: 16*fem,
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
                      // group48095459PoF (4:30756)
                      left: 0*fem,
                      top: 0*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(33*fem, 0*fem, 0*fem, 0*fem),
                        width: 414*fem,
                        height: 120*fem,
                        decoration: BoxDecoration (
                          color: Color(0xfff6fff7),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // pinV5b (4:30814)
                              margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 11*fem, 0*fem),
                              width: 18*fem,
                              height: 19*fem,
                              child: Image.asset(
                                'assets/design/images/pin.png',
                                width: 18*fem,
                                height: 19*fem,
                              ),
                            ),
                            Container(
                              // autogrouppiczCkh (SrD2qXjTwLS8qp4kGWPicZ)
                              margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 60*fem, 15*fem),
                              height: double.infinity,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    // smcitybaguiojVj (4:30759)
                                    'SM City Baguio',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 14*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4285714286*ffem/fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                  SizedBox(
                                    height: 3*fem,
                                  ),
                                  Container(
                                    // addresslowerbasementsmcitybagu (4:30760)
                                    constraints: BoxConstraints (
                                      maxWidth: 242*fem,
                                    ),
                                    child: RichText(
                                      text: TextSpan(
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.6666666667*ffem/fem,
                                          color: Color(0x91000000),
                                        ),
                                        children: [
                                          TextSpan(
                                            text: 'Address: Lower Basement, SM City Baguio\nMobile: ',
                                          ),
                                          TextSpan(
                                            text: '09672292875',
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
                                  ),
                                  SizedBox(
                                    height: 3*fem,
                                  ),
                                  Text(
                                    // openmondaytosunday10am9pmKsF (4:30761)
                                    'Open Monday to Sunday 10am - 9pm',
                                    style: SafeGoogleFont (
                                      'Inter',
                                      fontSize: 12*ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.6666666667*ffem/fem,
                                      color: Color(0xff57cc99),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              // rectangle39405Fku (4:30758)
                              width: 50*fem,
                              height: 100*fem,
                              child: Image.asset(
                                'assets/design/images/rectangle-39405-Q9P.png',
                                width: 50*fem,
                                height: 100*fem,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      // group48095460b45 (4:30819)
                      left: 0*fem,
                      top: 117*fem,
                      child: Container(
                        padding: EdgeInsets.fromLTRB(33*fem, 0*fem, 0*fem, 0*fem),
                        width: 414*fem,
                        height: 120*fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              // ping5X (4:30823)
                              margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 11*fem, 0*fem),
                              width: 18*fem,
                              height: 19*fem,
                              child: Image.asset(
                                'assets/design/images/pin-aSd.png',
                                width: 18*fem,
                                height: 19*fem,
                              ),
                            ),
                            Container(
                              // autogroupy9hsQ1X (SrD37GnEa4i9yqiukLy9hs)
                              width: 352*fem,
                              height: 105*fem,
                              child: Stack(
                                children: [
                                  Positioned(
                                    // rectangle39405Lfs (4:30821)
                                    left: 302*fem,
                                    top: 0*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 50*fem,
                                        height: 100*fem,
                                        child: Image.asset(
                                          'assets/design/images/rectangle-39405-y3P.png',
                                          width: 50*fem,
                                          height: 100*fem,
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // sessionroadbranch4Ly (4:30822)
                                    left: 0*fem,
                                    top: 19*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 143*fem,
                                        height: 20*fem,
                                        child: Text(
                                          'Session Road Branch',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.4285714286*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // addressrm310laperalbldgsession (4:30827)
                                    left: 0*fem,
                                    top: 42*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 332*fem,
                                        height: 40*fem,
                                        child: RichText(
                                          text: TextSpan(
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 12*ffem,
                                              fontWeight: FontWeight.w400,
                                              height: 1.6666666667*ffem/fem,
                                              color: Color(0x91000000),
                                            ),
                                            children: [
                                              TextSpan(
                                                text: 'Address: Rm. 310 Laperal Bldg., Session Road, Baguio City\nMobile: ',
                                              ),
                                              TextSpan(
                                                text: '09060518055',
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
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    // openmondaytosaturday8am5pm2ad (4:30828)
                                    left: 0*fem,
                                    top: 85*fem,
                                    child: Align(
                                      child: SizedBox(
                                        width: 217*fem,
                                        height: 20*fem,
                                        child: Text(
                                          'Open Monday to Saturday 8am - 5pm',
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
                    ),
                  ],
                ),
              ),
              Container(
                // group48095461iTT (4:30829)
                padding: EdgeInsets.fromLTRB(33*fem, 0*fem, 0*fem, 0*fem),
                width: double.infinity,
                height: 120*fem,
                decoration: BoxDecoration (
                  color: Color(0xfff6fff7),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      // pinpWV (4:30833)
                      margin: EdgeInsets.fromLTRB(0*fem, 20*fem, 11*fem, 0*fem),
                      width: 18*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/design/images/pin-Bkm.png',
                        width: 18*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // autogroup6bbovpR (SrD41L7pvsDoosXKjR6bbo)
                      margin: EdgeInsets.fromLTRB(0*fem, 19*fem, 87*fem, 15*fem),
                      height: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            // smcityurdanetaTZT (4:30832)
                            'SM City Urdaneta',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.4285714286*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                          SizedBox(
                            height: 3*fem,
                          ),
                          Container(
                            // address3rdfloorsmcityurdanetam (4:30837)
                            constraints: BoxConstraints (
                              maxWidth: 212*fem,
                            ),
                            child: RichText(
                              text: TextSpan(
                                style: SafeGoogleFont (
                                  'Inter',
                                  fontSize: 12*ffem,
                                  fontWeight: FontWeight.w400,
                                  height: 1.6666666667*ffem/fem,
                                  color: Color(0x91000000),
                                ),
                                children: [
                                  TextSpan(
                                    text: 'Address: 3rd Floor, SM City Urdaneta\nMobile: ',
                                  ),
                                  TextSpan(
                                    text: '09566674030',
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
                          ),
                          SizedBox(
                            height: 3*fem,
                          ),
                          Text(
                            // openmondaytosunday10am9pm7Gd (4:30838)
                            'Open Monday to Sunday 10am - 9pm',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 12*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.6666666667*ffem/fem,
                              color: Color(0xff57cc99),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // rectangle39405S41 (4:30831)
                      width: 50*fem,
                      height: 100*fem,
                      child: Image.asset(
                        'assets/design/images/rectangle-39405.png',
                        width: 50*fem,
                        height: 100*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // group48095462AEu (4:30839)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 182*fem),
                width: double.infinity,
                height: 122*fem,
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle39405sv1 (4:30841)
                      left: 364*fem,
                      top: 0*fem,
                      child: Align(
                        child: SizedBox(
                          width: 50*fem,
                          height: 100*fem,
                          child: Image.asset(
                            'assets/design/images/rectangle-39405-3wX.png',
                            width: 50*fem,
                            height: 100*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // bonifacioroadbranchP7f (4:30842)
                      left: 62*fem,
                      top: 19*fem,
                      child: Align(
                        child: SizedBox(
                          width: 153*fem,
                          height: 20*fem,
                          child: Text(
                            'Bonifacio Road Branch',
                            style: SafeGoogleFont (
                              'Inter',
                              fontSize: 14*ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.4285714286*ffem/fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // pint4R (4:30843)
                      left: 33*fem,
                      top: 20*fem,
                      child: Align(
                        child: SizedBox(
                          width: 18*fem,
                          height: 19*fem,
                          child: Image.asset(
                            'assets/design/images/pin-CJ5.png',
                            width: 18*fem,
                            height: 19*fem,
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // address3rdfloor237avenuebygavb (4:30847)
                      left: 62*fem,
                      top: 42*fem,
                      child: Align(
                        child: SizedBox(
                          width: 275*fem,
                          height: 60*fem,
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 12*ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.6666666667*ffem/fem,
                                color: Color(0x91000000),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Address: 3rd Floor, 237 Avenue by GAV Building,\nBonifacio Road, Baguio City\nMobile: ',
                                ),
                                TextSpan(
                                  text: '09664984425',
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
                        ),
                      ),
                    ),
                    Positioned(
                      // openmondaytosunday8am5pmhAH (4:30848)
                      left: 62*fem,
                      top: 102*fem,
                      child: Align(
                        child: SizedBox(
                          width: 208*fem,
                          height: 20*fem,
                          child: Text(
                            'Open Monday to Sunday 8am - 5pm',
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
              Container(
                // group48095457PYu (4:30732)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5*fem, 0*fem),
                width: 333*fem,
                height: 56*fem,
                child: Image.asset(
                  'assets/design/images/group-48095457-2LZ.png',
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