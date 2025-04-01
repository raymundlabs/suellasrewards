import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1323;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // adddone71j (172:773)
        padding: EdgeInsets.fromLTRB(909*fem, 0*fem, 0*fem, 0*fem),
        width: double.infinity,
        height: 896*fem,
        child: Container(
          // alldoneRHK (153:581)
          padding: EdgeInsets.fromLTRB(45*fem, 39.77*fem, 40.14*fem, 207*fem),
          width: double.infinity,
          height: double.infinity,
          decoration: BoxDecoration (
            color: Color(0xffffffff),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                // barsstatusbariphonelight6eM (153:582)
                margin: EdgeInsets.fromLTRB(11.93*fem, 0*fem, 0*fem, 20.23*fem),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // time1FX (I153:582;104:534)
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
                      // cellularconnectionKQd (I153:582;104:528)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 4.84*fem, 0*fem),
                      width: 16.44*fem,
                      height: 10.32*fem,
                      child: Image.asset(
                        'assets/design/images/cellular-connection-4UZ.png',
                        width: 16.44*fem,
                        height: 10.32*fem,
                      ),
                    ),
                    Container(
                      // wifi249 (I153:582;104:524)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.64*fem, 4.84*fem, 0*fem),
                      width: 14.83*fem,
                      height: 10.64*fem,
                      child: Image.asset(
                        'assets/design/images/wifi-ts3.png',
                        width: 14.83*fem,
                        height: 10.64*fem,
                      ),
                    ),
                    Container(
                      // batteryKZ3 (I153:582;104:520)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.96*fem, 0*fem, 0*fem),
                      width: 23.53*fem,
                      height: 10.97*fem,
                      child: Image.asset(
                        'assets/design/images/battery-nru.png',
                        width: 23.53*fem,
                        height: 10.97*fem,
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                // suellaslogoblack1oj7 (4:16599)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.86*fem, 47*fem),
                width: 128*fem,
                height: 50*fem,
                child: Image.asset(
                  'assets/design/images/suellas-logo-black-1.png',
                  fit: BoxFit.cover,
                ),
              ),
              Container(
                // alldone6TK (153:591)
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
                // autogroupczum42m (TkpiHLEuUCxYtRXKjzczum)
                margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4.86*fem, 119.67*fem),
                width: 166.67*fem,
                height: 166.67*fem,
                child: Image.asset(
                  'assets/design/images/auto-group-czum.png',
                  width: 166.67*fem,
                  height: 166.67*fem,
                ),
              ),
              Container(
                // autogroupaygp8oK (TkpiNFGPDHFptnJ5D6aYgP)
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
      ),
          );
  }
}