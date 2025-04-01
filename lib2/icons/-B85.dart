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
        // 3ih (4:19324)
        width: double.infinity,
        height: 552*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // line9mj (4:19325)
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
              // lightoutline4do (4:19326)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 403*fem,
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
                          text: 'Regular | Light  ',
                        ),
                        TextSpan(
                          text: '(Outline)',
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
              // lineqAh (4:19327)
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
            Positioned(
              // autogroupyti1Yau (SrDZ6AKovAchpuLmroyTi1)
              left: 98*fem,
              top: 222*fem,
              child: Container(
                width: 1439.5*fem,
                height: 21.85*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularoutlinesearchc4y (4:19328)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.88*fem, 35.74*fem, 0*fem),
                      width: 20.26*fem,
                      height: 20.72*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-search.png',
                        width: 20.26*fem,
                        height: 20.72*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinefolderhcD (4:19339)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.82*fem, 35.3*fem, 0*fem),
                      width: 20.7*fem,
                      height: 20.67*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-folder.png',
                        width: 20.7*fem,
                        height: 20.67*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinewalletbxV (4:19348)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.33*fem, 35.36*fem, 0*fem),
                      width: 20.64*fem,
                      height: 19.17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-wallet.png',
                        width: 20.64*fem,
                        height: 19.17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinegraph6uF (4:19359)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.11*fem, 0.5*fem),
                      width: 20.89*fem,
                      height: 21.34*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-graph.png',
                        width: 20.89*fem,
                        height: 21.34*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinebookmarkcM (4:19370)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 37.96*fem, 0*fem),
                      width: 17.04*fem,
                      height: 20.85*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-bookmark.png',
                        width: 17.04*fem,
                        height: 20.85*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinecategoryiQ (4:19379)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.35*fem),
                      width: 19.5*fem,
                      height: 19.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-category.png',
                        width: 19.5*fem,
                        height: 19.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinehome2wK (4:19394)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.34*fem),
                      width: 20.5*fem,
                      height: 21.51*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-home.png',
                        width: 20.5*fem,
                        height: 21.51*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinenotificati (4:19401)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.5*fem, 0.35*fem),
                      width: 18.5*fem,
                      height: 21.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-notification.png',
                        width: 18.5*fem,
                        height: 21.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinechatGDP (4:19410)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.51*fem, 0.35*fem),
                      width: 21.49*fem,
                      height: 21.49*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-chat.png',
                        width: 21.49*fem,
                        height: 21.49*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineheartB5T (4:19421)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.65*fem, 36.53*fem, 0*fem),
                      width: 20.47*fem,
                      height: 19.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-heart.png',
                        width: 20.47*fem,
                        height: 19.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinepapertVf (4:19430)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 38.95*fem, 0*fem),
                      width: 17.05*fem,
                      height: 19.86*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-paper.png',
                        width: 17.05*fem,
                        height: 19.86*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinepaperplusb (4:19581)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 38.95*fem, 0*fem),
                      width: 17.05*fem,
                      height: 19.87*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-paper-plus.png',
                        width: 17.05*fem,
                        height: 19.87*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinepapernegat (4:19486)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 38.95*fem, 0*fem),
                      width: 17.05*fem,
                      height: 19.87*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-paper-negative.png',
                        width: 17.05*fem,
                        height: 19.87*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinepaperfail1 (4:19626)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 38.95*fem, 0*fem),
                      width: 17.05*fem,
                      height: 19.87*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-paper-fail.png',
                        width: 17.05*fem,
                        height: 19.87*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinepaperdownl (4:19530)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 38.95*fem, 0*fem),
                      width: 17.05*fem,
                      height: 19.86*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-paper-download.png',
                        width: 17.05*fem,
                        height: 19.86*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinepaperuploa (4:19674)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.02*fem, 37.95*fem, 0*fem),
                      width: 17.05*fem,
                      height: 19.86*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-paper-upload.png',
                        width: 17.05*fem,
                        height: 19.86*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinesend4Kb (4:19716)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.65*fem, 36.5*fem, 0*fem),
                      width: 19.5*fem,
                      height: 19.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-send.png',
                        width: 19.5*fem,
                        height: 19.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinepasswordNr (4:19803)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.15*fem, 36.08*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-password.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineswapgrm (4:19756)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.15*fem, 36.33*fem, 0*fem),
                      width: 19.58*fem,
                      height: 17.83*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-swap.png',
                        width: 19.58*fem,
                        height: 17.83*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineworkzcZ (4:19779)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116.01*fem, 0.11*fem),
                      width: 19.99*fem,
                      height: 19.74*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-work.png',
                        width: 19.99*fem,
                        height: 19.74*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowdownc (4:20201)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.15*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-down-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowdowns (4:20213)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.15*fem, 39.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-down-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowdowng (4:20208)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.65*fem, 41.2*fem, 0*fem),
                      width: 13.55*fem,
                      height: 16.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-down.png',
                        width: 13.55*fem,
                        height: 16.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowdown2 (4:20221)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.15*fem, 42.25*fem, 0*fem),
                      width: 15.5*fem,
                      height: 8.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-down-2.png',
                        width: 15.5*fem,
                        height: 8.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowdown3 (4:20225)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.54*fem, 0*fem, 0*fem),
                      width: 11.5*fem,
                      height: 18.39*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-down-3.png',
                        width: 11.5*fem,
                        height: 18.39*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogrouppgsbQiD (SrDa23wgX4fNi1wN9rPgsb)
              left: 97*fem,
              top: 278*fem,
              child: Container(
                width: 1444.39*fem,
                height: 21.72*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularoutlinescanf8M (4:19901)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.04*fem, 34.5*fem, 0*fem),
                      width: 22.5*fem,
                      height: 18.76*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-scan-q2q.png',
                        width: 22.5*fem,
                        height: 18.76*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineactivityMm (4:19909)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.98*fem, 35.36*fem, 0*fem),
                      width: 20.64*fem,
                      height: 20.7*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-activity.png',
                        width: 20.64*fem,
                        height: 20.7*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinecalendar4w (4:19921)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.5*fem, 0.22*fem),
                      width: 19.5*fem,
                      height: 21.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-calendar.png',
                        width: 19.5*fem,
                        height: 21.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinemessagePCm (4:19938)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.5*fem, 0.22*fem),
                      width: 21.5*fem,
                      height: 19.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-message-8Pb.png',
                        width: 21.5*fem,
                        height: 19.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinevideohUM (4:19503)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.78*fem, 34.17*fem, 0*fem),
                      width: 20.83*fem,
                      height: 15.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-video.png',
                        width: 20.83*fem,
                        height: 15.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineplusDSh (4:19952)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34.5*fem, 0.22*fem),
                      width: 21.5*fem,
                      height: 21.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-plus.png',
                        width: 21.5*fem,
                        height: 21.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinechart8pZ (4:19960)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 34.5*fem, 0.22*fem),
                      width: 21.5*fem,
                      height: 21.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-chart.png',
                        width: 21.5*fem,
                        height: 21.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinegameGA5 (4:19969)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.5*fem, 0.22*fem),
                      width: 21.5*fem,
                      height: 21.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-game.png',
                        width: 21.5*fem,
                        height: 21.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinebagtBT (4:19984)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 36.41*fem, 0*fem),
                      width: 19.59*fem,
                      height: 20.72*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-bag.png',
                        width: 19.59*fem,
                        height: 20.72*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinebag3nXj (4:20000)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 36.5*fem, 0*fem),
                      width: 19.5*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-bag-3.png',
                        width: 19.5*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineticketstar (4:19441)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.45*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 18.17*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-ticket-star.png',
                        width: 20*fem,
                        height: 18.17*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinemorecircle (4:19590)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-more-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinemoresquare (4:19494)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-more-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinediscount2K (4:19637)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 36.39*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-discount.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinebuy99K (4:19541)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.82*fem, 35.61*fem, 0*fem),
                      width: 20*fem,
                      height: 19.54*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-buy.png',
                        width: 20*fem,
                        height: 19.54*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineinfosquare (4:19723)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-info-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinedangercirc (4:19685)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-danger-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinedangertria (4:19816)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.46*fem, 35.99*fem, 0*fem),
                      width: 20.01*fem,
                      height: 18.19*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-danger-triangle.png',
                        width: 20.01*fem,
                        height: 18.19*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineclosesquar (4:19763)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-close-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineticksquare (4:19862)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 116*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-tick-square-zxh.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowright (4:20102)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-right-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowright (4:20114)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 38*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-right-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowright (4:20109)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 43.25*fem, 0.27*fem),
                      width: 16.5*fem,
                      height: 13.55*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-right.png',
                        width: 16.5*fem,
                        height: 13.55*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowright (4:20122)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.28*fem, 42.75*fem, 0*fem),
                      width: 8.5*fem,
                      height: 15.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-right-2.png',
                        width: 8.5*fem,
                        height: 15.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowright (4:20126)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.78*fem, 0*fem, 0*fem),
                      width: 18.39*fem,
                      height: 11.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-right-3.png',
                        width: 18.39*fem,
                        height: 11.5*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupobbpKms (SrDaqXaaGdLUuLkLMzoBbP)
              left: 98*fem,
              top: 334.9997558594*fem,
              child: Container(
                width: 1439.5*fem,
                height: 20.72*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularoutlinediscoveryz (4:20011)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 37.28*fem, 0*fem),
                      width: 20.72*fem,
                      height: 20.72*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-discovery.png',
                        width: 20.72*fem,
                        height: 20.72*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinelocationJd (4:20029)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.5*fem, 1.22*fem),
                      width: 16.5*fem,
                      height: 19.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-location.png',
                        width: 16.5*fem,
                        height: 19.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinedocumentpM (4:20047)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.84*fem, 0.81*fem),
                      width: 18.16*fem,
                      height: 19.91*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-document.png',
                        width: 18.16*fem,
                        height: 19.91*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinesetting7r9 (4:20070)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.72*fem, 0*fem),
                      width: 19.28*fem,
                      height: 20.72*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-setting.png',
                        width: 19.28*fem,
                        height: 20.72*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinetimesquare (4:20022)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.72*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-time-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinetimecircle (4:20040)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.72*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-time-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinevolumeupTo (4:20058)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.78*fem, 36.52*fem, 0*fem),
                      width: 20.48*fem,
                      height: 15.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-volume-up.png',
                        width: 20.48*fem,
                        height: 15.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinevolumedown (4:20081)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.78*fem, 38.94*fem, 0*fem),
                      width: 17.06*fem,
                      height: 15.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-volume-down.png',
                        width: 17.06*fem,
                        height: 15.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinevolumeofft (4:20090)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.78*fem, 37.5*fem, 0*fem),
                      width: 17.5*fem,
                      height: 17.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-volume-off.png',
                        width: 17.5*fem,
                        height: 17.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinestaroW1 (4:19995)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.5*fem, 0.22*fem),
                      width: 19.5*fem,
                      height: 18.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-star.png',
                        width: 19.5*fem,
                        height: 18.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineticketicy (4:19452)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.78*fem, 35.5*fem, 0*fem),
                      width: 21.5*fem,
                      height: 17.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-ticket.png',
                        width: 21.5*fem,
                        height: 17.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinecameradjw (4:19599)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38*fem, 0.9*fem),
                      width: 20*fem,
                      height: 17.82*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-camera.png',
                        width: 20*fem,
                        height: 17.82*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineprofilewkd (4:19947)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.16*fem, 0.85*fem),
                      width: 15.84*fem,
                      height: 19.87*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-profile.png',
                        width: 15.84*fem,
                        height: 19.87*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineadduserFmK (4:19648)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.93*fem),
                      width: 20*fem,
                      height: 19.8*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-add-user.png',
                        width: 20*fem,
                        height: 19.8*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutline2useryBX (4:19564)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.02*fem, 1.66*fem),
                      width: 19.98*fem,
                      height: 19.06*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-2-user.png',
                        width: 19.98*fem,
                        height: 19.06*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutline3userHT7 (4:19693)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.07*fem, 36.23*fem, 0*fem),
                      width: 21.77*fem,
                      height: 16.79*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-3-user.png',
                        width: 21.77*fem,
                        height: 16.79*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineloginzMX (4:19733)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.52*fem, 0.72*fem),
                      width: 18.48*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-login.png',
                        width: 18.48*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinelogoutuUV (4:19826)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 35.46*fem, 0.72*fem),
                      width: 20.54*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-logout.png',
                        width: 20.54*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinedownloadDz (4:19771)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.24*fem),
                      width: 20*fem,
                      height: 18.48*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-download.png',
                        width: 20*fem,
                        height: 18.48*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineuploadLph (4:19869)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 116*fem, 0.18*fem),
                      width: 20*fem,
                      height: 20.54*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-upload.png',
                        width: 20*fem,
                        height: 20.54*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowupcir (4:20135)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36*fem, 0.72*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-up-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowupsqu (4:20147)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.95*fem, 0.72*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-up-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowuptjj (4:20142)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 41.75*fem, 1.22*fem),
                      width: 13.55*fem,
                      height: 16.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-up.png',
                        width: 13.55*fem,
                        height: 16.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowup21J (4:20155)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 42.25*fem, 0.72*fem),
                      width: 15.5*fem,
                      height: 8.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-up-2.png',
                        width: 15.5*fem,
                        height: 8.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowup3uP (4:20159)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.89*fem, 0*fem, 0*fem),
                      width: 11.5*fem,
                      height: 18.39*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-up-3.png',
                        width: 11.5*fem,
                        height: 18.39*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // autogroupllwdcZF (SrDbZWNdHuQXwRAmeELLWD)
              left: 99*fem,
              top: 390*fem,
              child: Container(
                width: 1443*fem,
                height: 21.82*fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // iconlyregularoutlinevoicesEH (4:19476)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.5*fem, 0.32*fem),
                      width: 17.5*fem,
                      height: 21.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-voice.png',
                        width: 17.5*fem,
                        height: 21.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinevoice3n6M (4:19616)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 38.5*fem, 0.32*fem),
                      width: 17.5*fem,
                      height: 21.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-voice-3.png',
                        width: 17.5*fem,
                        height: 21.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinedeletehDK (4:19524)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.18*fem, 36.54*fem, 0*fem),
                      width: 18.46*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-delete-geu.png',
                        width: 18.46*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineeditQdX (4:19664)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.12*fem, 36.5*fem, 0*fem),
                      width: 19.5*fem,
                      height: 18.94*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-edit.png',
                        width: 19.5*fem,
                        height: 18.94*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineeditsquare (4:19573)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.55*fem, 35.66*fem, 0*fem),
                      width: 20.34*fem,
                      height: 20.37*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-edit-square.png',
                        width: 20.34*fem,
                        height: 20.37*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineplaySKK (4:19707)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.68*fem, 37.5*fem, 0*fem),
                      width: 20.5*fem,
                      height: 20.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-play.png',
                        width: 20.5*fem,
                        height: 20.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineshielddone (4:19747)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.54*fem, 39.03*fem, 0*fem),
                      width: 16.97*fem,
                      height: 20.36*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-shield-done.png',
                        width: 16.97*fem,
                        height: 20.36*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineshieldfail (4:19844)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.54*fem, 37.03*fem, 0*fem),
                      width: 16.97*fem,
                      height: 20.36*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-shield-fail.png',
                        width: 16.97*fem,
                        height: 20.36*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineshowapq (4:19792)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.29*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 16.1*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-show.png',
                        width: 20*fem,
                        height: 16.1*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinehideHjF (4:19887)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.46*fem, 37*fem, 0*fem),
                      width: 20*fem,
                      height: 17.27*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-hide.png',
                        width: 20*fem,
                        height: 17.27*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinefilterQJ5 (4:19463)
                      margin: EdgeInsets.fromLTRB(0*fem, 2.08*fem, 37.5*fem, 0*fem),
                      width: 17.5*fem,
                      height: 15.9*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-filter-rNu.png',
                        width: 17.5*fem,
                        height: 15.9*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinefilter37yB (4:19609)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 36.5*fem, 0.32*fem),
                      width: 19.5*fem,
                      height: 19.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-filter-3.png',
                        width: 19.5*fem,
                        height: 19.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineimagedRj (4:19512)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.13*fem, 36.04*fem, 0*fem),
                      width: 19.96*fem,
                      height: 19.95*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-image.png',
                        width: 19.96*fem,
                        height: 19.95*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineimage3wSR (4:19652)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.14*fem, 36.04*fem, 0*fem),
                      width: 19.96*fem,
                      height: 19.95*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-image-3.png',
                        width: 19.96*fem,
                        height: 19.95*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinecallERX (4:19568)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.69*fem, 35.43*fem, 0*fem),
                      width: 20.57*fem,
                      height: 20.51*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-call.png',
                        width: 20.57*fem,
                        height: 20.51*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinecallingLzM (4:19697)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.69*fem, 34.29*fem, 0*fem),
                      width: 20.89*fem,
                      height: 20.51*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-calling.png',
                        width: 20.89*fem,
                        height: 20.51*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinecallmissed (4:19739)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.17*fem, 35.94*fem, 0*fem),
                      width: 20.88*fem,
                      height: 20.51*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-call-missed.png',
                        width: 20.88*fem,
                        height: 20.51*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinecallsilent (4:19836)
                      margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 37.2*fem, 0*fem),
                      width: 20.8*fem,
                      height: 20.82*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-call-silent.png',
                        width: 20.8*fem,
                        height: 20.82*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinelockffF (4:19854)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.18*fem, 39.27*fem, 0*fem),
                      width: 16.73*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-lock.png',
                        width: 16.73*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlineunlockyvq (4:19879)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.18*fem, 117.27*fem, 0*fem),
                      width: 16.73*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-unlock.png',
                        width: 16.73*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowleftc (4:20168)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.18*fem, 36*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-left-circle.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowlefts (4:20180)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.18*fem, 37.5*fem, 0*fem),
                      width: 20*fem,
                      height: 20*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-left-square.png',
                        width: 20*fem,
                        height: 20*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowleftV (4:20175)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.73*fem, 43.75*fem, 0*fem),
                      width: 16.5*fem,
                      height: 13.55*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-left.png',
                        width: 16.5*fem,
                        height: 13.55*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowleft2 (4:20188)
                      margin: EdgeInsets.fromLTRB(0*fem, 0.18*fem, 43.36*fem, 0*fem),
                      width: 8.5*fem,
                      height: 15.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-left-2.png',
                        width: 8.5*fem,
                        height: 15.5*fem,
                      ),
                    ),
                    Container(
                      // iconlyregularoutlinearrowleft3 (4:20192)
                      margin: EdgeInsets.fromLTRB(0*fem, 1.68*fem, 0*fem, 0*fem),
                      width: 18.39*fem,
                      height: 11.5*fem,
                      child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-arrow-left-3.png',
                        width: 18.39*fem,
                        height: 11.5*fem,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
          );
  }
}