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
        // mKf (4:23990)
        width: double.infinity,
        height: 594*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // lineYzd (4:23991)
              left: 96.25*fem,
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
              // lightborder4TB (4:23992)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 280*fem,
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
                          text: 'Sharp | ',
                        ),
                        TextSpan(
                          text: 'Two tone',
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
              // iconlysharptwotonearrowrightci (4:23993)
              left: 1296.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-right-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowrightEu (4:23996)
              left: 1408.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-right.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowrightsq (4:23999)
              left: 1352.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-right-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowright2S (4:24003)
              left: 1464.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-right-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowright3k (4:24006)
              left: 1520.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-right-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowupcircl (4:24010)
              left: 1296.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-up-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowupk8y (4:24013)
              left: 1408.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowupsquar (4:24016)
              left: 1352.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-up-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowup2MPf (4:24020)
              left: 1464.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-up-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowup3GFj (4:24023)
              left: 1520.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-up-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowleftcir (4:24027)
              left: 1296.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-left-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowleftg4Z (4:24030)
              left: 1408.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-left.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowleftsqu (4:24033)
              left: 1352.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-left-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowleft2hE (4:24037)
              left: 1464.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-left-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowleft3CB (4:24040)
              left: 1520.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-left-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowdowncir (4:24044)
              left: 1296.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-down-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowdownbjF (4:24047)
              left: 1408.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowdownsqu (4:24050)
              left: 1352.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-down-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowdown2oa (4:24054)
              left: 1464.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-down-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonearrowdown3Gy (4:24057)
              left: 1520.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-arrow-down-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // lineXuj (4:24061)
              left: 1240.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 1*fem,
                  height: 248*fem,
                  child: Container(
                    decoration: BoxDecoration (
                      color: Color(0xffe6e9ee),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonesearch1K7 (4:24062)
              left: 96.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-search.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonefoldersMK (4:24065)
              left: 152.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-folder.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonewalletxdf (4:24068)
              left: 208.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-wallet.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonegraph4Ro (4:24073)
              left: 264.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-graph.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonebookmarkADw (4:24076)
              left: 320.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-bookmark.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonecategorypJV (4:24079)
              left: 376.25*fem,
              top: 221*fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(2.61*fem, 2.61*fem, 2.61*fem, 2.61*fem),
                width: 24*fem,
                height: 24*fem,
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupny9f8iV (SrE3q176oLMmSrHvRcnY9F)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3.21*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle1124TVs (4:24080)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 3.21*fem, 0*fem),
                            width: 7*fem,
                            height: 7*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff000000)),
                            ),
                          ),
                          Container(
                            // rectangle1125NMw (4:24081)
                            width: 8.57*fem,
                            height: 8.57*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0x66000000)),
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupbgmfv8Z (SrE3uqJPFx3Mro7qyBBgmF)
                      margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0.79*fem, 0*fem),
                      width: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // rectangle1126qWR (4:24082)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 4*fem, 0*fem),
                            width: 7*fem,
                            height: 7*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0x66000000)),
                            ),
                          ),
                          Container(
                            // rectangle1127AHo (4:24083)
                            width: 7*fem,
                            height: 7*fem,
                            decoration: BoxDecoration (
                              border: Border.all(color: Color(0xff000000)),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonehomeWMf (4:24084)
              left: 432.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-home.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonehome2p7T (4:24088)
              left: 320.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-home-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonenotification (4:24091)
              left: 488.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-notification.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonenotification (4:24094)
              left: 824.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-notification-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonenotification (4:24098)
              left: 768.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-notification-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonechatQzm (4:24102)
              left: 544.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-chat.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonechat27eH (4:24107)
              left: 376.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-chat-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneheartdMj (4:24112)
              left: 600.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-heart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneheart29L5 (4:24115)
              left: 432.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-heart2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonepaperT5s (4:24118)
              left: 656.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-paper.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneticketstarNT (4:24124)
              left: 656.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-ticket-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneticketUmf (4:24127)
              left: 656.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-ticket.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonefilteraJu (4:24132)
              left: 656.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-filter.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonevoicefr9 (4:24137)
              left: 96.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-voice.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonepapernegativ (4:24144)
              left: 768.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-paper-negative.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonemoresquare4t (4:24148)
              left: 768.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-more-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonevideoMMb (4:24153)
              left: 320.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-video.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonedeleteeLh (4:24157)
              left: 208.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-delete.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonedelete29oF (4:24161)
              left: 208.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-delete-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneimageTZ3 (4:24165)
              left: 768.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-image.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonepaperdownloa (4:24169)
              left: 880.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-paper-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonepaperdownloa (4:24173)
              left: 880.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-paper-download-Hay.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonebuyVe9 (4:24180)
              left: 880.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-buy.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotone2userCYZ (4:24185)
              left: 880.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-2-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonecallWJM (4:24190)
              left: 880.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-call.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneeditsquareQu (4:24193)
              left: 320.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-edit-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonepaperplusJzu (4:24198)
              left: 712.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-paper-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonemorecircleDM (4:24202)
              left: 712.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-more-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonecameraJtR (4:24206)
              left: 712.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-camera.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonefilter31H3 (4:24210)
              left: 712.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-filter-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonevoice3iBT (4:24213)
              left: 152.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-voice-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonepaperfailDP7 (4:24219)
              left: 824.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-paper-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonediscountvYR (4:24223)
              left: 824.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-discount.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneadduserDnR (4:24228)
              left: 824.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-add-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneimage3KaZ (4:24233)
              left: 824.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-image-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneeditRtV (4:24237)
              left: 264.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-edit.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonepaperuploadK (4:24240)
              left: 936.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-paper-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonepaperuploadd (4:24244)
              left: 936.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-paper-upload-Dgu.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonedangercircle (4:24251)
              left: 992.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-danger-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotone3usere8y (4:24255)
              left: 936.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-3-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonecallingXyT (4:24262)
              left: 936.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-calling.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneplay3B7 (4:24266)
              left: 376.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-play.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonecardYNm (4:24269)
              left: 264.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-card.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonesend46D (4:24274)
              left: 992.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-send.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneinfosquarexh (4:24277)
              left: 936.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-info-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneloginGCH (4:24281)
              left: 992.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-login.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneloginmeq (4:24285)
              left: 992.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-login-vKK.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonecallmissed59 (4:24290)
              left: 992.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-call-missed.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneshielddoneNe (4:24293)
              left: 432.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-shield-done.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneswapUhf (4:24296)
              left: 1104.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-swap.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneclosesquareN (4:24303)
              left: 1104.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-close-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonedownloadtFb (4:24307)
              left: 1104.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-download-qso.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonedownloadzZX (4:24311)
              left: 1104.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonework6sT (4:24316)
              left: 1160.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-work.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneshowPbf (4:24321)
              left: 544.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-show.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonepasswordHh3 (4:24324)
              left: 1048.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-password.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonedangertriang (4:24329)
              left: 1048.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-danger-triangle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonelogouthEy (4:24333)
              left: 1048.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-logout-Epq.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonelogoutc73 (4:24337)
              left: 1048.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-logout.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonecallsilentuM (4:24342)
              left: 1048.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-call-silent.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneshieldfailbz (4:24346)
              left: 488.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-shield-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonelockWLq (4:24349)
              left: 1104.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-lock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneticksquarece (4:24353)
              left: 1160.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-tick-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneupload7bX (4:24356)
              left: 1160.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-upload-i4h.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneuploadcoB (4:24360)
              left: 1160.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneunlock7zq (4:24365)
              left: 1160.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-unlock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonehideqA9 (4:24369)
              left: 600.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-hide.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonescanXof (4:24375)
              left: 96.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-scan.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneqr1D3 (4:24382)
              left: 96.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-qr.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneactivityVP7 (4:24392)
              left: 152.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-activity.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonecalendara9f (4:24396)
              left: 208.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-calendar.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonemessagercy (4:24407)
              left: 264.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-message.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneprofileM3w (4:24410)
              left: 768.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-profile.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneemojiFQD (4:24413)
              left: 544.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-emoji.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneavatarMi9 (4:24416)
              left: 600.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-avatar.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotoneplusex9 (4:24421)
              left: 376.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonechartMrZ (4:24424)
              left: 432.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-chart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonegamef6Z (4:24429)
              left: 488.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-game.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonebagZSq (4:24435)
              left: 600.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-bag.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonestarGMF (4:24438)
              left: 600.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonebag3a73 (4:24441)
              left: 488.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-bag-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonebag2UTK (4:24444)
              left: 544.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-bag-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonediscoveryaFT (4:24449)
              left: 96.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-discovery.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonetimesquare5x (4:24452)
              left: 320.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-time-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonelocationaem (4:24455)
              left: 152.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-location.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonelocation2Hp5 (4:24458)
              left: 152.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-location-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonetimecircleCA (4:24461)
              left: 376.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-time-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonedocumenttYy (4:24464)
              left: 208.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-document.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonevolumeupxHw (4:24468)
              left: 432.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-volume-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonesettingpqw (4:24472)
              left: 264.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-setting.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonesetting2w9s (4:24475)
              left: 656.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-setting-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonestar2qW9 (4:24478)
              left: 712.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-star-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonestar3LSu (4:24483)
              left: 1352.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-star-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonestar4eCh (4:24486)
              left: 1296.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-star-4.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonestar5MN1 (4:24489)
              left: 1408.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-star-5.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonestar6Tvq (4:24492)
              left: 1464.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-star-6.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonestar7Zys (4:24495)
              left: 1520.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-star-7.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonevolumedownGt (4:24498)
              left: 488.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-volume-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharptwotonevolumeoffa8H (4:24501)
              left: 544.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-two-tone-volume-off.png',
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