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
        // scanqrcustomerBY5 (4:30439)
        width: double.infinity,
        height: 896*fem,
        child: Container(
          // rewardsvVf (4:30440)
          padding: EdgeInsets.fromLTRB(29*fem, 39.77*fem, 40.14*fem, 27*fem),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // barsstatusbariphonelightp5F (4:30478)
                margin: EdgeInsets.fromLTRB(27.93*fem, 0*fem, 0*fem, 36.23*fem),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // timeTe1 (I4:30478;104:534)
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
                      // cellularconnection913 (I4:30478;104:528)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                      width: 16.44*fem,
                      height: 10.32*fem,
                      child: Image.asset(
                        'assets/design/images/cellular-connection-byK.png',
                        width: 16.44*fem,
                        height: 10.32*fem,
                      ),
                    ),
                    Container(
                      // wifiquT (I4:30478;104:524)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                      width: 14.83*fem,
                      height: 10.64*fem,
                      child: Image.asset(
                        'assets/design/images/wifi-pTs.png',
                        width: 14.83*fem,
                        height: 10.64*fem,
                      ),
                    ),
                    Container(
                      // batteryARw (I4:30478;104:520)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                      width: 23.53*fem,
                      height: 10.97*fem,
                      child: Image.asset(
                        'assets/design/images/battery-myb.png',
                        width: 23.53*fem,
                        height: 10.97*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // autogroupwypxtMw (SrCwZS2W4wWRNbAEbtWyPX)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.86*fem, 42*fem),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // btnback1hT (4:30442)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 115*fem, 0*fem),
                      width: 30*fem,
                      height: 30*fem,
                      child: Image.asset(
                        'assets/design/images/btn-back-3D3.png',
                        width: 30*fem,
                        height: 30*fem,
                      ),
                    ),
                    Container(
                      // scanqr7Vb (4:30479)
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
                      // iconlycurvedoutlineeditsquareR (4:30441)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/design/images/iconly-curved-outline-edit-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // rewardsXJR (4:30454)
                margin: EdgeInsets.fromLTRB(10.14*fem, 0*fem, 0*fem, 16*fem),
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
                // osirisqrRPo (4:30531)
                margin: EdgeInsets.fromLTRB(11.14*fem, 0*fem, 0*fem, 36*fem),
                child: Text(
                  'Osiris QR',
                  textAlign: TextAlign.center,
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
                // scanthisqrcodewhenyouavailofan (4:30530)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 5.86*fem, 33*fem),
                constraints: BoxConstraints (
                  maxWidth: 287*fem,
                ),
                child: Text(
                  'Scan this QR code when you avail of any service to earn a reward.',
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
              Container(
                // image144D4m (4:30529)
                margin: EdgeInsets.fromLTRB(11.14*fem, 0*fem, 0*fem, 86*fem),
                width: 250*fem,
                height: 250*fem,
                child: Image.asset(
                  'assets/design/images/image-144.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // autogroupzu2hXbF (SrCwgWf3BwoSogWU58zu2H)
                margin: EdgeInsets.fromLTRB(26*fem, 0*fem, 23.86*fem, 89*fem),
                width: double.infinity,
                height: 50*fem,
                decoration: BoxDecoration (
                  color: Color(0xff57cc99),
                  borderRadius: BorderRadius.circular(70*fem),
                ),
                child: Center(
                  child: Text(
                    'Download',
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
                // group48095457zUq (4:30470)
                margin: EdgeInsets.fromLTRB(6.14*fem, 0*fem, 0*fem, 0*fem),
                width: 333*fem,
                height: 56*fem,
                child: Image.asset(
                  'assets/design/images/group-48095457.png',
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