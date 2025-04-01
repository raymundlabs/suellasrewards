import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:myapp/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // dbw (4:20600)
        width: double.infinity,
        height: 552*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // lineLWM (4:20601)
              left: 96*fem,
              top: 165*fem,
              child: Align(
                child: SizedBox(
                  width: 1448*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffe6e9ee),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // lightborder39s (4:20602)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 386*fem,
                  height: 51*fem,
                  child: RichText(
                    text: TextSpan(
                      style: SafeGoogleFont (
                        'Plus Jakarta Display',
                        fontSize: 40*ffem,
                        fontWeight: FontWeight.w500,
                        height: 1.2575*ffem/fem,
                        color: Color(0xff000000),
                      ),
                      children: [
                        TextSpan(
                          text: 'Regular | Light ',
                        ),
                        TextSpan(
                          text: '(Border)',
                          style: SafeGoogleFont (
                            'Plus Jakarta Display',
                            fontSize: 40*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroup8cdpSrD (SrDgxbsvzr1bFKUgrZ8cDP)
              left: 97.5*fem,
              top: 279*fem,
              child: Container(
                width: 1443.14*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularlightscan58V (4:21032)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.28*fem, 0.04*fem),
                      width: 21*fem,
                      height: 17.26*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-scan.png',
                        width: 21*fem,
                        height: 17.26*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightactivityMrh (4:21040)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.08*fem, 0.24*fem),
                      width: 19.14*fem,
                      height: 19.2*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-activity.png',
                        width: 19.14*fem,
                        height: 19.2*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightcalendarfMb (4:21046)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-calendar.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightmessagemfX (4:21059)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.3*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-message.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightvideog1o (4:20765)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.37*fem, 0*fem),
                      width: 19.33*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-video.png',
                        width: 19.33*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightplusyWh (4:21069)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-plus.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightchartHnH (4:21075)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-chart.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightgameokd (4:21082)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.3*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-game.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightbagXRj (4:21091)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.61*fem, 0.22*fem),
                      width: 18.09*fem,
                      height: 19.22*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-bag.png',
                        width: 18.09*fem,
                        height: 19.22*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightbag32NV (4:21102)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.75*fem, 0.5*fem),
                      width: 18*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-bag-3.png',
                        width: 18*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightticketstarXa (4:20726)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.17*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 16.67*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-ticket-star.png',
                        width: 18.5*fem,
                        height: 16.67*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightmorecircle3H (4:20820)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-more-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightmoresquarex9 (4:20758)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-more-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightdiscountTs7 (4:20852)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-discount.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightbuyB2R (4:20789)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.54*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.04*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-buy.png',
                        width: 18.5*fem,
                        height: 18.04*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightinfosquareHb (4:20915)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-info-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightdangercircle (4:20885)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-danger-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightdangertriang (4:20977)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.19*fem, 37.49*fem, 0*fem),
                      width: 18.51*fem,
                      height: 16.69*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-danger-triangle.png',
                        width: 18.51*fem,
                        height: 16.69*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightclosesquared (4:20945)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-close-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightticksquarekd (4:21007)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-tick-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowrightci (4:20603)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-right-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowrightsq (4:20609)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-right-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowrighttc (4:20606)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.75*fem, 0.55*fem),
                      width: 15*fem,
                      height: 12.05*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-right.png',
                        width: 15*fem,
                        height: 12.05*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowright2Q (4:20612)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.25*fem, 0*fem),
                      width: 7*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-right-2.png',
                        width: 7*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowright3W (4:20615)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                      width: 16.89*fem,
                      height: 10*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-right-3.png',
                        width: 16.89*fem,
                        height: 10*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupk7c5dDB (SrDhmfMrL7cHUaZXSyk7C5)
              left: 98*fem,
              top: 335*fem,
              child: Container(
                width: 1438.75*fem,
                height: 19.5*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularlightdiscoverygBT (4:21107)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.28*fem, 0.28*fem),
                      width: 19.22*fem,
                      height: 19.22*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-discovery.png',
                        width: 19.22*fem,
                        height: 19.22*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightlocationygM (4:21117)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 40.25*fem, 0*fem),
                      width: 15*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-location.png',
                        width: 15*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightdocumenttYR (4:21127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 38.86*fem, 0*fem),
                      width: 16.66*fem,
                      height: 18.41*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-document.png',
                        width: 16.66*fem,
                        height: 18.41*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightsetting17F (4:21140)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 37.69*fem, 0*fem),
                      width: 17.79*fem,
                      height: 19.22*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-setting.png',
                        width: 17.79*fem,
                        height: 19.22*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlighttimesquarevV (4:21112)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-time-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlighttimecircleST (4:21122)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37.25*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-time-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightvolumeupxRo (4:21134)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 38.5*fem, 0*fem),
                      width: 19*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-volume-up.png',
                        width: 19*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightvolumedownTt (4:21145)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 40.44*fem, 0*fem),
                      width: 15.56*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-volume-down.png',
                        width: 15.56*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightvolumeoffme9 (4:21150)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 39*fem, 0*fem),
                      width: 16*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-volume-off.png',
                        width: 16*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightstargFK (4:21098)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37*fem, 0*fem),
                      width: 18*fem,
                      height: 17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-star.png',
                        width: 18*fem,
                        height: 17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightticketbNH (4:20731)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 36.75*fem, 0*fem),
                      width: 20*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-ticket.png',
                        width: 20*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightcameraWVF (4:20827)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.32*fem, 39.56*fem, 0*fem),
                      width: 18.5*fem,
                      height: 16.32*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-camera.png',
                        width: 18.5*fem,
                        height: 16.32*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightprofile2Ch (4:21064)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.53*fem, 39.6*fem, 0*fem),
                      width: 14.34*fem,
                      height: 18.41*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-profile.png',
                        width: 14.34*fem,
                        height: 18.41*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightadduserjso (4:20859)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.3*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.3*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-add-user.png',
                        width: 18.5*fem,
                        height: 18.3*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlight2userTYu (4:20796)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.56*fem, 36.52*fem, 0*fem),
                      width: 18.48*fem,
                      height: 17.56*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-2-user.png',
                        width: 18.48*fem,
                        height: 17.56*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlight3useraNd (4:20891)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.29*fem, 37.75*fem, 0*fem),
                      width: 20.27*fem,
                      height: 15.29*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-3-user.png',
                        width: 20.27*fem,
                        height: 15.29*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightlogin5qB (4:20921)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.54*fem, 38.02*fem, 0*fem),
                      width: 16.98*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-login.png',
                        width: 16.98*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightlogoutQ6m (4:20983)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.54*fem, 37.06*fem, 0*fem),
                      width: 19.04*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-logout.png',
                        width: 19.04*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightdownloadidF (4:20951)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.27*fem, 37.4*fem, 0*fem),
                      width: 18.5*fem,
                      height: 16.98*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-download.png',
                        width: 18.5*fem,
                        height: 16.98*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightuploaddVK (4:21012)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117.48*fem, 0.08*fem),
                      width: 18.5*fem,
                      height: 19.04*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-upload.png',
                        width: 18.5*fem,
                        height: 19.04*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowupcircl (4:20618)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-up-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowupsquar (4:20624)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 40.45*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-up-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowupYVo (4:20621)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43.25*fem, 0*fem),
                      width: 12.05*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-up.png',
                        width: 12.05*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowup24DF (4:20627)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 43.75*fem, 0*fem),
                      width: 14*fem,
                      height: 7*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-up-2.png',
                        width: 14*fem,
                        height: 7*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowup3NDw (4:20630)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.11*fem, 0*fem, 0*fem),
                      width: 10*fem,
                      height: 16.89*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-up-3.png',
                        width: 10*fem,
                        height: 16.89*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupxtymHLu (SrDiVteVCmXPHtpSVqxTYm)
              left: 100*fem,
              top: 391*fem,
              child: Container(
                width: 1440.25*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularlightvoicejTo (4:20746)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                      width: 16*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-voice.png',
                        width: 16*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightvoice3EvM (4:20837)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.75*fem, 0*fem),
                      width: 16*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-voice-3.png',
                        width: 16*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightdeletekth (4:20770)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.29*fem, 0*fem),
                      width: 16.96*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-delete.png',
                        width: 16.96*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlighteditU41 (4:20872)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.75*fem, 0*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-edit.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlighteditsquarezH (4:20807)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.37*fem, 36.91*fem, 0*fem),
                      width: 18.84*fem,
                      height: 18.87*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-edit-square.png',
                        width: 18.84*fem,
                        height: 18.87*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightplayVzh (4:20906)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.75*fem, 0*fem),
                      width: 19*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-play.png',
                        width: 19*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightshielddoneRd (4:20933)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.36*fem, 40.53*fem, 0*fem),
                      width: 15.47*fem,
                      height: 18.86*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-shield-done.png',
                        width: 15.47*fem,
                        height: 18.86*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightshieldfailXg (4:20995)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.36*fem, 39.03*fem, 0*fem),
                      width: 15.47*fem,
                      height: 18.86*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-shield-fail.png',
                        width: 15.47*fem,
                        height: 18.86*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightshowF6h (4:20965)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.11*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 14.6*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-show.png',
                        width: 18.5*fem,
                        height: 14.6*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlighthideFku (4:21024)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.27*fem, 38.75*fem, 0*fem),
                      width: 18.5*fem,
                      height: 15.77*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-hide.png',
                        width: 18.5*fem,
                        height: 15.77*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightfilterxvD (4:20739)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0.6*fem),
                      width: 16*fem,
                      height: 14.4*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-filter.png',
                        width: 16*fem,
                        height: 14.4*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightfilter3tJ5 (4:20833)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.75*fem, 0*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-filter-3.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightimagecUy (4:20776)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.54*fem, 0.05*fem),
                      width: 18.46*fem,
                      height: 18.45*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-image.png',
                        width: 18.46*fem,
                        height: 18.45*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightimage3K8V (4:20866)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.29*fem, 0.05*fem),
                      width: 18.46*fem,
                      height: 18.45*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-image-3.png',
                        width: 18.46*fem,
                        height: 18.45*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightcallRSR (4:20803)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 19*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-call.png',
                        width: 19*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightcallingM5B (4:20900)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.61*fem, 0*fem),
                      width: 19.39*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-calling.png',
                        width: 19.39*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightcallmissedfb (4:20927)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.29*fem, 0*fem),
                      width: 19.31*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-call-missed.png',
                        width: 19.31*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightcallsilentaT (4:20989)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.3*fem, 38.75*fem, 0*fem),
                      width: 18.9*fem,
                      height: 19.1*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-call-silent.png',
                        width: 18.9*fem,
                        height: 19.1*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightlockgWm (4:21001)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41.02*fem, 0*fem),
                      width: 15.23*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-lock.png',
                        width: 15.23*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightunlockobP (4:21018)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 119.03*fem, 0.5*fem),
                      width: 15.22*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-unlock.png',
                        width: 15.22*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowleftcir (4:20633)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-left-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowleftsqu (4:20639)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-left-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowleftwb7 (4:20636)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.55*fem, 45.25*fem, 0*fem),
                      width: 15*fem,
                      height: 12.05*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-left.png',
                        width: 15*fem,
                        height: 12.05*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowleft2rC (4:20642)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43.86*fem, 0*fem),
                      width: 7*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-left-2.png',
                        width: 7*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowleft3y2 (4:20645)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 0*fem, 0*fem),
                      width: 16.89*fem,
                      height: 10*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-left-3.png',
                        width: 16.89*fem,
                        height: 10*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupmza5gBK (SrDg2DGthCGpojD92FMzA5)
              left: 98.7780761719*fem,
              top: 223*fem,
              child: Container(
                width: 1438.47*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularlightsearchLFs (4:20664)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.78*fem, 36.71*fem, 0*fem),
                      width: 18.76*fem,
                      height: 19.22*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-search.png',
                        width: 18.76*fem,
                        height: 19.22*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightfolderSph (4:20669)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.05*fem, 0.33*fem),
                      width: 19.2*fem,
                      height: 19.17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-folder.png',
                        width: 19.2*fem,
                        height: 19.17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightwalletxHF (4:20674)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.66*fem, 0.33*fem),
                      width: 19.14*fem,
                      height: 17.67*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-wallet.png',
                        width: 19.14*fem,
                        height: 17.67*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightgraphGYq (4:20681)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.04*fem, 38.51*fem, 0*fem),
                      width: 19.39*fem,
                      height: 19.84*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-graph.png',
                        width: 19.39*fem,
                        height: 19.84*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightbookmarkaZX (4:20686)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.26*fem, 0.06*fem),
                      width: 15.54*fem,
                      height: 19.34*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-bookmark.png',
                        width: 15.54*fem,
                        height: 19.34*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightcategoryVRb (4:20691)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-category.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlighthomecFK (4:20698)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-home.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightnotification (4:20702)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-notification.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightchatFp5 (4:20707)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-chat.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightheartP9b (4:20714)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.75*fem, 0*fem),
                      width: 19*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-heart.png',
                        width: 19*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightpaperhvy (4:20719)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.45*fem, 0.13*fem),
                      width: 15.55*fem,
                      height: 18.37*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-paper.png',
                        width: 15.55*fem,
                        height: 18.37*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightpaperpluspVo (4:20813)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.45*fem, 0.13*fem),
                      width: 15.55*fem,
                      height: 18.37*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-paper-plus.png',
                        width: 15.55*fem,
                        height: 18.37*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightpapernegativ (4:20752)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.45*fem, 0.13*fem),
                      width: 15.55*fem,
                      height: 18.37*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-paper-negative.png',
                        width: 15.55*fem,
                        height: 18.37*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightpaperfailqvh (4:20845)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.45*fem, 0.13*fem),
                      width: 15.55*fem,
                      height: 18.37*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-paper-fail.png',
                        width: 15.55*fem,
                        height: 18.37*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightpaperdownloa (4:20782)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.45*fem, 0.13*fem),
                      width: 15.55*fem,
                      height: 18.37*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-paper-download.png',
                        width: 15.55*fem,
                        height: 18.37*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightpaperupload4 (4:20878)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.2*fem, 0.13*fem),
                      width: 15.55*fem,
                      height: 18.37*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-paper-upload.png',
                        width: 15.55*fem,
                        height: 18.37*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightsendB7P (4:20911)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.75*fem, 0*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-send.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightpasswordgZw (4:20970)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.58*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-password.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightswapoPf (4:20938)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.83*fem, 0*fem),
                      width: 18.08*fem,
                      height: 16.33*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-swap.png',
                        width: 18.08*fem,
                        height: 16.33*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightworkuxV (4:20957)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117.51*fem, 0.26*fem),
                      width: 18.49*fem,
                      height: 18.24*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-work.png',
                        width: 18.49*fem,
                        height: 18.24*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowdowncir (4:20648)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-down-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowdownsqu (4:20654)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-down-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowdownqDs (4:20651)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 42.7*fem, 0*fem),
                      width: 12.05*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-down.png',
                        width: 12.05*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowdown2Lg (4:20657)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.25*fem, 0*fem),
                      width: 14*fem,
                      height: 7*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-down-2.png',
                        width: 14*fem,
                        height: 7*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularlightarrowdown3TW (4:20660)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.39*fem, 0*fem, 0*fem),
                      width: 10*fem,
                      height: 16.89*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-light-arrow-down-3.png',
                        width: 10*fem,
                        height: 16.89*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // lineNd7 (4:20663)
              left: 1240*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 0*fem,
                  height: 1*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffe6e9ee),
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