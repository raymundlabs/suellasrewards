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
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(29 * fem, 39.77 * fem, 40.14 * fem, 27 * fem),
                width: double.infinity,
                height: 500 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff2f6e53),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ... (green container's child widgets)
                  ],
                ),
              ),
              SizedBox(height: 20 * fem), // Add spacing between the containers
              Container(
                padding: EdgeInsets.all(20 * fem),
                width: double.infinity,
                height: 500 * fem, // Use the same height as the green container
                color: Colors.blue, // Set the background color to blue
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ... (blue container's child widgets)
                  ],
                ),
              ),
            ],
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
