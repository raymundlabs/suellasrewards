import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/editprofile.dart';
import 'package:suellas/customer/location.dart';
import 'package:suellas/customer/inbox.dart';
import 'package:suellas/customer/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';

class QRScreen extends StatefulWidget {
  @override
  _QRScreenState createState() => _QRScreenState();
}

class _QRScreenState extends State<QRScreen> {
  double baseWidth = 414;
  double fem = 1.0; // Set your default value
  double ffem = 1.0; // Set your default value
  var _userEmail = '';
  var _firstName = '';
  var _lastName = '';

  @override
  void initState() {
    super.initState();
    // Retrieve the stored email from SharedPreferences when the screen is first loaded
    _getUserEmail();
  }

  Future<void> _getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userDetails = prefs.getString('userDetails') ?? '';

    if (userDetails.isNotEmpty) {
      // Parse the JSON string to a Map
      Map<String, dynamic> userData = json.decode(userDetails);

      setState(() {
        _userEmail = prefs.getString('userEmail') ?? '';
        _firstName = userData['user']['first_name'] ?? '';
        _lastName = userData['user']['last_name'] ?? '';
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

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
              padding: EdgeInsets.fromLTRB(
                  29 * fem, 50.77 * fem, 29 * fem, 27 * fem),
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
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 1.86 * fem, 42 * fem),
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          // btnbackZeH (4:30442)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 115 * fem, 0 * fem),
                          width: 30 * fem,
                          height: 30 * fem,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.pop(
                                  context); // Navigate back to the previous screen
                            },
                            child: Image.asset(
                              'assets/icons/images/back.png',
                              width: 30 * fem,
                              height: 30 * fem,
                            ),
                          ),
                        ),
                        Container(
                          // scanqrfxD (4:30479)
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 4 * fem, 112 * fem, 0 * fem),
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
                        GestureDetector(
                          onTap: () {
                            // Navigate to the EditProfileScreen when the edit button is tapped
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => EditProfileScreen()),
                            );
                          },
                          child: Container(
                            // iconlycurvedoutlineeditsquareN (4:30441)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 0 * fem, 4 * fem),
                                 width: 30 * fem,
                              height: 30 * fem,
                            child: Image.asset(
                              'assets/icons/images/edit.png',
                             width: 30 * fem,
                              height: 30 * fem,
                            ),
                          ),
                        )
                      ],
                    ),
                  ),
                  Container(
                    // rewardsGh7 (4:30454)
                    margin: EdgeInsets.fromLTRB(
                        10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
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
                    margin: EdgeInsets.fromLTRB(
                        11.14 * fem, 0 * fem, 0 * fem, 36 * fem),
                    child: Text(
                      '$_firstName $_lastName',
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
                    margin: EdgeInsets.fromLTRB(
                        0 * fem, 0 * fem, 5.86 * fem, 33 * fem),
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
                    margin: EdgeInsets.fromLTRB(
                        11.14 * fem, 0 * fem, 0 * fem, 86 * fem),
                    width: 250 * fem,
                    height: 250 * fem,
                    child: QrImageView(
                      data: _userEmail, // Replace with your QR code data
                      version: QrVersions.auto,
                      size: 250.0,
                    ),
                  ),
                  Container(
                    // autogroupbm8bEvm (Tkq3oSPCXM13MsmsXbBm8B)
                    margin: EdgeInsets.fromLTRB(
                        26 * fem, 0 * fem, 23.86 * fem, 89 * fem),
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
                        CustomerHomeScreen()), // Navigate to inbox screen
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
                        InboxScreen()), // Navigate to inbox screen
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
              // Implement the behavior to reset or return to the current screen
              // For example, you can scroll to the top of the current screen
              // or refresh the content.
              // _scrollToTopOrRefresh(); // Call a method to scroll to the top or refresh the content
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/qr-selected.png',
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
                        LocationScreen()), // Navigate to location screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/location.png',
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
                        ProfileScreen()), // Navigate to profile screen
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
