import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/location.dart';
import 'package:suellas/customer/inbox.dart';

class CustomerHomeScreen extends StatelessWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final String qrData = "ABC123";
    
    return Scaffold(
      // appBar: CustomAppBar(fem: fem, ffem: ffem),
      backgroundColor: Colors.white,

      body: SingleChildScrollView(
      child: Column(
      children: [
          Container(
            // scanqrcustomer5Ym (4:30439)
            width: double.infinity,
            height: 410 * fem,
            child:
             Container(
              // rewardsRcd (4:30440)
              padding: EdgeInsets.fromLTRB(29 * fem, 39.77 * fem, 40.14 * fem, 27 * fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
              color: Color(0xff2f6e53),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                // autogroupcb11LVF (TkpwwmoqJ29DnGvNphCB11)1
          
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Container(
                        // btnbackfGd (202:999)
             
                        width: 30 * fem,
                        height: 30 * fem,
                        child: Image.asset(
                          'assets/design/images/btn-back.png',
                          width: 30 * fem,
                          height: 30 * fem,
                        ),
                      ),
                      Expanded(
                        child: Center(
                          child: Container(
                            // suellaslogowhite1Z77 (4:16607)
                            width: 127 * fem,
                            height: 50 * fem,
                            child: Image.asset(
                              'assets/design/images/suellas-logo-white-1.png',
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                      ),
                      Container(
                        // iconlyboldfilterG1X (202:997)
       
                        width: 20 * fem,
                        height: 17.78 * fem,
                        child: Image.asset(
                          'assets/design/images/iconly-bold-filter.png',
                          width: 20 * fem,
                          height: 17.78 * fem,
                        ),
                      ),
                    ],
                  ),
                ),
             Container(
            // rewardsZmK (202:1016)
            margin: EdgeInsets.fromLTRB(17.14*fem, 30*fem, 0*fem, 17.23*fem),
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
          ),
        ),

        




      ),



  bottomNavigationBar: _buildBottomNavigationBar(fem, ffem, context),


    );
  }


  


  Widget _buildBottomNavigationBar(double fem, double ffem, BuildContext context) {
    return Container(
      width: 333 * fem,
      height: 50 * fem,
      padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
      margin: EdgeInsets.fromLTRB(44 * fem, 20.14 * fem, 44 * fem, 20.14 * fem),
      decoration: BoxDecoration(
        color: Color(0xFFF0F0F3),
        borderRadius: BorderRadius.circular(50),
        boxShadow: [
          BoxShadow(
            color: Color(0xFFFFFFFF),
            blurRadius: 20,
            offset: Offset(5, 5),
            spreadRadius: 0,
          ),
          BoxShadow(
            color: Color(0xFFFFFFFF),
            blurRadius: 20,
            offset: Offset(-5, -5),
            spreadRadius: 0,
          ),
        ],
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               GestureDetector(
              onTap: () {
                // Implement the behavior to reset or return to the current screen
                // For example, you can scroll to the top of the current screen
                // or refresh the content.
                // _scrollToTopOrRefresh(); // Call a method to scroll to the top or refresh the content
              },
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 1.0),
                child: Image.asset(
                  'assets/icons/images/iconly-regular-outline-ticket-star.png',
              width: 18,
                height: 18,
                ),
              ),
              ),
     
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => InboxScreen()), // Navigate to inbox screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/iconly-regular-outline-message-8Pb.png',
                width: 18,
                height: 18,
              ),
            ),
          ),
               GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => QRScreen()), // Navigate to QR screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/iconly-regular-outline-scan-q2q.png',
                width: 28,
                height: 28,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => LocationScreen()), // Navigate to location screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/iconly-regular-outline-location.png',
                width: 18,
                height: 18,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ProfileScreen()), // Navigate to profile screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/iconly-regular-light-profile.png',
                width: 18,
                height: 18,
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class Rectangle39384 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: 421,
          height: 410,
          decoration: BoxDecoration(color: Color(0xFF2F6E53)),
        ),
      ],
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double fem;
  final double ffem;

  const CustomAppBar({
    required this.fem,
    required this.ffem,
  });

  @override
  Size get preferredSize => Size.fromHeight(100 * fem);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title: Container(
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1.86 * fem, 42 * fem),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 115 * fem, 0 * fem),
              width: 30 * fem,
              height: 30 * fem,
              child: Image.asset(
                'assets/design/images/btn-back.png',
                width: 30 * fem,
                height: 30 * fem,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 112 * fem, 0 * fem),
              child: Text(
                'Scan QR',
                style: TextStyle(
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
              width: 20 * fem,
              height: 20 * fem,
              child: Image.asset(
                'assets/design/images/iconly-curved-outline-edit-square.png',
                width: 20 * fem,
                height: 20 * fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

