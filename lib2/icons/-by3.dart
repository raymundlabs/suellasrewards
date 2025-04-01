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
        // P2y (4:18255)
        width: double.infinity,
        height: 552*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // linesiq (4:18256)
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
              // twotoneadF (4:18257)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 309*fem,
                  height: 51*fem,
                  child: Text(
                    'Regular | Two tone',
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
              // autogroupekmjTww (SrDPGcMVUKknfqWoCAEKMj)
              left: 98.7780761719*fem,
              top: 222*fem,
              child: Container(
                width: 1438.47*fem,
                height: 20.25*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregulartwotonesearchhLV (4:18772)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.53*fem, 37.23*fem, 0*fem),
                      width: 18.76*fem,
                      height: 19.22*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-search.png',
                        width: 18.76*fem,
                        height: 19.22*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonefolderPUD (4:18777)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.53*fem, 0.53*fem),
                      width: 19.2*fem,
                      height: 19.17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-folder.png',
                        width: 19.2*fem,
                        height: 19.17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonewallet5bw (4:18782)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.66*fem, 0.58*fem),
                      width: 19.14*fem,
                      height: 17.67*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-wallet.png',
                        width: 19.14*fem,
                        height: 17.67*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonegraphBey (4:18789)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.51*fem, 0.21*fem),
                      width: 19.39*fem,
                      height: 19.84*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-graph.png',
                        width: 19.39*fem,
                        height: 19.84*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonebookmarktp (4:18794)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.26*fem, 0.31*fem),
                      width: 15.54*fem,
                      height: 19.34*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-bookmark.png',
                        width: 15.54*fem,
                        height: 19.34*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonecategorycV (4:18799)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.25*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-category.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonehomeK8u (4:18806)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0.25*fem),
                      width: 19*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-home.png',
                        width: 19*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonenotificati (4:18810)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.25*fem),
                      width: 17*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-notification.png',
                        width: 17*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonechatYGZ (4:18815)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.25*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-chat.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneheartqWZ (4:18822)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.75*fem, 0.25*fem),
                      width: 19*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-heart.png',
                        width: 19*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonepaperA33 (4:18258)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.61*fem, 40.45*fem, 0*fem),
                      width: 15.55*fem,
                      height: 18.36*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-paper.png',
                        width: 15.55*fem,
                        height: 18.36*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonepaperplusG (4:18291)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.61*fem, 40.45*fem, 0*fem),
                      width: 15.55*fem,
                      height: 18.36*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-paper-plus.png',
                        width: 15.55*fem,
                        height: 18.36*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonepapernegat (4:18278)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.61*fem, 40.45*fem, 0*fem),
                      width: 15.55*fem,
                      height: 18.36*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-paper-negative.png',
                        width: 15.55*fem,
                        height: 18.36*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonepaperfails (4:18481)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.61*fem, 40.45*fem, 0*fem),
                      width: 15.55*fem,
                      height: 18.36*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-paper-fail.png',
                        width: 15.55*fem,
                        height: 18.36*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonepaperdownl (4:18465)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.61*fem, 40.45*fem, 0*fem),
                      width: 15.55*fem,
                      height: 18.36*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-paper-download.png',
                        width: 15.55*fem,
                        height: 18.36*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonepaperuploa (4:18496)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.61*fem, 38.7*fem, 0*fem),
                      width: 15.55*fem,
                      height: 18.36*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-paper-upload.png',
                        width: 15.55*fem,
                        height: 18.36*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonesendzph (4:18510)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.12*fem, 37.75*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.37*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-send.png',
                        width: 18.5*fem,
                        height: 18.37*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonepasswordWY (4:18554)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.75*fem, 37.58*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-password.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneswap1zh (4:18527)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.75*fem, 37.83*fem, 0*fem),
                      width: 18.08*fem,
                      height: 16.33*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-swap.png',
                        width: 18.08*fem,
                        height: 16.33*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneworkXi9 (4:18547)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.49*fem, 117.51*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.24*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-work.png',
                        width: 18.5*fem,
                        height: 18.24*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowdownc (4:18641)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.75*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-down-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowdowns (4:18647)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.75*fem, 41*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-down-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowdownr (4:18644)
                      margin: EdgeInsets.fromLTRB(0*fem, 2.25*fem, 42.7*fem, 0*fem),
                      width: 12.05*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-down.png',
                        width: 12.05*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowdown2 (4:18650)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.75*fem, 44.25*fem, 0*fem),
                      width: 14*fem,
                      height: 7*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-down-2.png',
                        width: 14*fem,
                        height: 7*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowdown3 (4:18653)
                      margin: EdgeInsets.fromLTRB(0*fem, 2.14*fem, 0*fem, 0*fem),
                      width: 10*fem,
                      height: 16.89*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-down-3.png',
                        width: 10*fem,
                        height: 16.89*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupuuzpw37 (SrDQdjkK4GDJL3XkD4uUZP)
              left: 97.5*fem,
              top: 279*fem,
              child: Container(
                width: 1443.14*fem,
                height: 21.26*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregulartwotonescanb7f (4:18306)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.15*fem, 0.89*fem),
                      width: 21.13*fem,
                      height: 17.37*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-scan.png',
                        width: 21.13*fem,
                        height: 17.37*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneactivityhg (4:18314)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.08*fem, 1.5*fem),
                      width: 19.14*fem,
                      height: 19.2*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-activity.png',
                        width: 19.14*fem,
                        height: 19.2*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonecalendarDP (4:18320)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37*fem, 1.26*fem),
                      width: 18*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-calendar.png',
                        width: 18*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonemessageX9j (4:18334)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.07*fem, 2.15*fem),
                      width: 19.23*fem,
                      height: 17.12*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-message.png',
                        width: 19.23*fem,
                        height: 17.12*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonevideoEZw (4:18767)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.37*fem, 1.26*fem),
                      width: 19.33*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-video.png',
                        width: 19.33*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneplus9gu (4:18339)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 1.26*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-plus.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonechartGmX (4:18346)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 1.26*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-chart.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonegamePbF (4:18353)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.3*fem, 1.26*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-game.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonebagWA5 (4:18362)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.61*fem, 1.48*fem),
                      width: 18.09*fem,
                      height: 19.22*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-bag.png',
                        width: 18.09*fem,
                        height: 19.22*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonebag2cD7 (4:18369)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.75*fem, 1.76*fem),
                      width: 18*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-bag-2.png',
                        width: 18*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneticketstar (4:18265)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 1.1*fem),
                      width: 18.5*fem,
                      height: 16.67*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-ticket-star.png',
                        width: 18.5*fem,
                        height: 16.67*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonemorecircle (4:18299)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 1.26*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-more-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonemoresquare (4:18284)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 1.26*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-more-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonediscount4j (4:18489)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 1.26*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-discount.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonebuyyrH (4:18474)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 0.66*fem),
                      width: 18.5*fem,
                      height: 18.1*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-buy.png',
                        width: 18.5*fem,
                        height: 18.1*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneinfocircle (4:18504)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 1.26*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-info-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneinfosquare (4:18515)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 1.26*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-info-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonedangerjiy (4:18561)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.75*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 19.51*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-danger.png',
                        width: 18.5*fem,
                        height: 19.51*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneclosesquar (4:18534)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 1.26*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-close-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneticksquare (4:18579)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117.5*fem, 1.26*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-tick-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowright (4:18596)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.5*fem, 1.26*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-right-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowright (4:18602)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.5*fem, 1.26*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-right-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowright (4:18599)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.75*fem, 1.81*fem),
                      width: 15*fem,
                      height: 12.05*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-right.png',
                        width: 15*fem,
                        height: 12.05*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowright (4:18605)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 44.25*fem, 1.26*fem),
                      width: 7*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-right-2.png',
                        width: 7*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowright (4:18608)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1.76*fem),
                      width: 16.89*fem,
                      height: 10*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-right-3.png',
                        width: 16.89*fem,
                        height: 10*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupxaxsjH3 (SrDRmHhRPQPYGxU1kHXaXs)
              left: 98*fem,
              top: 335*fem,
              child: Container(
                width: 1438.75*fem,
                height: 19.5*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregulartwotonediscoveryA (4:18379)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 39.02*fem, 0.28*fem),
                      width: 19.22*fem,
                      height: 19.22*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-discovery.png',
                        width: 19.22*fem,
                        height: 19.22*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonelocationGR (4:18389)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.25*fem, 40.15*fem, 0*fem),
                      width: 15.36*fem,
                      height: 18.27*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-location.png',
                        width: 15.36*fem,
                        height: 18.27*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonedocumentms (4:18394)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.41*fem, 38.86*fem, 0*fem),
                      width: 16.66*fem,
                      height: 18.41*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-document.png',
                        width: 16.66*fem,
                        height: 18.41*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonesettingtBs (4:18401)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 37.69*fem, 0*fem),
                      width: 17.79*fem,
                      height: 19.22*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-setting.png',
                        width: 17.79*fem,
                        height: 19.22*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonetimesquare (4:18374)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-time-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonetimecircle (4:18384)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37.25*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-time-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonevolumeupdo (4:18750)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 38.5*fem, 0*fem),
                      width: 19*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-volume-up.png',
                        width: 19*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonevolumedown (4:18756)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 41.19*fem, 0*fem),
                      width: 15.56*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-volume-down.png',
                        width: 15.56*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonevolumeoffr (4:18761)
                      margin: EdgeInsets.fromLTRB(0*fem, 2*fem, 38.25*fem, 0*fem),
                      width: 16*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-volume-off.png',
                        width: 16*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonestarZqj (4:18746)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37*fem, 0*fem),
                      width: 18*fem,
                      height: 17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-star.png',
                        width: 18*fem,
                        height: 17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonetickettND (4:18270)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 36.75*fem, 0*fem),
                      width: 20*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-ticket.png',
                        width: 20*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonecameraok5 (4:18699)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.32*fem, 39.56*fem, 0*fem),
                      width: 18.5*fem,
                      height: 16.32*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-camera.png',
                        width: 18.5*fem,
                        height: 16.32*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneprofilevZo (4:18722)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.53*fem, 39.6*fem, 0*fem),
                      width: 14.34*fem,
                      height: 18.41*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-profile.png',
                        width: 14.34*fem,
                        height: 18.41*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneadduser2sj (4:18706)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.3*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.3*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-add-user.png',
                        width: 18.5*fem,
                        height: 18.3*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotone2userwzh (4:18692)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.56*fem, 36.52*fem, 0*fem),
                      width: 18.48*fem,
                      height: 17.56*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-2-user.png',
                        width: 18.48*fem,
                        height: 17.56*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotone3user4Jd (4:18713)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.29*fem, 37.75*fem, 0*fem),
                      width: 20.27*fem,
                      height: 15.29*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-3-user.png',
                        width: 20.27*fem,
                        height: 15.29*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneloginAcZ (4:18521)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.54*fem, 38.02*fem, 0*fem),
                      width: 16.98*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-login.png',
                        width: 16.98*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonelogoutt2m (4:18567)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.54*fem, 37.06*fem, 0*fem),
                      width: 19.04*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-logout.png',
                        width: 19.04*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonedownloadbC (4:18541)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.27*fem, 37.4*fem, 0*fem),
                      width: 18.5*fem,
                      height: 16.98*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-download.png',
                        width: 18.5*fem,
                        height: 16.98*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneupload6ed (4:18584)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 117.48*fem, 0.08*fem),
                      width: 18.5*fem,
                      height: 19.04*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-upload.png',
                        width: 18.5*fem,
                        height: 19.04*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowupcir (4:18611)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-up-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowupsqu (4:18617)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 40.45*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-up-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowupdHB (4:18614)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43.25*fem, 0*fem),
                      width: 12.05*fem,
                      height: 15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-up.png',
                        width: 12.05*fem,
                        height: 15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowup2k6 (4:18620)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 43.75*fem, 0*fem),
                      width: 14*fem,
                      height: 7*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-up-2.png',
                        width: 14*fem,
                        height: 7*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowup3fU (4:18623)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.11*fem, 0*fem, 0*fem),
                      width: 10*fem,
                      height: 16.89*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-up-3.png',
                        width: 10*fem,
                        height: 16.89*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupsm8vz1F (SrDSmLs2BFCLpiKvCXsm8V)
              left: 99.9644775391*fem,
              top: 390.5*fem,
              child: Container(
                width: 1440.29*fem,
                height: 20.5*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregulartwotonevoiceebb (4:18406)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.11*fem, 39.69*fem, 0*fem),
                      width: 16.31*fem,
                      height: 19.18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-voice.png',
                        width: 16.31*fem,
                        height: 19.18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonevoice2ked (4:18425)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.36*fem, 39.48*fem, 0*fem),
                      width: 16.31*fem,
                      height: 19.93*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-voice-2.png',
                        width: 16.31*fem,
                        height: 19.93*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonedeleterhf (4:18413)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 39.54*fem, 0*fem),
                      width: 16.96*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-delete.png',
                        width: 16.96*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneedita7s (4:18656)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.15*fem, 38.67*fem, 0*fem),
                      width: 15.83*fem,
                      height: 16.15*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-edit.png',
                        width: 15.83*fem,
                        height: 16.15*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneeditsquare (4:18419)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.87*fem, 36.41*fem, 0*fem),
                      width: 18.84*fem,
                      height: 18.87*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-edit-square.png',
                        width: 18.84*fem,
                        height: 18.87*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneplay1U5 (4:18435)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 38.25*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-play.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneshielddone (4:18440)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.89*fem, 40.66*fem, 0*fem),
                      width: 15.34*fem,
                      height: 18.9*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-shield-done.png',
                        width: 15.34*fem,
                        height: 18.9*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneshieldfail (4:18450)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.89*fem, 39.16*fem, 0*fem),
                      width: 15.34*fem,
                      height: 18.9*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-shield-fail.png',
                        width: 15.34*fem,
                        height: 18.9*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneshowwm3 (4:18445)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.61*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 14.6*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-show.png',
                        width: 18.5*fem,
                        height: 14.6*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonehideG2d (4:18457)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.77*fem, 38.75*fem, 0*fem),
                      width: 18.5*fem,
                      height: 15.77*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-hide.png',
                        width: 18.5*fem,
                        height: 15.77*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonefilteryxd (4:18739)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 39*fem, 0*fem),
                      width: 16*fem,
                      height: 16*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-filter.png',
                        width: 16*fem,
                        height: 16*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonefilter36nM (4:18687)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37.75*fem, 0*fem),
                      width: 18*fem,
                      height: 18*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-filter-3.png',
                        width: 18*fem,
                        height: 18*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneimagecVo (4:18727)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.45*fem, 37.54*fem, 0*fem),
                      width: 18.46*fem,
                      height: 18.45*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-image.png',
                        width: 18.46*fem,
                        height: 18.45*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneimage28DF (4:18733)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.45*fem, 37.29*fem, 0*fem),
                      width: 18.46*fem,
                      height: 18.45*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-image-2.png',
                        width: 18.46*fem,
                        height: 18.45*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonecallqNZ (4:18663)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 1.5*fem),
                      width: 19*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-call.png',
                        width: 19*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonecallingYnm (4:18668)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.61*fem, 1.5*fem),
                      width: 19.39*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-calling.png',
                        width: 19.39*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonecallmissed (4:18674)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.29*fem, 1.5*fem),
                      width: 19.31*fem,
                      height: 19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-call-missed.png',
                        width: 19.31*fem,
                        height: 19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonecallsilent (4:18681)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.75*fem, 1.2*fem),
                      width: 18.9*fem,
                      height: 19.1*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-call-silent.png',
                        width: 18.9*fem,
                        height: 19.1*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonelockhJH (4:18573)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 41.02*fem, 0*fem),
                      width: 15.23*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-lock.png',
                        width: 15.23*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotoneunlock25f (4:18590)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 119.03*fem, 0*fem),
                      width: 15.22*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-unlock.png',
                        width: 15.22*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowleftc (4:18626)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 37.5*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-left-circle.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowlefts (4:18632)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 39*fem, 0*fem),
                      width: 18.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-left-square.png',
                        width: 18.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowleftL (4:18629)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.05*fem, 45.25*fem, 0*fem),
                      width: 15*fem,
                      height: 12.05*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-left.png',
                        width: 15*fem,
                        height: 12.05*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowleft2 (4:18635)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.5*fem, 43.86*fem, 0*fem),
                      width: 7*fem,
                      height: 14*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-left-2.png',
                        width: 7*fem,
                        height: 14*fem,
                      ),
                    ),
                    Container(
                      // iconlyregulartwotonearrowleft3 (4:18638)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                      width: 16.89*fem,
                      height: 10*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-two-tone-arrow-left-3.png',
                        width: 16.89*fem,
                        height: 10*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // linese1 (4:18662)
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