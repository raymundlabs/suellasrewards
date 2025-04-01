import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/branch/scan.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/branch/profile.dart';
import 'package:suellas/branch/profile.dart';
import 'package:suellas/branch/location.dart';
import 'package:suellas/branch/inbox.dart';
import 'package:suellas/branch/home.dart';

class BranchLocationScreen extends StatelessWidget {
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
              padding: EdgeInsets.fromLTRB(29 * fem, 50.77 * fem, 29 * fem, 27 * fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
                child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Align(
                        alignment: Alignment.center,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              // btnbackfGd (202:999)
                              width: 30 * fem,
                              height: 30 * fem,
                              child: Image.asset(
                                'assets/icons/images/back.png',
                                width: 30 * fem,
                                height: 30 * fem,
                              ),
                            ),
                            
                            Expanded(
                              child: Center(
                                child:  Container(
                          // scanqrfxD (4:30479)
                          margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 0 * fem),
                          child: Text(
                            'Locations',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 18 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                              ),
                            ),
                            Container(
                              // iconlyboldfilterG1X (202:997)
                                 width: 30 * fem,
                              height: 30 * fem,
                              child: Image.asset(
                                'assets/icons/images/edit.png',
                                 width: 30 * fem,
                              height: 30 * fem,
                              ),
                            ),
                          ],
                          
                        ),
                        

                      ),

                    const SizedBox(height: 10.0),

                    Container(
                      padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0), // Adjust left padding
                      width: double.infinity,
                      height: 120 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xfff6fff7),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20 * fem, 11 * fem, 0), // Adjust top margin
                            width: 18 * fem,
                            height: 19 * fem,
                            child: Image.asset(
                              'assets/design/images/pin.png',
                              width: 18 * fem,
                              height: 19 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 19 * fem, 11 * fem, 15 * fem), // Adjust margins
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SM City Baguio',
                                  style: TextStyle(
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(height: 3 * fem),
                                Container(
                                  constraints: BoxConstraints(maxWidth: 400 * fem),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0x91000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Address: Lower Basement, SM City Baguio\nMobile: ',
                                        ),
                                        TextSpan(
                                          text: '09672292875',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3 * fem),
                                Text(
                                  'Open Monday to Sunday 10am - 9pm',
                                  style: TextStyle(
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff57cc99),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   width: 50 * fem,
                          //   height: 100 * fem,
                          //   child: Image.asset(
                          //     'assets/design/images/rectangle-39405-KWq.png',
                          //     width: 50 * fem,
                          //     height: 100 * fem,
                          //   ),
                          // ),
                        ],
                      ),
                    ),

                    Container(
                      padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0), // Adjust left padding
                      width: double.infinity,
                      height: 120 * fem,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20 * fem, 11 * fem, 0), // Adjust top margin
                            width: 18 * fem,
                            height: 19 * fem,
                            child: Image.asset(
                              'assets/design/images/pin.png',
                              width: 18 * fem,
                              height: 19 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 19 * fem, 11 * fem, 15 * fem), // Adjust margins
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Session Road Branch',
                                  style: TextStyle(
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(height: 3 * fem),
                                Container(
                                  constraints: BoxConstraints(maxWidth: 400 * fem),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0x91000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Address: Rm. 310 Laperal Bldg., Session Road, Baguio City\nMobile: ',
                                        ),
                                        TextSpan(
                                          text: '09060518055',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3 * fem),
                                Text(
                                  'Open Monday to Sunday 10am - 9pm',
                                  style: TextStyle(
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff57cc99),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   width: 50 * fem,
                          //   height: 100 * fem,
                          //   child: Image.asset(
                          //     'assets/design/images/rectangle-39405-KWq.png',
                          //     width: 50 * fem,
                          //     height: 100 * fem,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
Container(
                      padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0), // Adjust left padding
                      width: double.infinity,
                      height: 120 * fem,
                      decoration: BoxDecoration(
                        color: Color(0xfff6fff7),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20 * fem, 11 * fem, 0), // Adjust top margin
                            width: 18 * fem,
                            height: 19 * fem,
                            child: Image.asset(
                              'assets/design/images/pin.png',
                              width: 18 * fem,
                              height: 19 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 19 * fem, 11 * fem, 15 * fem), // Adjust margins
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'SM City Urdaneta',
                                  style: TextStyle(
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(height: 3 * fem),
                                Container(
                                  constraints: BoxConstraints(maxWidth: 400 * fem),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0x91000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Address: 3rd Floor, SM City Urdaneta\nMobile: ',
                                        ),
                                        TextSpan(
                                          text: '09566674030',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3 * fem),
                                Text(
                                  'Open Monday to Sunday 10am - 9pm',
                                  style: TextStyle(
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff57cc99),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   width: 50 * fem,
                          //   height: 100 * fem,
                          //   child: Image.asset(
                          //     'assets/design/images/rectangle-39405-KWq.png',
                          //     width: 50 * fem,
                          //     height: 100 * fem,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                           
Container(
                      padding: EdgeInsets.fromLTRB(5 * fem, 0, 0, 0), // Adjust left padding
                      width: double.infinity,
                      height: 200 * fem,
                      decoration: BoxDecoration(
                        color: Color.fromARGB(255, 255, 255, 255),
                      ),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 20 * fem, 11 * fem, 0), // Adjust top margin
                            width: 18 * fem,
                            height: 19 * fem,
                            child: Image.asset(
                              'assets/design/images/pin.png',
                              width: 18 * fem,
                              height: 19 * fem,
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0, 19 * fem, 11 * fem, 15 * fem), // Adjust margins
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Bonifacio Road Branch',
                                  style: TextStyle(
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff000000),
                                  ),
                                ),
                                SizedBox(height: 3 * fem),
                                Container(
                                  constraints: BoxConstraints(maxWidth: 500 * fem),
                                  child: RichText(
                                    text: TextSpan(
                                      style: TextStyle(
                                        fontSize: 12 * ffem,
                                        fontWeight: FontWeight.w400,
                                        color: Color(0x91000000),
                                      ),
                                      children: [
                                        TextSpan(
                                          text: 'Address: 3rd Floor, 237 Avenue by GAV Building,\nBonifacio Road, Baguio City\nMobile: ',
                                        ),
                                        TextSpan(
                                          text: '09664984425',
                                        ),
                                      ],
                                    ),
                                  ),
                                ),
                                SizedBox(height: 3 * fem),
                                Text(
                                  'Open Monday to Sunday 10am - 9pm',
                                  style: TextStyle(
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff57cc99),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          // Container(
                          //   width: 50 * fem,
                          //   height: 100 * fem,
                          //   child: Image.asset(
                          //     'assets/design/images/rectangle-39405-KWq.png',
                          //     width: 50 * fem,
                          //     height: 100 * fem,
                          //   ),
                          // ),
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


  
  Widget _buildBottomNavigationBar(
      double fem, double ffem, BuildContext context) {
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
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BranchHomeScreen()), // Navigate to inbox screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/rewards.png',
                width: 50,
                height: 50,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BranchInboxScreen()), // Navigate to inbox screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/inbox.png',
             width: 50,
                height: 50,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => ScanScreen()), // Navigate to QR screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                        'assets/icons/images/iconly-regular-outline-scan-q2q.png',
              width: 50,
                height: 50,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BranchLocationScreen()), // Navigate to location screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/location-selected.png',
            width: 50,
                height: 50,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) =>
                        BranchProfileScreen()), // Navigate to profile screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/profile.png',
             width: 50,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }
}


