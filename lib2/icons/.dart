import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';

class Scene extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 1688;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: Container(
        // 89w (4:17088)
        width: double.infinity,
        height: 552*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // line2m7 (4:17089)
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
              // broken953 (4:17090)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 274*fem,
                  height: 51*fem,
                  child: Text(
                    'Regular | Broken',
                    style: SafeGoogleFont (
                      'Plus Jakarta Display',
                      fontSize: 40*ffem,
                      fontWeight: FontWeight.w500,
                      height: 1.2575*ffem/fem,
                      color: Color(0xff000000),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // autogroupim1jqCm (SrDFSW4pLVb1ryr23eiM1j)
              left: 97*fem,
              top: 278.9997558594*fem,
              child: Container(
                width: 1444*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularbrokenscan577 (4:17281)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                      width: 22*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-scan.png',
                        width: 22*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenactivityNc1 (4:17290)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-activity.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokencalendarVAq (4:17300)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-calendar.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenmessageQHo (4:17312)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-message.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenvideoiJV (4:17571)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-video.png',
                        width: 20*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenplus2KB (4:17326)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-plus.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenchartLqf (4:17334)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-chart.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokengameGDX (4:17342)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-game.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenbagaV7 (4:17351)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-bag.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenbag3tVo (4:17358)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-bag-3.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenticketstarb (4:17362)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-ticket-star.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenmorecircleu (4:17398)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-more-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenmoresquarep (4:17376)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-more-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokendiscountvqo (4:17413)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-discount.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenbuy3Qd (4:17368)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-buy.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokeninfocircley (4:17406)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-info-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokeninfosquareJ (4:17384)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-info-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokendangerpJu (4:17423)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.17*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18.17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-danger.png',
                        width: 20*fem,
                        height: 18.17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenclosesquare (4:17391)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-close-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenticksquaree (4:17430)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-tick-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowrightc (4:17091)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-right-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowrights (4:17097)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-right-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowrightm (4:17094)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42.5*fem, 0*fem),
                      width: 18*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-right.png',
                        width: 18*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowright2 (4:17100)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42.5*fem, 0*fem),
                      width: 9*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-right-2.png',
                        width: 9*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowright3 (4:17103)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 18*fem,
                      height: 11*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-right-3.png',
                        width: 18*fem,
                        height: 11*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupv6x3VrH (SrDGApBeVc7oGi3m24V6X3)
              left: 98*fem,
              top: 334.9997558594*fem,
              child: Container(
                width: 1439.5*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularbrokendiscoveryZL (4:17440)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-discovery.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenlocation4nu (4:17455)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-location.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokendocumentP4V (4:17468)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-document.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokensettingJBT (4:17518)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-setting.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokentimesquaren (4:17476)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-time-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokentimecirclee (4:17559)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-time-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenvolumeupvMF (4:17528)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 22*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-volume-up.png',
                        width: 22*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenvolumedownB (4:17482)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-volume-down.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenvolumeoff5t (4:17565)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 19*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-volume-off.png',
                        width: 19*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenstarzEd (4:17436)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 19.99*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-star.png',
                        width: 19.99*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenticketHzR (4:17536)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-ticket.png',
                        width: 20*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokencamera1Qd (4:17488)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-camera.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenprofileWsB (4:17318)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 16*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-profile.png',
                        width: 16*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenadduserE2V (4:17542)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-add-user.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbroken2user8tZ (4:17495)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-2-user.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbroken3userec1 (4:17583)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.5*fem, 0*fem),
                      width: 22*fem,
                      height: 17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-3-user.png',
                        width: 22*fem,
                        height: 17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenloginN2D (4:17575)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-login.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenlogoutUqw (4:17551)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-logout.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokendownloadPi1 (4:17503)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-download.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenuploadJa5 (4:17593)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116.5*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-upload.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowupcirc (4:17106)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-up-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowupsqua (4:17112)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-up-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowupRYD (4:17109)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40.5*fem, 0*fem),
                      width: 15*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-up.png',
                        width: 15*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowup2joo (4:17115)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42.5*fem, 0*fem),
                      width: 16*fem,
                      height: 9*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-up-2.png',
                        width: 16*fem,
                        height: 9*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowup3qrq (4:17118)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 11*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-up-3.png',
                        width: 11*fem,
                        height: 18*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupeh9tAeD (SrDGpiGAcQ3QEZ9i4deh9T)
              left: 100*fem,
              top: 390.9997558594*fem,
              child: Container(
                width: 1441*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularbrokenvoice1uj (4:17446)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                      width: 16*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-voice.png',
                        width: 16*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenvoice38jT (4:17461)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 16*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-voice-3.png',
                        width: 16*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokendeleteTFw (4:17511)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-delete.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokeneditMs7 (4:17601)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-edit.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokeneditsquareH (4:17607)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-edit-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenplayQKb (4:17616)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-play.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenshielddonei (4:17624)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-shield-done.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenshieldfailE (4:17676)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-shield-fail.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenshowMe9 (4:17645)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-show.png',
                        width: 20*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenhidefeq (4:17694)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 20*fem,
                      height: 17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-hide.png',
                        width: 20*fem,
                        height: 17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenfilterNZF (4:17630)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.05*fem, 37*fem, 0*fem),
                      width: 19*fem,
                      height: 18.05*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-filter.png',
                        width: 19*fem,
                        height: 18.05*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenfilter3tGh (4:17682)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-filter-3.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenimageCYH (4:17657)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.04*fem, 0.05*fem),
                      width: 19.96*fem,
                      height: 19.95*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-image.png',
                        width: 19.96*fem,
                        height: 19.95*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenimage37QM (4:17711)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-image-3.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokencallq5T (4:17651)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-call.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokencallingkTK (4:17703)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-calling.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokencallmissedU (4:17638)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-call-missed.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokencallsilentB (4:17688)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-call-silent.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenlockhWy (4:17273)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-lock.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenunlockQwB (4:17719)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-unlock.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowleftci (4:17121)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-left-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowleftsq (4:17127)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-left-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowleftPR (4:17124)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42.5*fem, 0*fem),
                      width: 18*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-left.png',
                        width: 18*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowleft2J (4:17130)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42.5*fem, 0*fem),
                      width: 9*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-left-2.png',
                        width: 9*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowleft3p (4:17133)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 18*fem,
                      height: 11*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-left-3.png',
                        width: 18*fem,
                        height: 11*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroup8skxjtu (SrDEbMp2ukcFoQ8XNd8sKX)
              left: 98*fem,
              top: 222.9997558594*fem,
              child: Container(
                width: 1439.5*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularbrokensearchyoF (4:17152)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-search.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenfolderJ4q (4:17156)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-folder.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenwalletCg1 (4:17160)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-wallet.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokengraph7HB (4:17166)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-graph.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenbookmark2f3 (4:17174)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.5*fem, 0*fem),
                      width: 16*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-bookmark.png',
                        width: 16*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokencategoryMSR (4:17178)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 19*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-category.png',
                        width: 19*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenhomes9s (4:17190)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.21*fem, 0.15*fem),
                      width: 18.79*fem,
                      height: 19.84*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-home.png',
                        width: 18.79*fem,
                        height: 19.84*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokennotificatio (4:17196)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-notification.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenchattam (4:17202)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-chat.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenheartQJD (4:17210)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-heart.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenpaperKRB (4:17216)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-paper.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenpaperplusq8 (4:17223)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-paper-plus.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenpapernegati (4:17249)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-paper-negative.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenpaperfail4G (4:17229)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-paper-fail.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenpaperdownlo (4:17255)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-paper-download.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenpaperupload (4:17235)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-paper-upload.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokensendCG1 (4:17267)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-send.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenpassword785 (4:17261)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-password.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenswapR8m (4:17241)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.55*fem, 0*fem),
                      width: 18.95*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-swap.png',
                        width: 18.95*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenworkvrD (4:17666)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116.01*fem, 0.27*fem),
                      width: 19.99*fem,
                      height: 19.73*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-work.png',
                        width: 19.99*fem,
                        height: 19.73*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowdownci (4:17136)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-down-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowdownsq (4:17142)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-down-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowdownr7 (4:17139)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41*fem, 0*fem),
                      width: 15*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-down.png',
                        width: 15*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowdown2k (4:17145)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42.5*fem, 0*fem),
                      width: 16*fem,
                      height: 9*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-down-2.png',
                        width: 16*fem,
                        height: 9*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbrokenarrowdown3Q (4:17148)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 11*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-broken-arrow-down-3.png',
                        width: 11*fem,
                        height: 18*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // lineiJD (4:17151)
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