import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/location.dart';
import 'package:suellas/customer/inboxread.dart';
import 'package:suellas/branch/scan.dart';
import 'package:suellas/customer/inbox.dart';
import 'package:suellas/customer/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HistoryScreen extends StatefulWidget {
  const HistoryScreen({Key? key}) : super(key: key);

  @override
  _HistoryScreenState createState() => _HistoryScreenState();
}

class _HistoryScreenState extends State<HistoryScreen> {
  String _userEmail = '';
  List<Map<String, dynamic>> rewards = [];
  String _qrCode = 'Scan a QR code';

  Future<void> _scanQRCode() async {
    String qrCode = await FlutterBarcodeScanner.scanBarcode(
      '#FF5722',
      'Cancel',
      false,
      ScanMode.QR,
    );

    if (!mounted) return;

    setState(() {
      _qrCode = qrCode;
    });
  }

  @override
  void initState() {
    super.initState();
    _getUserEmail().then((_) {
      _getRewards();
    });
  }

  Future<void> _getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _userEmail = prefs.getString('userEmail') ?? '';
    });
  }

  Future<void> _getRewards() async {
    final headers = {
      'Content-Type': 'application/json',
      'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
    };
    final apiUrl = '/admin/auth/getRewards';
    final email = _userEmail;
    final response = await http.post(
      Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
      body: {
        'email': email,
      },
    );

    if (response.statusCode == 200) {
      final dynamic responseBody = json.decode(response.body);

      if (responseBody is List) {
        final List<Map<String, dynamic>> userRewards =
            responseBody.cast<Map<String, dynamic>>();

        setState(() {
          rewards = userRewards;
        });
      } else {
        throw Exception('Invalid response format');
      }
    } else {
      throw Exception('Failed to load user data');
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
      child: Column(
        children: [
          Container(
            width: double.infinity,
            child: Container(
              width: double.infinity,
              height: 896 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(29 * fem, 39.77 * fem, 29 * fem, 27 * fem),
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
                                margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 0 * fem, 0 * fem),
                                child: Text(
                                  'Inbox',
                                  style: TextStyle(
                                    color: Color(0xff000000),
                                    fontSize: 18 * ffem,
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                              ),
                            ),
                          ),
                          Container(
                            width: 30 * fem,
                            height: 30 * fem,
                            child: Image.asset(
                              'assets/design/images/iconly-curved-outline-edit-square.png',
                              width: 30 * fem,
                              height: 30 * fem,
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 10.0),
                    Container(
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => ScanScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      child: SizedBox(
                                        width: 40 * fem,
                                        height: 20 * fem,
                                        child: Text(
                                          'Scan',
                                          style: TextStyle(
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1,
                                      color: Color(0xff000000),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Expanded(
                            child: GestureDetector(
                              onTap: () {
                                Navigator.push(
                                  context,
                                  MaterialPageRoute(
                                    builder: (context) => HistoryScreen(),
                                  ),
                                );
                              },
                              child: Container(
                                margin: EdgeInsets.fromLTRB(10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [
                                    Align(
                                      child: SizedBox(
                                        width: 40 * fem,
                                        height: 20 * fem,
                                        child: Text(
                                          'History',
                                          style: TextStyle(
                                            fontSize: 14 * ffem,
                                            fontWeight: FontWeight.w600,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ),
                                    Container(
                                      width: double.infinity,
                                      height: 1,
                                      color: Color.fromRGBO(17, 0, 0, 0.20),
                                    ),
                                  ],
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    rewardsHistory(fem: fem, ffem: ffem),
                    Group48095458(fem: fem, ffem: ffem, rewards: rewards),
                  ],
                ),
              ),
            ),
          ),
        ],
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
                    builder: (context) => CustomerHomeScreen()),
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
                MaterialPageRoute(
                    builder: (context) => InboxScreen()),
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
                MaterialPageRoute(
                    builder: (context) => ScanScreen()),
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
                MaterialPageRoute(
                    builder: (context) => LocationScreen()),
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
              // Implement the behavior to reset or return to the current screen
              // For example, you can scroll to the top of the current screen
              // or refresh the content.
              // _scrollToTopOrRefresh(); // Call a method to scroll to the top or refresh the content
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

class rewardsHistory extends StatelessWidget {
  final double fem;
  final double ffem;

  const rewardsHistory({
    required this.fem,
    required this.ffem,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 350 * fem,
      height: 120 * fem,
      decoration: BoxDecoration(
        color: Color(0xFF306E53),
        borderRadius: BorderRadius.circular(20),
        boxShadow: [
          BoxShadow(
            color: Color(0x7FAEAEC0),
            blurRadius: 20,
            offset: Offset(5, 5),
          ),
          BoxShadow(
            color: Color(0xFFFFFFFF),
            blurRadius: 20,
            offset: Offset(-5, -5),
          ),
        ],
      ),
      child: Row(
        children: [
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Total QR Scanned',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  '100',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: 2,
            height: 60 * fem,
            decoration: BoxDecoration(
              shape: BoxShape.rectangle,
              color: Color.fromARGB(131, 255, 255, 255),
              borderRadius: BorderRadius.circular(20),
            ),
            child: Container(
              width: 1,
              height: 60 * fem,
              decoration: BoxDecoration(
                color: Color.fromARGB(131, 255, 255, 255),
                boxShadow: [
                  BoxShadow(
                    color: Color(0x0C000000),
                    blurRadius: 10,
                    offset: Offset(0, 1),
                  ),
                ],
              ),
            ),
          ),
          Expanded(
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    'Total Shoes Accepted',
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 12 * ffem,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ),
                Text(
                  '120',
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20 * ffem,
                    fontWeight: FontWeight.w600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class Group48095458 extends StatelessWidget {
  final double fem;
  final double ffem;
  final List<Map<String, dynamic>> rewards;

  const Group48095458({
    required this.fem,
    required this.ffem,
    required this.rewards,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: rewards.map((rewards) {
        return Container(
          width: 320 * fem,
          height: 82 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(5 * fem, 5.67 * fem, 10.99 * fem, 0 * fem),
                width: 42.01 * fem,
                height: 50.34 * fem,
                child: Image.asset(
                  'assets/design/images/auto-group-fz6h.png',
                  width: 30.01 * fem,
                  height: 30.34 * fem,
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 261 * fem,
                    child: Text(
                      rewards['rewardPoints'] ?? '',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.99),
                        fontSize: 14 * ffem,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 261 * fem,
                    child: Text(
                      rewards['email'] ?? '',
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5699999928474426),
                        fontSize: 12 * ffem,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                  ),
                  SizedBox(height: 4 * fem),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
