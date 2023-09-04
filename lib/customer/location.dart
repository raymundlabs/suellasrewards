import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/inbox.dart';
import 'package:suellas/customer/home.dart';
class LocationScreen extends StatelessWidget {
  @override
Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final String qrData = "ABC123";
    
    return Scaffold(
      
        backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            // scanqrcustomer5Ym (4:30439)
            width: double.infinity,
            height: 896 * fem,
            child: Container(
              // rewardsRcd (4:30440)
              padding: EdgeInsets.fromLTRB(29 * fem, 39.77 * fem, 40.14 * fem, 27 * fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color(0xffffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Container(
                    // autogroupd3xsEru (Tkq3ewdMaYFQqmMbN6D3xs)
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1.86 * fem, 42 * fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // btnbackZeH (4:30442)
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
                          // scanqrfxD (4:30479)
                          margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 112 * fem, 0 * fem),
                          child: Text(
                            'Scan QR',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 16 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          // iconlycurvedoutlineeditsquareN (4:30441)
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
                  Container(
                    // rewardsGh7 (4:30454)
                    margin: EdgeInsets.fromLTRB(10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                    child: Text(
                      'Rewards',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 16 * ffem,
                        fontWeight: FontWeight.w700,
                        height: 1.25 * ffem / fem,
                        letterSpacing: 1 * fem,
                        color: Color(0xffffffff),
                      ),
                    ),
                  ),
                  Container(
                    // osirisqrZw7 (4:30531)
                    margin: EdgeInsets.fromLTRB(11.14 * fem, 0 * fem, 0 * fem, 36 * fem),
                    child: Text(
                      'Osiris QR',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 20 * ffem,
                        fontWeight: FontWeight.w600,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff57cc99),
                      ),
                    ),
                  ),
                  Container(
                    // scanthisqrcodewhenyouavailofan (4:30530)
                    margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 5.86 * fem, 33 * fem),
                    constraints: BoxConstraints(
                      maxWidth: 287 * fem,
                    ),
                    child: Text(
                      'Scan this QR code when you avail of any service to earn a reward.',
                      textAlign: TextAlign.center,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 15 * ffem,
                        fontWeight: FontWeight.w400,
                        height: 1.3333333333 * ffem / fem,
                        color: Color(0xff000000),
                      ),
                    ),
                  ),
                  Container(
                    // image144vv5 (4:30529)
                    margin: EdgeInsets.fromLTRB(11.14 * fem, 0 * fem, 0 * fem, 86 * fem),
                    width: 250 * fem,
                    height: 250 * fem,
                    child: QrImageView(
                      data: qrData, // Replace with your QR code data
                      version: QrVersions.auto,
                      size: 250.0,
                    ),
                  ),
                  Container(
                    // autogroupbm8bEvm (Tkq3oSPCXM13MsmsXbBm8B)
                    margin: EdgeInsets.fromLTRB(26 * fem, 0 * fem, 23.86 * fem, 89 * fem),
                    width: double.infinity,
                    height: 50 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xff57cc99),
                      borderRadius: BorderRadius.circular(70 * fem),
                    ),
                    child: Center(
                      child: Text(
                        'Download',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 18 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.1111111111 * ffem / fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                  ),
                  // Container(
                  //   // group48095457rx9 (4:30470)
                  //   margin: EdgeInsets.fromLTRB(6.14 * fem, 0 * fem, 0 * fem, 0 * fem),
                  //   width: 333 * fem,
                  //   height: 56 * fem,
                  //   child: Image.asset(
                  //     'assets/design/images/group-48095457.png',
                  //     width: 333 * fem,
                  //     height: 56 * fem,
                  //   ),
                  // ),
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
    margin: EdgeInsets.fromLTRB(44 * fem, 20.14 * fem, 44 * fem, 20.14  * fem),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => CustomerHomeScreen()), // Navigate to inbox screen
              );
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
                MaterialPageRoute(builder: (context) => InboxScreen()), // Navigate to location screen
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
                // Implement the behavior to reset or return to the current screen
                // For example, you can scroll to the top of the current screen
                // or refresh the content.
                // _scrollToTopOrRefresh(); // Call a method to scroll to the top or refresh the content
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

