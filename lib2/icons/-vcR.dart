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
        // H1b (4:22652)
        width: double.infinity,
        height: 552*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // lineP4d (4:22653)
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
              // bold5y3 (4:22654)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 232*fem,
                  height: 51*fem,
                  child: Text(
                    'Regular | Bold',
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
              // autogroupqcgyZdK (SrDwDSdD2BHCBgGzCyQcgy)
              left: 97*fem,
              top: 278.999206543*fem,
              child: Container(
                width: 1444*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularboldscanpJM (4:23167)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0*fem),
                      width: 22*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-scan.png',
                        width: 22*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldactivityKW1 (4:23252)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-activity.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldcalendar2fK (4:23227)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-calendar.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldmessagewXP (4:23275)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-message.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldvideoegh (4:23067)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-video.png',
                        width: 20*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldplusAf3 (4:23215)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-plus.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldchartspM (4:23175)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-chart.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldgamebkM (4:23200)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-game.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldbagWMX (4:23191)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-bag.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldbag2Qxh (4:22965)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-bag-2.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldticketstar881 (4:22998)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-ticket-star.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldmorecircle3Ey (4:22783)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-more-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldmoresquarekv5 (4:22792)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-more-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbolddiscountGtR (4:22801)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-discount.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldbuybA1 (4:22810)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-buy.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldinfocircle7PF (4:22845)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-info-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldinfosquare2m7 (4:22859)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-info-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbolddangerM2h (4:22852)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-danger.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldclosesquareGQ (4:22866)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-close-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldticksquarezbT (4:22872)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-tick-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowrightcir (4:22655)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-right-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowrightsqu (4:22661)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-right-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowrighturq (4:22658)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                      width: 18*fem,
                      height: 12*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-right.png',
                        width: 18*fem,
                        height: 12*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowright22A (4:22664)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0*fem),
                      width: 10*fem,
                      height: 12*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-right-2.png',
                        width: 10*fem,
                        height: 12*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowright3jq (4:22667)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 18*fem,
                      height: 11*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-right-3.png',
                        width: 18*fem,
                        height: 11*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupmmahrfb (SrDwyRMvrU7dTfPFeGMMAh)
              left: 97.9998779297*fem,
              top: 335*fem,
              child: Container(
                width: 1439.5*fem,
                height: 20.78*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularbolddiscoveryiSu (4:23129)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.78*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-discovery.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldlocationRs7 (4:23240)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.5*fem, 0.78*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-location.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbolddocumentk8h (4:23154)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.78*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-document.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldsettingfFf (4:22728)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.78*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-setting.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldtimesquareyXF (4:22878)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.78*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-time-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldtimecircleteD (4:22892)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0.78*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-time-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldvolumeupp25 (4:22898)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.78*fem),
                      width: 22*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-volume-up.png',
                        width: 22*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldvolumedown8YZ (4:22905)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0.78*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-volume-down.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldvolumeoffFdB (4:22911)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.22*fem, 36*fem, 0*fem),
                      width: 19*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-volume-off.png',
                        width: 19*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldstarB13 (4:23163)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.78*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-star.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldticket6Nu (4:23004)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.78*fem),
                      width: 20*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-ticket.png',
                        width: 20*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldcameraRAH (4:22775)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0.78*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-camera.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldprofile8aV (4:23246)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0.78*fem),
                      width: 16*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-profile-785.png',
                        width: 16*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldadduser3xM (4:22819)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.78*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-add-user.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbold2usermtM (4:22827)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35*fem, 0.78*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-2-user.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbold3userswP (4:22835)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.5*fem, 0.78*fem),
                      width: 22*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-3-user.png',
                        width: 22*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldloginQAd (4:23082)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.78*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-login.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldlogoutvPs (4:23092)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.22*fem, 0.78*fem),
                      width: 20.78*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-logout.png',
                        width: 20.78*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbolddownloadqWq (4:23088)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.78*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-download.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbolduploadYw3 (4:23098)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116*fem, 0*fem),
                      width: 20*fem,
                      height: 20.78*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-upload.png',
                        width: 20*fem,
                        height: 20.78*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowupcircle (4:22670)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.78*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-up-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowupsquare (4:22676)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0.78*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-up-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowuptNd (4:22673)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0.78*fem),
                      width: 12*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-up.png',
                        width: 12*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowup2zwT (4:22679)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.5*fem, 0.78*fem),
                      width: 12*fem,
                      height: 10*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-up-2.png',
                        width: 12*fem,
                        height: 10*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowup3WQ1 (4:22682)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.78*fem),
                      width: 11*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-up-3.png',
                        width: 11*fem,
                        height: 18*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupwpm7dUd (SrDxqPvf7oFDTNZ1YjWpM7)
              left: 99.5*fem,
              top: 391*fem,
              child: Container(
                width: 1441.5*fem,
                height: 20.5*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularboldvoiceUk9 (4:22917)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-voice.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldvoice2ziV (4:22923)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.5*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-voice-2.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularbolddelete7HK (4:22929)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0.5*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-delete.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldeditdFf (4:22935)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.5*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-edit.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldeditsquarexHw (4:22941)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-edit-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldplayH5K (4:22947)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-play.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldshielddoneQQq (4:22953)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-shield-done.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldshieldfail85w (4:22959)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-shield-fail.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldshow3To (4:22974)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-show.png',
                        width: 20*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldhideNW5 (4:22982)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-hide.png',
                        width: 20*fem,
                        height: 17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldfilteruF7 (4:22990)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.72*fem),
                      width: 20*fem,
                      height: 17.78*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-filter.png',
                        width: 20*fem,
                        height: 17.78*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldfilter2pN5 (4:23036)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-filter-2.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldimageL5X (4:23010)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-image.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldimage2SeM (4:23018)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-image-2.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldcallAKT (4:23042)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.5*fem),
                      width: 19*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-call.png',
                        width: 19*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldcalling5SR (4:23046)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-calling.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldcallmissednbj (4:23054)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-call-missed.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldcallsilent6cR (4:23059)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.36*fem, 37.88*fem, 0*fem),
                      width: 19.62*fem,
                      height: 20.14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-call-silent.png',
                        width: 19.62*fem,
                        height: 20.14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldlockQd7 (4:23110)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-lock.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldunlockvbT (4:23104)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117.5*fem, 0.5*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-unlock.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowleftcirc (4:22685)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-left-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowleftsqua (4:22691)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 0.5*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-left-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowleftVHB (4:22688)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0.5*fem),
                      width: 18*fem,
                      height: 12*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-left.png',
                        width: 18*fem,
                        height: 12*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowleft21WR (4:22694)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42*fem, 0.5*fem),
                      width: 10*fem,
                      height: 12*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-left-2.png',
                        width: 10*fem,
                        height: 12*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowleft3Xjf (4:22697)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0.5*fem),
                      width: 18*fem,
                      height: 11*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-left-3.png',
                        width: 18*fem,
                        height: 11*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupkmz1Fff (SrDvL3wAw3h16x3BcFkMz1)
              left: 98*fem,
              top: 222.999206543*fem,
              child: Container(
                width: 1439.5*fem,
                height: 20*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularboldsearchJtq (4:22722)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-search.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldfoldercuX (4:22716)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-folder.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldwalletwS1 (4:23266)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-wallet.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldgraph4Wd (4:23221)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-graph.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldbookmarknSd (4:23148)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 16*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-bookmark.png',
                        width: 16*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldcategoryun9 (4:23183)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-category.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldhomeEZX (4:23144)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-home.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldnotification9 (4:23260)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-notification.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldchatUCy (4:23135)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-chat.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldheartzBK (4:23209)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 20*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-heart.png',
                        width: 20*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldpaper7Wq (4:22734)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-paper.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldpaperplusF7F (4:22743)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-paper-plus.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldpapernegative (4:22884)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-paper-negative.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldpaperfail5ry (4:22751)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-paper-fail.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldpaperdownload (4:22759)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-paper-download.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldpaperuploadiQ (4:22767)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-paper-upload.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldsendENV (4:23117)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-send.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldpassword9VT (4:23121)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-password.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldswapGKB (4:23073)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-swap.png',
                        width: 20*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldworkBww (4:23026)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-work.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowdowncirc (4:22700)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-down-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowdownsqua (4:22706)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 40*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-down-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowdownLiM (4:22703)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44*fem, 0*fem),
                      width: 12*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-down.png',
                        width: 12*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowdown2rAu (4:22709)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.5*fem, 0*fem),
                      width: 12*fem,
                      height: 10*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-down-2.png',
                        width: 12*fem,
                        height: 10*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularboldarrowdown3N9F (4:22712)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 0*fem),
                      width: 11*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-bold-arrow-down-3.png',
                        width: 11*fem,
                        height: 18*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // linetNV (4:22715)
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