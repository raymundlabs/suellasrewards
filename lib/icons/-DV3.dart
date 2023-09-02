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
        // 3CV (4:18827)
        width: double.infinity,
        height: 552*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // linedgV (4:18828)
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
              // twotonewhB (4:18829)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 308*fem,
                  height: 51*fem,
                  child: Text(
                    'Curved  | Two tone',
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
              // linepky (4:18830)
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
              // iconlycurvedtwotonearrowrightc (4:18831)
              left: 1296*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-right-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowright2 (4:18835)
              left: 1408*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-right.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowrights (4:18839)
              left: 1352*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-right-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowright2 (4:18844)
              left: 1464*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-right-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowright3 (4:18847)
              left: 1520*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-right-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowupcirc (4:18851)
              left: 1296*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-up-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowupXqj (4:18855)
              left: 1408*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowupsqua (4:18859)
              left: 1352*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-up-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowup2Mpm (4:18864)
              left: 1464*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-up-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowup3fqT (4:18867)
              left: 1520*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-up-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowleftci (4:18871)
              left: 1296*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-left-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowleft58 (4:18875)
              left: 1408*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-left.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowleftsq (4:18879)
              left: 1352*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-left-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowleft2h (4:18884)
              left: 1464*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-left-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowleft3C (4:18887)
              left: 1520*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-left-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowdownci (4:18891)
              left: 1296*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-down-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowdownRz (4:18895)
              left: 1408*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowdownsq (4:18899)
              left: 1352*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-down-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowdown24 (4:18904)
              left: 1464*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-down-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonearrowdown3Y (4:18907)
              left: 1520*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-arrow-down-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonesearchFcd (4:18911)
              left: 98*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-search.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonefolderZdK (4:18915)
              left: 154*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-folder.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonewalletUEV (4:18919)
              left: 210*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-wallet.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonegraphB8u (4:18925)
              left: 266*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-graph.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonebookmarkgLZ (4:18929)
              left: 322*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-bookmark.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonecategorybTX (4:18933)
              left: 378*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-category.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonehomeWaV (4:18939)
              left: 434*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-home.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonenotificatio (4:18943)
              left: 490*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-notification.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonechatL3j (4:18947)
              left: 546*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-chat.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonehearteq7 (4:18953)
              left: 602*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-heart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonepaperNWD (4:18957)
              left: 658*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-paper.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneticketstar5 (4:18963)
              left: 658*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-ticket-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneticketCk9 (4:18967)
              left: 658*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-ticket.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonefilteriTb (4:18973)
              left: 658*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-filter.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonevoiceRcu (4:18979)
              left: 98*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-voice.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonepapernegati (4:18985)
              left: 770*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-paper-negative.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonemoresquared (4:18990)
              left: 770*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-more-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonevideo9hK (4:18996)
              left: 322*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-video.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneimageGX3 (4:19000)
              left: 770*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-image.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonedeleteywF (4:19005)
              left: 210*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-delete.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonepaperdownlo (4:19010)
              left: 882*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-paper-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonebuyD4u (4:19015)
              left: 882*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-buy.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotone2uservV7 (4:19023)
              left: 882*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-2-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonecallSCZ (4:19029)
              left: 882*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-call.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneeditsquareZ (4:19033)
              left: 322*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-edit-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonepaperplus4U (4:19038)
              left: 714*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-paper-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonemorecircleZ (4:19043)
              left: 714*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-more-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonecameragWD (4:19049)
              left: 714*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-camera.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonefilter2ykD (4:19054)
              left: 714*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-filter-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonevoice2VTf (4:19058)
              left: 154*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-voice-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonepaperfailc2 (4:19066)
              left: 826*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-paper-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonediscountvJ5 (4:19071)
              left: 826*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-discount.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneadduser8uw (4:19077)
              left: 826*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-add-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneimage2eNV (4:19083)
              left: 826*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-image-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneeditYim (4:19088)
              left: 266*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-edit.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonepaperupload (4:19093)
              left: 938*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-paper-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonedangersquar (4:19098)
              left: 994*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-danger-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotone3user5cD (4:19103)
              left: 938*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-3-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonecallingzUH (4:19111)
              left: 938*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-calling.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneplaytpZ (4:19116)
              left: 378*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-play.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonesendcVf (4:19120)
              left: 994*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-send.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneinfosquareK (4:19124)
              left: 938*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-info-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneloginRT7 (4:19129)
              left: 994*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-login.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonecallmissedv (4:19134)
              left: 994*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-call-missed.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneshielddone3 (4:19138)
              left: 434*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-shield-done.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneswapmQV (4:19142)
              left: 1106*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-swap.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneclosesquare (4:19148)
              left: 1106*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-close-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonedownloadBz1 (4:19153)
              left: 1106*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneworkWFb (4:19158)
              left: 1162*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-work.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneshowcpR (4:19165)
              left: 546*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-show.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonepasswordvq7 (4:19169)
              left: 1050*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-password.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonedangertrian (4:19175)
              left: 1050*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-danger-triangle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonelogout9xm (4:19180)
              left: 1050*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-logout.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonecallsilents (4:19185)
              left: 1050*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-call-silent.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneshieldfailb (4:19190)
              left: 490*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-shield-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonelockuaZ (4:19195)
              left: 1106*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-lock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneticksquarep (4:19200)
              left: 1162*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-tick-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneuploadwGM (4:19204)
              left: 1162*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneunlockreD (4:19209)
              left: 1162*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-unlock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonehideyD3 (4:19214)
              left: 602*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-hide.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonescan5Wy (4:19221)
              left: 98*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-scan.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneactivityoC5 (4:19228)
              left: 154*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-activity.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonecalendartjK (4:19233)
              left: 210*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-calendar.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonemessageznM (4:19245)
              left: 266*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-message.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneprofile76H (4:19249)
              left: 770*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-profile.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotoneplusq2H (4:19253)
              left: 378*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonechartZDB (4:19258)
              left: 434*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-chart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonegameGtH (4:19264)
              left: 490*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-game.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonebagAyf (4:19271)
              left: 546*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-bag.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonestar5Kw (4:19277)
              left: 602*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonebag2nVF (4:19280)
              left: 602*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-bag-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonediscoveryVe (4:19284)
              left: 98*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-discovery.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonetimesquareC (4:19288)
              left: 322*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-time-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonelocation7vq (4:19292)
              left: 154*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-location.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonetimecircleq (4:19296)
              left: 378*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-time-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonedocumentxRf (4:19300)
              left: 210*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-document.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonevolumeup4zV (4:19306)
              left: 434*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-volume-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonesettingnfb (4:19311)
              left: 266*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-setting.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonevolumedownt (4:19315)
              left: 490*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-volume-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedtwotonevolumeoff12 (4:19319)
              left: 546*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-two-tone-volume-off.png',
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