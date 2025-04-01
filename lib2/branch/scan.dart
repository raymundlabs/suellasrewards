import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:suellas/branch/editprofile.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/branch/profile.dart';
import 'package:suellas/branch/location.dart';
import 'package:suellas/branch/history.dart';
import 'package:suellas/branch/inboxread.dart';
import 'package:suellas/branch/inbox.dart';
import 'package:suellas/branch/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:suellas/branch/record.dart';
import 'package:suellas/branch/historyscan.dart';
import 'package:suellas/branch/pay.dart';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String _userEmail = ''; // Default value is an empty string
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  double? _enteredAmount;
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
      _getUserData(); // Call getUserData function after scanning
    });
  }

  // Future<Map<String, dynamic>> _getUserData() async {
  //   final headers = {
  //     'Content-Type': 'application/json',
  //     'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
  //   };
  //   final apiUrl = '/admin/auth/getUserData';
  //   final email = _userEmail;
  //   final response = await http.post(
  //     Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
  //     body: {
  //       'email': email, // r@g.com 1234567
  //     },
  //   );

  //   if (response.statusCode == 200) {
  //     final Map<String, dynamic> userData = json.decode(response.body);
  //     return userData;
  //   } else {
  //     throw Exception('Failed to load user data');
  //   }
  // }

  Future<void> _getUserData() async {
    final apiUrl =
        'https://app.suellastheshoelaundry.com/admin/auth/getUserData';
    final email = _qrCode;

    final response = await http.post(
      Uri.parse(apiUrl),
      body: {
        'email': email,
      },
    );

    print(response);
    if (response.statusCode == 200) {
      final Map<String, dynamic> userData = json.decode(response.body);

      final user = userData; // Access the "user" object
      print(userData);

      showDialog(
        context: context,
        builder: (context) {
          return AlertDialog(
            title: Text('Customer Details'),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: <Widget>[
                Text(
                    'Customer Name: ${user['first_name']} ${user['last_name']}'), // Access first_name
                Text(
                    'Rewards Points: ${user['reward_points']}'), // Access reward_points
              ],
            ),
            actions: <Widget>[
              TextButton(
                onPressed: () {
                  // Navigate to Pay with Rewards screen
                  // Replace 'PayWithRewardsScreen' with the actual screen you want to navigate to
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => PayScreen(userData: userData)),
                  );
                },
                child: Text('Pay with Rewards'),
              ),
              TextButton(
                onPressed: () {
                  // Navigate to Save Rewards screen
                  // Replace 'SaveRewardsScreen' with the actual screen you want to navigate to
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => RecordScreen(userData: userData)),
                  );
                },
                child: Text('Save Rewards'),
              ),
            ],
          );
        },
      );
    } else {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(
          content: Text('Failed to load user data'),
        ),
      );
    }
  }

  Future<void> _recordAmount(double? amount) async {
    if (amount != null) {
      final email = _userEmail;
      final apiUrl =
          'https://app.suellastheshoelaundry.com/admin/auth/scanrewards';
      final response = await http.post(
        Uri.parse(apiUrl),
        body: {'amount': amount.toString(), 'email': _qrCode},
      );

      if (response.statusCode == 200) {
        final responseData =
            jsonDecode(response.body); // Parse the response JSON
        print('Amount recorded successfully.');
        print('Response Data: $responseData'); // Print the response data
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Amount recorded successfully'),
          ),
        );

        // Navigate to history.dart
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => HistoryScreen(),
          ),
        );
      } else {
        print(
            'Failed to record the amount. Error code: ${response.statusCode}');
      }
    } else {
      print('Invalid amount entered.');
    }
  }

  @override
  void initState() {
    super.initState();
    // Call the API request method to get reward points and set the state
    _getUserEmail().then((_) {});
  }

  Future<void> _getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _userEmail = prefs.getString('userEmail') ?? '';
    });
  }

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
              padding: EdgeInsets.fromLTRB(
                  29 * fem, 50.77 * fem, 29 * fem, 27 * fem),
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
                            child: Container(
                              // scanqrfxD (4:30479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 4 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'Inbox',
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
                            'assets/icons/images/filter.png',
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
                                    builder: (context) => ScanScreen()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    child: SizedBox(
                                      width: 40 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Scan', // Change "New" to "Inbox"
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4285714286 * ffem / fem,
                                          letterSpacing: 0.5 * fem,
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
                                    builder: (context) => HistoryScan()),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    child: SizedBox(
                                      width: 80 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'History',
                                        style: SafeGoogleFont(
                                          'Inter',
                                          fontSize: 14 * ffem,
                                          fontWeight: FontWeight.w600,
                                          height: 1.4285714286 * ffem / fem,
                                          letterSpacing: 0.5 * fem,
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
                  GestureDetector(
                    onTap: _scanQRCode, // Call _scanQR when tapped
                    child: Container(
                      // autogroupj2pjdEq (SrCxSzNvizKye9Hh3hJ2Pj)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 0 * fem),
                      padding: EdgeInsets.fromLTRB(161.17 * fem, 250.5 * fem,
                          159.08 * fem, 241.33 * fem),
                      width: double.infinity,
                      decoration: BoxDecoration(
                        color: Color(0xffd9d9d9),
                      ),
                      child: Center(
                        // iconlyregularoutlinescanLQ9 (4:30606)
                        child: SizedBox(
                          width: 93.75 * fem,
                          height: 78.17 * fem,
                          child: Image.asset(
                            'assets/design/images/iconly-regular-outline-scan.png',
                            width: 93.75 * fem,
                            height: 78.17 * fem,
                          ),
                        ),
                      ),
                    ),
                  )
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
                        BranchInboxScreen()), // Navigate to location screen
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
                    builder: (context) =>
                        ScanScreen()), // Navigate to QR screen
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
                        BranchLocationScreen()), // Navigate to QR screen
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
                        BranchProfileScreen()), // Navigate to QR screen
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

class CustomAppBar extends StatelessWidget {
  final double fem;
  final double ffem;

  CustomAppBar({
    required this.fem,
    required this.ffem,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 0.0),
      child: Column(
        children: [
          Align(
            alignment: Alignment.center,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                GestureDetector(
                  onTap: () {
                    Navigator.pop(context);
                  },
                  child: Container(
                    // btnbackfGd (202:999)
                    width: 30 * fem,
                    height: 30 * fem,
                    child: Image.asset(
                      'assets/icons/images/back.png',
                      width: 30 * fem,
                      height: 30 * fem,
                    ),
                  ),
                ),
                Expanded(
                  child: Center(
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 4 * fem, 0 * fem, 0 * fem),
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
                  child: GestureDetector(
                    onTap: () {
                      // Navigate to the edit screen when tapped
                      Navigator.push(
                        context,
                        MaterialPageRoute(
                          builder: (context) =>
                              BranchEditProfileScreen(), // Replace EditProfileScreen with your edit screen widget
                        ),
                      );
                    },
                    child: Image.asset(
                      'assets/icons/images/edit.png',
                      width: 30 * fem,
                      height: 30 * fem,
                    ),
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
                      margin: EdgeInsets.fromLTRB(
                          10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            child: SizedBox(
                              width: 60 * fem,
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
                          builder: (context) => HistoryScan(),
                        ),
                      );
                    },
                    child: Container(
                      margin: EdgeInsets.fromLTRB(
                          10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Align(
                            child: SizedBox(
                              width: 60 * fem,
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
        ],
      ),
    );
  }
}