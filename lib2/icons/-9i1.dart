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
        // gNm (4:21656)
        width: double.infinity,
        height: 552*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // lineysf (4:21657)
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
              // bulkV5K (4:21658)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 229*fem,
                  height: 51*fem,
                  child: Text(
                    'Regular | Bulk',
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
              // autogroup3gavm2q (SrDpJ99soHADYZv4MS3gaV)
              left: 97*fem,
              top: 278.9995727539*fem,
              child: Container(
                width: 1443.42*fem,
                height: 20.1*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularbulkscanoVK (4:22111)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0.1*fem),
                      width: 22*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-scan-J7s.png',
                        width: 22*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkactivityu2Z (4:22204)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-activity.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkcalendar15b (4:22168)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.1*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-calendar.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkmessage7eR (4:22224)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-message.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkvideopHw (4:21975)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.9*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-video.png',
                        width: 20*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkplusiu7 (4:22158)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-plus.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkchart2uo (4:22119)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-chart.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkgameYNM (4:22142)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-game.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkbagfC5 (4:22134)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.1*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-bag.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkbag3Aed (4:22041)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.1*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-bag-3.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkticketstar5mb (4:22046)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-ticket-star.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkmorecircleQ3B (4:22051)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-more-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkmoresquareiJm (4:22059)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-more-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkdiscountcuw (4:22066)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-discount.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkbuywBX (4:22073)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 35.98*fem, 0*fem),
                      width: 20.02*fem,
                      height: 19.6*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-buy.png',
                        width: 20.02*fem,
                        height: 19.6*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkinfocircleT9s (4:22082)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-info-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkinfosquarexsK (4:22088)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-info-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkdangerU4y (4:22094)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.07*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18.17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-danger.png',
                        width: 20*fem,
                        height: 18.17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkclosesquarexk (4:22101)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-close-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkticksquareUUH (4:22106)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-tick-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowrightcir (4:21659)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-right-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowrightsqu (4:21665)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.1*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-right-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowrightoey (4:21662)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0.1*fem),
                      width: 18*fem,
                      height: 12*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-right.png',
                        width: 18*fem,
                        height: 12*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowright2X5 (4:21668)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0.1*fem),
                      width: 10*fem,
                      height: 12*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-right-2.png',
                        width: 10*fem,
                        height: 12*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowright3EE (4:21671)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.01*fem, 0*fem, 0*fem),
                      width: 17.42*fem,
                      height: 10.9*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-right-3.png',
                        width: 17.42*fem,
                        height: 10.9*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupkdcmLHX (SrDq3sQ1nC9c3KBr26KDcM)
              left: 97.9998779297*fem,
              top: 334.9996948242*fem,
              child: Container(
                width: 1439.5*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularbulkdiscoveryahf (4:21909)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-discovery.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulklocationuE9 (4:22182)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                      width: 14*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-location.png',
                        width: 14*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkdocumentDVj (4:21948)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-document.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulksettingLKT (4:21732)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-setting.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulktimesquare3zZ (4:22194)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-time-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulktimecircleAZP (4:22199)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-time-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkvolumeupUpy (4:22023)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 22*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-volume-up.png',
                        width: 22*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkvolumedownQCq (4:22029)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-volume-down.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkvolumeoffXHT (4:22034)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 36*fem, 0*fem),
                      width: 19*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-volume-off.png',
                        width: 19*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkstarqow (4:21956)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-star.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkticketyQM (4:21961)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-ticket.png',
                        width: 20*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkcamerahbF (4:21966)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-camera.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkprofileDZb (4:22189)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.01*fem, 0*fem),
                      width: 15.99*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-profile.png',
                        width: 15.99*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkadduserwEh (4:21980)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-add-user.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulk2user4KK (4:21986)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-2-user.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulk3userBPw (4:21993)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.5*fem, 0*fem),
                      width: 22*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-3-user.png',
                        width: 22*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkloginWBK (4:21874)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-login.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulklogout29f (4:21884)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-logout.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkdownloadwXX (4:21879)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-download.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkuploadFo7 (4:21889)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-upload.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowupcircle (4:21674)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-up-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowupsquare (4:21680)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-up-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowupmey (4:21677)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0*fem),
                      width: 12*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-up.png',
                        width: 12*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowup2si1 (4:21683)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.6*fem, 0*fem),
                      width: 12*fem,
                      height: 10*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-up-2.png',
                        width: 12*fem,
                        height: 10*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowup3npy (4:21686)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.58*fem, 0*fem, 0*fem),
                      width: 10.9*fem,
                      height: 17.42*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-up-3.png',
                        width: 10.9*fem,
                        height: 17.42*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogrouphyrf6qf (SrDqpbcVAcXBf1oYmHHYRf)
              left: 99.5*fem,
              top: 390.9998779297*fem,
              child: Container(
                width: 1441.5*fem,
                height: 20.5*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularbulkvoicek9X (4:21914)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-voice.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkvoice3G7s (4:21919)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.5*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-voice-3.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkdeleteAyw (4:21924)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0.5*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-delete.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkedittf3 (4:21775)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.5*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-edit.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkeditsquareDhK (4:21781)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-edit-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkplaykBT (4:21786)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-play.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkshielddone4T3 (4:21791)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-shield-done.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkshieldfailBGm (4:21796)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-shield-fail.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkshow6ed (4:21801)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-show.png',
                        width: 20*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkhidecss (4:21808)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-hide.png',
                        width: 20*fem,
                        height: 17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkfilter9N1 (4:21817)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.72*fem),
                      width: 20*fem,
                      height: 17.78*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-filter.png',
                        width: 20*fem,
                        height: 17.78*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkfilter24Uy (4:21845)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.5*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-filter-2.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkimagenA5 (4:21824)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-image.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkimage3uEh (4:21831)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-image-3.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkcall2KK (4:21850)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.5*fem),
                      width: 19*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-call.png',
                        width: 19*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkcallingM6h (4:21854)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-calling.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkcallmissedGDf (4:21862)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-call-missed.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkcallsilentb13 (4:21867)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.36*fem, 37.88*fem, 0*fem),
                      width: 19.62*fem,
                      height: 20.14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-call-silent.png',
                        width: 19.62*fem,
                        height: 20.14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulklockVs7 (4:22009)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-lock.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkunlockdCd (4:22016)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117.5*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-unlock.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowleftcirc (4:21689)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-left-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowleftsqua (4:21695)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-left-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowleftZkV (4:21692)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0.5*fem),
                      width: 18*fem,
                      height: 12*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-left.png',
                        width: 18*fem,
                        height: 12*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowleft2HAh (4:21698)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42.58*fem, 0.5*fem),
                      width: 10*fem,
                      height: 12*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-left-2.png',
                        width: 10*fem,
                        height: 12*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowleft3bSH (4:21701)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.6*fem),
                      width: 17.42*fem,
                      height: 10.9*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-left-3.png',
                        width: 17.42*fem,
                        height: 10.9*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogrouphkvyuC5 (SrDnvmGUMxrf784dZthKvy)
              left: 98*fem,
              top: 222.999786377*fem,
              child: Container(
                width: 1439.4*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularbulksearch9s7 (4:21727)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-search.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkfolderfaZ (4:21720)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-folder.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkwalletyr9 (4:22216)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-wallet.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkgraphhGM (4:22163)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-graph-qGM.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkbookmark1Xw (4:21941)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 16*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-bookmark.png',
                        width: 16*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkcategoryvuo (4:22126)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-category.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkhomeT93 (4:21937)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-home.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulknotificationX (4:22211)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-notification.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkchatpdo (4:21929)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.03*fem),
                      width: 20*fem,
                      height: 19.97*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-chat.png',
                        width: 20*fem,
                        height: 19.97*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkheartXYD (4:22152)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 37.5*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-heart.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkpaperecq (4:21743)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-paper.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkpaperplusaFb (4:21737)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-paper-plus.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkpapernegative (4:21769)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-paper-negative.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkpaperfailDJZ (4:21751)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-paper-fail.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkpaperdownload (4:21757)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-paper-download.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkpaperuploadfA (4:21763)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-paper-upload.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulksendmzH (4:21894)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.01*fem, 0.13*fem),
                      width: 19.99*fem,
                      height: 19.87*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-send.png',
                        width: 19.99*fem,
                        height: 19.87*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkpasswordCZo (4:21902)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-password.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkswapKPX (4:22002)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-swap.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkworkSDF (4:21837)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116.01*fem, 0.2*fem),
                      width: 19.99*fem,
                      height: 19.8*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-work.png',
                        width: 19.99*fem,
                        height: 19.8*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowdowncirc (4:21704)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-down-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowdownsqua (4:21710)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-down-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowdownxL1 (4:21707)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0*fem),
                      width: 12*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-down.png',
                        width: 12*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowdown23sF (4:21713)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.5*fem, 0*fem),
                      width: 12*fem,
                      height: 10*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-down-2.png',
                        width: 12*fem,
                        height: 10*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbulkarrowdown3AS5 (4:21716)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.58*fem),
                      width: 10.9*fem,
                      height: 17.42*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bulk-arrow-down-3.png',
                        width: 10.9*fem,
                        height: 17.42*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // linesbP (4:21719)
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