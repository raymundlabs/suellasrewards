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
        // 8XT (4:22229)
        width: double.infinity,
        height: 552*fem,
        decoration: BoxDecoration (
          color: Color(0xffffffff),
        ),
        child: Stack(
          children: [
            Positioned(
              // line7eH (4:22230)
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
              // bulkon1 (4:22231)
              left: 96*fem,
              top: 75*fem,
              child: Align(
                child: SizedBox(
                  width: 221*fem,
                  height: 51*fem,
                  child: Text(
                    'Curved | Bulk',
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
              // linet2m (4:22232)
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
              // iconlycurvedbulkarrowrightcirc (4:22233)
              left: 1296.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-right-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowrightVYM (4:22237)
              left: 1408.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-right.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowrightsqua (4:22241)
              left: 1352.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-right-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowright2J8R (4:22245)
              left: 1464.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-right-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowright3zX3 (4:22249)
              left: 1520.25*fem,
              top: 277*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-right-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowupcircleu (4:22253)
              left: 1296.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-up-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowupC7K (4:22257)
              left: 1408.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowupsquareJ (4:22261)
              left: 1352.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-up-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowup2dCd (4:22265)
              left: 1464.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-up-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowup3Lcq (4:22269)
              left: 1520.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-up-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowleftcircl (4:22273)
              left: 1296.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-left-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowleftmi9 (4:22277)
              left: 1408.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-left.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowleftsquar (4:22281)
              left: 1352.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-left-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowleft2PDj (4:22285)
              left: 1464.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-left-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowleft3Hpu (4:22289)
              left: 1520.25*fem,
              top: 389*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-left-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowdowncircl (4:22293)
              left: 1296.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-down-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowdownJED (4:22297)
              left: 1408.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowdownsquar (4:22301)
              left: 1352.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-down-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowdown27xM (4:22305)
              left: 1464.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-down-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkarrowdown3q7f (4:22309)
              left: 1520.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-arrow-down-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulksearch98M (4:22313)
              left: 96.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-search.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkfolderroT (4:22317)
              left: 152.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-folder.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkwalletMkD (4:22321)
              left: 208.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-wallet.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkgraphsiZ (4:22328)
              left: 264.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-graph.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkbookmarknqX (4:22332)
              left: 320.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-bookmark.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkcategoryWWd (4:22336)
              left: 376.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-category.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkhomeR7o (4:22340)
              left: 432.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-home.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulknotificationis (4:22344)
              left: 488.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-notification.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkchat2NV (4:22348)
              left: 544.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-chat.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkheartL8H (4:22352)
              left: 600.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-heart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkpapernW5 (4:22356)
              left: 656.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-paper.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkticketstarJDX (4:22360)
              left: 656.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-ticket-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkticketQXT (4:22364)
              left: 656.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-ticket.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkfiltervVo (4:22370)
              left: 656.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-filter.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkvoiceRhT (4:22374)
              left: 96.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-voice.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkpapernegativeX (4:22378)
              left: 768.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-paper-negative.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkmoresquarer25 (4:22382)
              left: 768.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-more-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkvideoAHf (4:22386)
              left: 320.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-video.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkdeleteTnZ (4:22390)
              left: 208.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-delete.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkimagePAR (4:22394)
              left: 768.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-image.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkpaperdownload4 (4:22398)
              left: 880.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-paper-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkbuyAKb (4:22402)
              left: 880.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-buy.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulk2userULH (4:22407)
              left: 880.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-2-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkcallz3j (4:22411)
              left: 880.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-call.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkeditsquareJaD (4:22413)
              left: 320.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-edit-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkpaperplusR93 (4:22417)
              left: 712.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-paper-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkmorecircleXSy (4:22421)
              left: 712.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-more-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkcameraqiZ (4:22425)
              left: 712.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-camera.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkfilter3jJ9 (4:22429)
              left: 712.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-filter-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkvoice3q6H (4:22435)
              left: 152.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-voice-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkpaperfailYFb (4:22440)
              left: 824.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-paper-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkdiscounteZX (4:22444)
              left: 824.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-discount.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkadduserNEd (4:22448)
              left: 824.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-add-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkimage35uj (4:22452)
              left: 824.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-image-3.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkeditbt5 (4:22457)
              left: 264.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-edit.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkpaperupload7rR (4:22462)
              left: 936.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-paper-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkdangercircleR6 (4:22466)
              left: 992.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-danger-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulk3userXfF (4:22470)
              left: 936.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-3-user.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkcallingT37 (4:22474)
              left: 936.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-calling.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkplayZbw (4:22478)
              left: 376.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-play.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulksendUiu (4:22482)
              left: 992.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-send.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkinfosquarebHj (4:22486)
              left: 936.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-info-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkloginhLm (4:22490)
              left: 992.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-login.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkcallmissedoeh (4:22494)
              left: 992.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-call-missed.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkshielddoneX4u (4:22498)
              left: 432.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-shield-done.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkswapEED (4:22502)
              left: 1104.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-swap.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkclosesquare96H (4:22506)
              left: 1104.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-close-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkdownloadf4d (4:22510)
              left: 1104.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-download.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkworkyLD (4:22514)
              left: 1160.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-work.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkshowUGy (4:22518)
              left: 544.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-show.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkpasswordP93 (4:22522)
              left: 1048.25*fem,
              top: 221*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-password.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkdangertriangle (4:22526)
              left: 1048.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-danger-triangle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulklogout1RK (4:22530)
              left: 1048.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-logout.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkcallsilentKS1 (4:22534)
              left: 1048.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-call-silent.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkshieldfailqfF (4:22538)
              left: 488.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-shield-fail.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulklockkXK (4:22542)
              left: 1104.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-lock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkticksquarefPP (4:22546)
              left: 1160.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-tick-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkuploady9B (4:22550)
              left: 1160.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-upload.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkunlockgpH (4:22554)
              left: 1160.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-unlock.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkhideCnd (4:22559)
              left: 600.25*fem,
              top: 387.6040039062*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-hide.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkscanXK7 (4:22563)
              left: 96.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-scan.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkactivityqah (4:22567)
              left: 152.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-activity.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkcalendarZFo (4:22572)
              left: 208.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-calendar.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkmessage4TT (4:22577)
              left: 264.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-message.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkprofilemMs (4:22581)
              left: 768.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-profile.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkplustSV (4:22585)
              left: 376.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-plus.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkchart1GD (4:22589)
              left: 432.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-chart.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkgame8Lq (4:22593)
              left: 488.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-game.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkbagSsK (4:22599)
              left: 600.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-bag.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkstarNFB (4:22603)
              left: 600.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-star.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkbag2H7F (4:22611)
              left: 544.25*fem,
              top: 276.5346679688*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-bag-2.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkdiscoveryb7w (4:22616)
              left: 96.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-discovery.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulktimesquareuPX (4:22620)
              left: 320.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-time-square.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulklocationpFb (4:22624)
              left: 152.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-location.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulktimecircleXQu (4:22628)
              left: 376.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-time-circle.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkdocumentDoX (4:22632)
              left: 208.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-document.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkvolumeup8fb (4:22636)
              left: 432.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-volume-up.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulksetting3nZ (4:22640)
              left: 264.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-setting.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkvolumedownx8q (4:22644)
              left: 488.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-volume-down.png',
                    width: 24*fem,
                    height: 24*fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // iconlycurvedbulkvolumeoffTrH (4:22648)
              left: 544.25*fem,
              top: 333*fem,
              child: Align(
                child: SizedBox(
                  width: 24*fem,
                  height: 24*fem,
                  child: Image.asset(
                    'assets/icons/images/iconly-curved-bulk-volume-off.png',
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