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
        // V7X (4:24504)
        width: double.infinity,
        height: 594*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // lineGnV (4:24505)
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
              // lightborderywo (4:24506)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 366*fem,
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
                          text: 'Light ',
                          style: SafeGoogleFont (
                            'Plus Jakarta Display',
                            fontSize: 40*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: '(',
                          style: SafeGoogleFont (
                            'Plus Jakarta Display',
                            fontSize: 40*ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2575*ffem/fem,
                            color: Color(0xff000000),
                          ),
                        ),
                        TextSpan(
                          text: 'Outline',
                        ),
                        TextSpan(
                          text: ')',
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
              // iconlysharpoutlinearrowrightci (4:24507)
              left: 1296.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-right-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowrightCL (4:24510)
              left: 1408.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-right.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowrightsq (4:24513)
              left: 1352.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-right-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowright2o (4:24517)
              left: 1464.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-right-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowright3K (4:24519)
              left: 1520.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-right-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowupcircl (4:24523)
              left: 1296.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-up-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowupunq (4:24526)
              left: 1408.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowupsquar (4:24529)
              left: 1352.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-up-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowup27tu (4:24533)
              left: 1464.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-up-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowup3SRP (4:24535)
              left: 1520.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-up-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowleftcir (4:24539)
              left: 1296.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-left-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowleftSZo (4:24542)
              left: 1408.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-left.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowleftsqu (4:24545)
              left: 1352.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-left-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowleft2qr (4:24549)
              left: 1464.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-left-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowleft3ZH (4:24551)
              left: 1520.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-left-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowdowncir (4:24555)
              left: 1296.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-down-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowdowny5s (4:24558)
              left: 1408.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowdownsqu (4:24561)
              left: 1352.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-down-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowdown2MM (4:24565)
              left: 1464.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-down-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinearrowdown3sK (4:24567)
              left: 1520.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-arrow-down-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // lineB5T (4:24571)
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
              // iconlysharpoutlinesearchJA5 (4:24572)
              left: 96.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-search.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinefolderoMj (4:24575)
              left: 152.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-folder.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinewalletWX3 (4:24578)
              left: 208.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-wallet.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinegraph1To (4:24583)
              left: 264.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-graph.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinebookmarkuZB (4:24586)
              left: 320.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-bookmark.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinecategoryDJy (4:24589)
              left: 376.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-category.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinehomeimX (4:24594)
              left: 432.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-home.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinehome22nD (4:24598)
              left: 320.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-home-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinenotification (4:24600)
              left: 488.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-notification.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinenotification (4:24603)
              left: 824.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-notification-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinenotification (4:24607)
              left: 768.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-notification-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinechat4MX (4:24610)
              left: 544.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-chat.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinechat2xxh (4:24612)
              left: 376.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-chat-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineheartf6R (4:24617)
              left: 600.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-heart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineheart2mv9 (4:24619)
              left: 432.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-heart2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinepaperHdb (4:24621)
              left: 656.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-paper.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineticketstarCk (4:24627)
              left: 656.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-ticket-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineticketWWM (4:24630)
              left: 656.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-ticket.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinefilterd5B (4:24635)
              left: 656.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-filter.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinevoicejtu (4:24640)
              left: 96.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-voice.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinepapernegativ (4:24646)
              left: 768.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-paper-negative.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinemoresquareMQ (4:24650)
              left: 768.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-more-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinevideoFVs (4:24655)
              left: 320.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-video.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinedeleteMoo (4:24659)
              left: 208.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-delete.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinedelete2fT7 (4:24663)
              left: 208.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-delete-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineimagewfX (4:24667)
              left: 768.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-image.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinepaperdownloa (4:24671)
              left: 880.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-paper-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinepaperdownloa (4:24676)
              left: 880.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-paper-download-9zR.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinebuyEY9 (4:24682)
              left: 880.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-buy.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutline2userLLH (4:24684)
              left: 880.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-2-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinecall2yo (4:24689)
              left: 880.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-call.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineeditsquareYh (4:24691)
              left: 320.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-edit-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinepaperplus3P7 (4:24696)
              left: 712.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-paper-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinemorecirclekH (4:24701)
              left: 712.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-more-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinecameraqpm (4:24705)
              left: 712.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-camera.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinefilter39qT (4:24709)
              left: 712.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-filter-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinevoice3foo (4:24711)
              left: 152.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-voice-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinepaperfailZuB (4:24717)
              left: 824.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-paper-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinediscountGYh (4:24722)
              left: 824.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-discount.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineaddusergcR (4:24727)
              left: 824.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-add-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineimage3PFw (4:24732)
              left: 824.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-image-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineedith1j (4:24736)
              left: 264.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-edit.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinepaperuploadP (4:24739)
              left: 936.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-paper-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinepaperuploadV (4:24744)
              left: 936.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-paper-upload-Bhs.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinedangercircle (4:24750)
              left: 992.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-danger-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutline3userHPF (4:24754)
              left: 936.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-3-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinecallingyWy (4:24761)
              left: 936.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-calling.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineplayggH (4:24765)
              left: 376.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-play.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinecardjeZ (4:24768)
              left: 264.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-card.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinesenddV3 (4:24773)
              left: 992.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-send.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineinfosquareLe (4:24776)
              left: 936.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-info-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinelogin3Ym (4:24780)
              left: 992.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-login-feh.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineloginMZT (4:24784)
              left: 992.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-login.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinecallmissedT6 (4:24789)
              left: 992.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-call-missed.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineshielddoneMS (4:24793)
              left: 432.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-shield-done.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineswapTF7 (4:24796)
              left: 1104.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-swap.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineclosesquarek (4:24803)
              left: 1104.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-close-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinedownload4Vo (4:24807)
              left: 1104.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-download-oGV.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinedownloadxr5 (4:24811)
              left: 1104.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineworkUJd (4:24816)
              left: 1160.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-work.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineshowN97 (4:24821)
              left: 544.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-show.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinepasswordrpy (4:24824)
              left: 1048.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-password.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinedangertriang (4:24829)
              left: 1048.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-danger-triangle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinelogoutU5f (4:24833)
              left: 1048.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-logout.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinelogoutBEy (4:24837)
              left: 1048.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-logout-1zh.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinecallsilentsd (4:24842)
              left: 1048.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-call-silent.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineshieldfailNq (4:24845)
              left: 488.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-shield-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinelockGQq (4:24849)
              left: 1104.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-lock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineticksquarems (4:24853)
              left: 1160.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-tick-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineupload4rV (4:24856)
              left: 1160.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-upload-tHw.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineuploadBAR (4:24860)
              left: 1160.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineunlockUfK (4:24865)
              left: 1160.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-unlock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinehideng1 (4:24869)
              left: 600.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-hide.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinescantU9 (4:24875)
              left: 96.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-scan.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineqrCDw (4:24882)
              left: 96.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-qr.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineactivityguo (4:24892)
              left: 152.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-activity.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinecalendarz9o (4:24896)
              left: 208.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-calendar.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinemessageH8u (4:24907)
              left: 264.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-message.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineprofileNw3 (4:24910)
              left: 768.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-profile.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineemojiggq (4:24913)
              left: 544.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-emoji.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineavatarZVj (4:24916)
              left: 600.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-avatar.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlineplusFdT (4:24921)
              left: 376.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinechartYsT (4:24925)
              left: 432.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-chart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinegameTUd (4:24930)
              left: 488.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-game.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinebag9sF (4:24937)
              left: 600.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-bag.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinestarrWm (4:24940)
              left: 600.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinebag3yLV (4:24942)
              left: 488.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-bag-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinebag2gkh (4:24945)
              left: 544.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-bag-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinediscoveryyjo (4:24950)
              left: 96.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-discovery.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinetimesquaresq (4:24953)
              left: 320.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-time-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinelocationz97 (4:24956)
              left: 152.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-location.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinelocation26hw (4:24959)
              left: 152.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-location-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinetimecirclebu (4:24962)
              left: 376.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-time-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinedocumentvBB (4:24965)
              left: 208.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-document.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinevolumeup1iR (4:24969)
              left: 432.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-volume-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinesettingv4h (4:24973)
              left: 264.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-setting.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinesetting2RXF (4:24976)
              left: 656.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-setting-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinestar2viu (4:24979)
              left: 712.25*fem,
              top: 443.138671875*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-star-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinestar3EUh (4:24984)
              left: 1352.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-star-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinestar4jgM (4:24986)
              left: 1296.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-star-4.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinestar5rFB (4:24988)
              left: 1408.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-star-5.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinestar6mN9 (4:24990)
              left: 1464.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-star-6.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinestar7UnM (4:24992)
              left: 1520.25*fem,
              top: 445*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-star-7.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinevolumedownCC (4:24994)
              left: 488.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-volume-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlysharpoutlinevolumeoffuMs (4:24997)
              left: 544.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-sharp-outline-volume-off.png',
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