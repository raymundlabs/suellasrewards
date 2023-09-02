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
        // RCD (4:17725)
        width: double.infinity,
        height: 552*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // linee4y (4:17726)
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
              // brokenx5f (4:17727)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 273*fem,
                  height: 51*fem,
                  child: Text(
                    'Curved  | Broken',
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
              // lineQyF (4:17728)
              left: 1240*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 1*fem,
                  height: 192*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffe6e9ee),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowrightci (4:17729)
              left: 1296*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-right-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowrightbX (4:17733)
              left: 1408*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-right.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowrightsq (4:17738)
              left: 1352*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-right-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowright2C (4:17743)
              left: 1464*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-right-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowright37 (4:17747)
              left: 1520*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-right-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowupcircl (4:17751)
              left: 1296*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-up-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowupvMF (4:17755)
              left: 1408*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowupsquar (4:17760)
              left: 1352*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-up-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowup2jpV (4:17765)
              left: 1464*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-up-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowup33aH (4:17769)
              left: 1520*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-up-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowleftcir (4:17773)
              left: 1296*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-left-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowleftFgM (4:17777)
              left: 1408*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-left.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowleftsqu (4:17782)
              left: 1352*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-left-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowleft2fk (4:17787)
              left: 1464*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-left-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowleft3Nu (4:17791)
              left: 1520*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-left-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowdowncir (4:17795)
              left: 1296*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-down-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowdownPZb (4:17799)
              left: 1408*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowdownsqu (4:17804)
              left: 1352*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-down-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowdown2C1 (4:17809)
              left: 1464*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-down-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenarrowdown3hC (4:17813)
              left: 1520*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-arrow-down-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokensearchc4y (4:17817)
              left: 98*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-search.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenfolderKk5 (4:17821)
              left: 154*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-folder.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenwalletEMF (4:17825)
              left: 210*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-wallet.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokengraphwFf (4:17831)
              left: 266*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-graph.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenbookmarkdeH (4:17835)
              left: 322*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-bookmark.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokencategory96q (4:17839)
              left: 378*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-category.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenhomermw (4:17845)
              left: 434*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-home.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokennotification (4:17849)
              left: 490*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-notification.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenchatgFB (4:17853)
              left: 546*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-chat.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenheartzFs (4:17859)
              left: 602*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-heart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenpaperhRB (4:17863)
              left: 658*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-paper.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenticketstarDP (4:17869)
              left: 658*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-ticket-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenticketjMs (4:17873)
              left: 658*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-ticket.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenfilterFb7 (4:17880)
              left: 658*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-filter.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenvoiceMu3 (4:17886)
              left: 98*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-voice.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenpapernegativ (4:17893)
              left: 770*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-paper-negative.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenmoresquarenj (4:17898)
              left: 770*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-more-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenvideoHw7 (4:17904)
              left: 322*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-video.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenimagezqX (4:17909)
              left: 770*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-image.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokendelete6tZ (4:17914)
              left: 210*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-delete.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenpaperdownloa (4:17920)
              left: 882*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-paper-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenbuyiuw (4:17926)
              left: 882*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-buy.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbroken2usereHo (4:17934)
              left: 882*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-2-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokencallMCD (4:17940)
              left: 882*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-call.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokeneditsquaresA (4:17942)
              left: 322*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-edit-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenpaperpluszFB (4:17948)
              left: 714*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-paper-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenmorecircleJW (4:17954)
              left: 714*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-more-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokencamerapV7 (4:17960)
              left: 714*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-camera.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenfilter2Wcq (4:17965)
              left: 714*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-filter-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenvoice2buB (4:17967)
              left: 154*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-voice-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenpaperfailWWM (4:17976)
              left: 826*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-paper-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokendiscountD9s (4:17982)
              left: 826*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-discount.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenadduservKB (4:17988)
              left: 826*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-add-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenimage2dzH (4:17994)
              left: 826*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-image-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokeneditkJD (4:17999)
              left: 266*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-edit.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenpaperupload4 (4:18004)
              left: 938*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-paper-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokendangersquare (4:18010)
              left: 994*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-danger-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbroken3userGvm (4:18015)
              left: 938*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-3-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokencallingPVb (4:18023)
              left: 938*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-calling.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenplayVYd (4:18028)
              left: 378*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-play.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokensendQfb (4:18032)
              left: 994*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-send.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokeninfosquareus (4:18036)
              left: 938*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-info-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenloginpDX (4:18041)
              left: 994*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-login.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokencallmissed8V (4:18048)
              left: 994*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-call-missed.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenshielddoneF3 (4:18054)
              left: 434*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-shield-done.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenswapZKX (4:18058)
              left: 1106*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-swap.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenclosesquareU (4:18066)
              left: 1106*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-close-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokendownloadyu3 (4:18071)
              left: 1106*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenwork6Ts (4:18078)
              left: 1162*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-work.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenshowD2h (4:18084)
              left: 546*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-show.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenpasswordjFw (4:18088)
              left: 1050*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-password.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokendangertriang (4:18094)
              left: 1050*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-danger-triangle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenlogoutLmX (4:18099)
              left: 1050*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-logout.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokencallsilentrz (4:18106)
              left: 1050*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-call-silent.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenshieldfailZe (4:18111)
              left: 490*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-shield-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenlockfxD (4:18116)
              left: 1106*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-lock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenticksquarenG (4:18121)
              left: 1162*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-tick-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenuploadHTo (4:18125)
              left: 1162*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenunlockCam (4:18132)
              left: 1162*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-unlock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenhidehnR (4:18137)
              left: 602*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-hide.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenscancuP (4:18144)
              left: 98*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-scan.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenactivityY2M (4:18152)
              left: 154*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-activity.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokencalendarebB (4:18158)
              left: 210*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-calendar.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenmessageGMf (4:18172)
              left: 266*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-message.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenprofileNvV (4:18176)
              left: 770*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-profile.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenplusVER (4:18180)
              left: 378*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenchartQ6V (4:18185)
              left: 434*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-chart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokengameu3F (4:18191)
              left: 490*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-game.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenbagQVo (4:18199)
              left: 546*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-bag.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenstar7QD (4:18205)
              left: 602*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenbag22GH (4:18209)
              left: 602*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-bag-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokendiscoveryXiq (4:18213)
              left: 98*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-discovery.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokentimesquareF9 (4:18217)
              left: 322*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-time-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenlocationMxm (4:18221)
              left: 154*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-location.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokentimecircleH5 (4:18225)
              left: 378*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-time-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokendocumentCCh (4:18229)
              left: 210*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-document.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenvolumeupJWd (4:18235)
              left: 434*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-volume-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokensettingTnq (4:18240)
              left: 266*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-setting.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenvolumedownmo (4:18245)
              left: 490*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-volume-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbrokenvolumeoffUxq (4:18249)
              left: 546*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-broken-volume-off.png',
                    width: 24*fem,
                    height: 24*fem,
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