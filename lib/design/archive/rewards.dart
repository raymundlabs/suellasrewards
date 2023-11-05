import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';

class RewardsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return Container(
      width: double.infinity,
      child: SingleChildScrollView( // Wrap the content with SingleChildScrollView
        child: Container(
          width: double.infinity,
          height: 896 * fem,
          child: Stack(
            children: [
            Positioned(
              // rewardsrPj (202:878)
              left: 0*fem,
              top: 0*fem,
              child: Container(
                width: 414*fem,
                height: 896*fem,
                decoration: BoxDecoration (
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      // autogroupelfh9dj (TkpwgnEpDRQLyxmeekeLFH)
                      padding: EdgeInsets.fromLTRB(33*fem, 54.77*fem, 50.14*fem, 41.36*fem),
                      width: double.infinity,
                      decoration: BoxDecoration (
                        color: Color(0xff2f6e53),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
               
                          Container(
                            // autogroupcb11LVF (TkpwwmoqJ29DnGvNphCB11)
                            margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 1.86*fem, 32*fem),
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // btnbackfGd (202:999)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 84*fem, 0*fem),
                                  width: 30*fem,
                                  height: 30*fem,
                                  child: Image.asset(
                                    'assets/design/images/btn-back-VhT.png',
                                    width: 30*fem,
                                    height: 30*fem,
                                  ),
                                ),
                                Container(
                                  // suellaslogowhite1Z77 (4:16607)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 75*fem, 0*fem),
                                  width: 127*fem,
                                  height: 50*fem,
                                  child: Image.asset(
                                    'assets/design/images/suellas-logo-white-1-LGh.png',
                                    fit: BoxFit.cover,
                                  ),
                                ),
                                Container(
                                  // iconlyboldfilterG1X (202:997)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 4.22*fem),
                                  width: 20*fem,
                                  height: 17.78*fem,
                                  child: Image.asset(
                                    'assets/design/images/iconly-bold-filter.png',
                                    width: 20*fem,
                                    height: 17.78*fem,
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // rewardsZmK (202:1016)
                            margin: EdgeInsets.fromLTRB(17.14*fem, 0*fem, 0*fem, 17.23*fem),
                            child: Text(
                              'Rewards',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont (
                                'Inter',
                                fontSize: 16*ffem,
                                fontWeight: FontWeight.w700,
                                height: 1.25*ffem/fem,
                                letterSpacing: 1*fem,
                                color: Color(0xffffffff),
                              ),
                            ),
                          ),
                          Container(
                            // autogroupxsur4CH (Tkpx6gief7yGGT4nbuxsuR)
                            margin: EdgeInsets.fromLTRB(53*fem, 0*fem, 34.86*fem, 0*fem),
                            width: double.infinity,
                            height: 160.42*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // rectangle39374m6h (202:980)
                                  left: 0*fem,
                                  top: 4.7749023438*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 250*fem,
                                      height: 152*fem,
                                      child: Container(
                                        decoration: BoxDecoration (
                                          borderRadius: BorderRadius.circular(10*fem),
                                          color: Color(0xffffffff),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // sicon1rP3 (4:16617)
                                  left: 142.6625976562*fem,
                                  top: 0*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 107.31*fem,
                                      height: 160.42*fem,
                                      child: Image.asset(
                                        'assets/design/images/s-icon-1.png',
                                        width: 107.31*fem,
                                        height: 160.42*fem,
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // suellasrewardMah (202:981)
                                  left: 23*fem,
                                  top: 13.7749023438*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 118*fem,
                                      height: 20*fem,
                                      child: Text(
                                        'SUELLAS REWARD',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 11*ffem,
                                          fontWeight: FontWeight.w700,
                                          height: 1.8181818182*ffem/fem,
                                          letterSpacing: 1.25*fem,
                                          color: Color(0xff00613a),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group480954472B3 (202:984)
                                  left: 22*fem,
                                  top: 92.7749023438*fem,
                                  child: Container(
                                    width: 133*fem,
                                    height: 18.34*fem,
                                    decoration: BoxDecoration (
                                      borderRadius: BorderRadius.circular(10*fem),
                                    ),
                                    child: Stack(
                                      children: [
                                        Positioned(
                                          // rectangle39372ipZ (202:985)
                                          left: 3*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 130*fem,
                                              height: 18*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(10*fem),
                                                  border: Border.all(color: Color(0x0a000000)),
                                                  color: Color(0xc9d8d8d8),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          // rectangle39373cQ9 (202:986)
                                          left: 0*fem,
                                          top: 0*fem,
                                          child: Align(
                                            child: SizedBox(
                                              width: 73.82*fem,
                                              height: 18.34*fem,
                                              child: Container(
                                                decoration: BoxDecoration (
                                                  borderRadius: BorderRadius.circular(10*fem),
                                                  color: Color(0xff57cc99),
                                                ),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // starstonextrewards7bo (202:987)
                                  left: 25*fem,
                                  top: 120.7749023438*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 111*fem,
                                      height: 20*fem,
                                      child: Text(
                                        '65 Stars to Next Rewards',
                                        textAlign: TextAlign.center,
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 9*ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 2.2222222222*ffem/fem,
                                          color: Color(0xff00613a),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // group48095456bWy (4:16635)
                                  left: 26.5*fem,
                                  top: 51.7749023438*fem,
                                  child: Container(
                                    width: 87*fem,
                                    height: 21*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // VMT (202:983)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 1*fem),
                                          child: Text(
                                            '35',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 26*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 0.7692307692*ffem/fem,
                                              letterSpacing: 1*fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                        Container(
                                          // Bzy (202:990)
                                          margin: EdgeInsets.fromLTRB(0*fem, 1*fem, 0*fem, 0*fem),
                                          child: Text(
                                            '/150',
                                            textAlign: TextAlign.center,
                                            style: SafeGoogleFont (
                                              'Inter',
                                              fontSize: 21*ffem,
                                              fontWeight: FontWeight.w700,
                                              height: 0.9523809524*ffem/fem,
                                              letterSpacing: 1*fem,
                                              color: Color(0xff000000),
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                Positioned(
                                  // star3JJu (202:991)
                                  left: 175*fem,
                                  top: 39.7749023438*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 36*fem,
                                      height: 36*fem,
                                      child: Image.asset(
                                        'assets/design/images/star-3.png',
                                        width: 36*fem,
                                        height: 36*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                    Container(
                      // autogroupyf6xoWZ (Tkpy75D2aoEoBrhzkLYf6X)
                      padding: EdgeInsets.fromLTRB(38*fem, 65*fem, 43*fem, 27*fem),
                      width: double.infinity,
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // group48095459VeH (4:29970)
                            margin: EdgeInsets.fromLTRB(10*fem, 0*fem, 98*fem, 35*fem),
                            width: double.infinity,
                            height: 62*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupychu16q (Tkpz9Not32f2km6D8Gychu)
                                  margin: EdgeInsets.fromLTRB(0*fem, 1.67*fem, 17.99*fem, 0*fem),
                                  width: 42.01*fem,
                                  height: 50.34*fem,
                                  child: Image.asset(
                                    'assets/design/images/auto-group-ychu.png',
                                    width: 42.01*fem,
                                    height: 50.34*fem,
                                  ),
                                ),
                                Container(
                                  // autogroupzbfdhkM (TkpzD3NSXDj4rvgZkDZBFD)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // get20offbasiccleandtu (204:1022)
                                        margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 0*fem, 3*fem),
                                        child: Text(
                                          'Get 20% Off Basic Clean',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.4285714286*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogroupnlp1wPo (TkpzH3Fn9FFqLk4E4LNLP1)
                                        width: 144*fem,
                                        height: 39*fem,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // openonlytowalkinstK3 (204:1023)
                                              left: 0*fem,
                                              top: 0*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 123*fem,
                                                  height: 20*fem,
                                                  child: Text(
                                                    'Open only to walk-ins',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.6666666667*ffem/fem,
                                                      color: Color(0x91000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              // validseptember1302023A1f (204:1024)
                                              left: 0*fem,
                                              top: 19*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 144*fem,
                                                  height: 20*fem,
                                                  child: Text(
                                                    'Valid: September 1 - 30, 2023',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 2*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group48095458q7o (4:29969)
                            margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 4*fem, 41*fem),
                            width: double.infinity,
                            height: 82*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // autogroupwwjw9uB (TkpyJQDVBCudt1GNJLWwJw)
                                  margin: EdgeInsets.fromLTRB(0*fem, 6.67*fem, 11.99*fem, 0*fem),
                                  width: 42.01*fem,
                                  height: 51.34*fem,
                                  child: Image.asset(
                                    'assets/design/images/auto-group-wwjw.png',
                                    width: 42.01*fem,
                                    height: 51.34*fem,
                                  ),
                                ),
                                Container(
                                  // autogroupdj9vGD7 (TkpyNESSEKD3AzkNmNDJ9V)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // offonyour2ndpairofdeepclean1gV (205:1026)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 3*fem),
                                        child: Text(
                                          '10% Off on your 2nd Pair of Deep Clean',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.4285714286*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        // autogrouphej9uG5 (TkpySUpMhiarS3xWr7hej9)
                                        width: 222*fem,
                                        height: 59*fem,
                                        child: Stack(
                                          children: [
                                            Positioned(
                                              // pluscollectdoublestarsondeepcl (207:928)
                                              left: 0*fem,
                                              top: 0*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 222*fem,
                                                  height: 40*fem,
                                                  child: Text(
                                                    'Plus collect double stars on deep clean service',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 12*ffem,
                                                      fontWeight: FontWeight.w400,
                                                      height: 1.6666666667*ffem/fem,
                                                      color: Color(0x91000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                            Positioned(
                                              // validseptember1152023hxd (207:929)
                                              left: 1*fem,
                                              top: 39*fem,
                                              child: Align(
                                                child: SizedBox(
                                                  width: 142*fem,
                                                  height: 20*fem,
                                                  child: Text(
                                                    'Valid: September 1 - 15, 2023',
                                                    style: SafeGoogleFont (
                                                      'Inter',
                                                      fontSize: 10*ffem,
                                                      fontWeight: FontWeight.w600,
                                                      height: 2*ffem/fem,
                                                      color: Color(0xff000000),
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // group48095460PqT (4:29977)
                            margin: EdgeInsets.fromLTRB(9*fem, 0*fem, 47*fem, 40*fem),
                            width: double.infinity,
                            height: 66*fem,
                            child: Row(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Container(
                                  // autogroupu6b982M (TkpygyQD5ZddftSHUnu6b9)
                                  margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.99*fem, 1.33*fem),
                                  width: 42.01*fem,
                                  height: 51.34*fem,
                                  child: Image.asset(
                                    'assets/design/images/auto-group-u6b9.png',
                                    width: 42.01*fem,
                                    height: 51.34*fem,
                                  ),
                                ),
                                Container(
                                  // autogroupmrqdRXF (TkpykUJNzqUJbE8zFeMrqD)
                                  height: double.infinity,
                                  child: Column(
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      Container(
                                        // offonshoerestorationNBb (4:29986)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          '5% Off on Shoe Restoration',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 14*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 1.4285714286*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3*fem,
                                      ),
                                      Text(
                                        // opentosmbaguioandsmurdanetabrM (4:29978)
                                        'Open to SM Baguio and SM Urdaneta b',
                                        style: SafeGoogleFont (
                                          'Inter',
                                          fontSize: 12*ffem,
                                          fontWeight: FontWeight.w400,
                                          height: 1.6666666667*ffem/fem,
                                          color: Color(0x91000000),
                                        ),
                                      ),
                                      SizedBox(
                                        height: 3*fem,
                                      ),
                                      Container(
                                        // validseptember1152023ZWy (4:29979)
                                        margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                        child: Text(
                                          'Valid: September 1 - 15, 2023',
                                          style: SafeGoogleFont (
                                            'Inter',
                                            fontSize: 10*ffem,
                                            fontWeight: FontWeight.w600,
                                            height: 2*ffem/fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Container(
                            // autogroupmlgxsGm (TkpxeW8y4Qz2vAARFmMLgX)
                            width: double.infinity,
                            height: 71*fem,
                            child: Stack(
                              children: [
                                Positioned(
                                  // group48095461pSu (4:29987)
                                  left: 9*fem,
                                  top: 0*fem,
                                  child: Container(
                                    width: 277*fem,
                                    height: 66*fem,
                                    child: Row(
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // autogroupsr958yP (TkpxoAZCa8y2d6UMGMSr95)
                                          margin: EdgeInsets.fromLTRB(0*fem, 0*fem, 11.99*fem, 1.33*fem),
                                          width: 42.01*fem,
                                          height: 51.34*fem,
                                          child: Image.asset(
                                            'assets/design/images/auto-group-sr95.png',
                                            width: 42.01*fem,
                                            height: 51.34*fem,
                                          ),
                                        ),
                                        Container(
                                          // autogroupu1xm3aZ (TkpxrkHZmsRP8r7sxkU1Xm)
                                          height: double.infinity,
                                          child: Column(
                                            crossAxisAlignment: CrossAxisAlignment.start,
                                            children: [
                                              Container(
                                                // offonreglueyz1 (4:29996)
                                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                child: Text(
                                                  '5% Off on Re-Glue',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 14*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 1.4285714286*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3*fem,
                                              ),
                                              Text(
                                                // opentosmbaguioandsmurdanetab4k (4:29988)
                                                'Open to SM Baguio and SM Urdaneta b',
                                                style: SafeGoogleFont (
                                                  'Inter',
                                                  fontSize: 12*ffem,
                                                  fontWeight: FontWeight.w400,
                                                  height: 1.6666666667*ffem/fem,
                                                  color: Color(0x91000000),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 3*fem,
                                              ),
                                              Container(
                                                // validseptember1152023x5F (4:29989)
                                                margin: EdgeInsets.fromLTRB(1*fem, 0*fem, 0*fem, 0*fem),
                                                child: Text(
                                                  'Valid: September 1 - 15, 2023',
                                                  style: SafeGoogleFont (
                                                    'Inter',
                                                    fontSize: 10*ffem,
                                                    fontWeight: FontWeight.w600,
                                                    height: 2*ffem/fem,
                                                    color: Color(0xff000000),
                                                  ),
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
                                  // group480954572qo (4:29857)
                                  left: 0*fem,
                                  top: 15*fem,
                                  child: Align(
                                    child: SizedBox(
                                      width: 333*fem,
                                      height: 56*fem,
                                      child: Image.asset(
                                        'assets/design/images/group-48095457-HLm.png',
                                        width: 333*fem,
                                        height: 56*fem,
                                      ),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
           

            ],
          ),
        ),
      ),
    );
  }
}

