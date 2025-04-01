import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:intl/intl.dart'; // Import the intl package
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:suellas/branch/editprofile.dart';
import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/branch/profile.dart';
import 'package:suellas/branch/profile.dart';
import 'package:suellas/branch/location.dart';
import 'package:suellas/branch/inboxread.dart';
import 'package:suellas/branch/scan.dart';
import 'package:suellas/branch/inbox.dart';
import 'package:suellas/branch/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class HistoryScan extends StatefulWidget {
  const HistoryScan({Key? key}) : super(key: key);

  @override
  _HistoryScanState createState() => _HistoryScanState();
}

class _HistoryScanState extends State<HistoryScan> {
  String _userEmail = '';
  List<Map<String, dynamic>> rewards = [];
  String _qrCode = 'Scan a QR code';

  bool _isLoading = true;

  @override
  void initState() {
    super.initState();
    _getUserEmail().then((_) {
      _getRewards().whenComplete(() {
        setState(() {
          _isLoading = false;
        });
      });
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

        userRewards.sort((a, b) {
          final DateTime dateA = DateTime.parse(a['dateCreated']);
          final DateTime dateB = DateTime.parse(b['dateCreated']);
          return dateB.compareTo(dateA);
        });
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
    final String qrData = "ABC123";
    int totalQRScanned = rewards.length;

    int calculateTotalShoes(List<Map<String, dynamic>> rewards) {
      return rewards.fold<int>(
          0, (sum, reward) => sum + (int.parse(reward['numberShoes'] ?? '0')));
    }

    return Scaffold(
      appBar: PreferredSize(
        preferredSize: Size.fromHeight(210.0),
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.fromLTRB(
                  29 * fem, 50.77 * fem, 40.14 * fem, 1 * fem),
              child: CustomAppBar(fem: fem, ffem: ffem),
            ),
            rewardsHistory(
              fem: fem,
              ffem: ffem,
              totalQRScanned: rewards.length,
              totalShoesAccepted: calculateTotalShoes(rewards),
            ),
          ],
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              SizedBox(height: 5 * fem), // Add spacing between the containers
              Container(
                padding: EdgeInsets.all(20 * fem),
                width: double.infinity,
                height: 800 * fem, // Use the same height as the green container
                color: Color.fromARGB(
                    255, 255, 255, 255), // Set the background color to blue
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Group48095458(fem: fem, ffem: ffem, rewards: rewards),
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
                        BranchLocationScreen()), // Navigate to location screen
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

class rewardsHistory extends StatelessWidget {
  final double fem;
  final double ffem;
  final int totalQRScanned;
  final int totalShoesAccepted;

  const rewardsHistory({
    required this.fem,
    required this.ffem,
    required this.totalQRScanned,
    required this.totalShoesAccepted,
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
                  '$totalQRScanned',
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
                  '$totalShoesAccepted',
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
    return Expanded(
      child: ListView.builder(
        itemCount: rewards.length,
        itemBuilder: (context, index) {
          final reward = rewards[index];
          final dateFormatter = DateFormat('MMM d');
          final formattedDate =
              dateFormatter.format(DateTime.parse(reward['dateCreated']));

          return Container(
            width: 320 * fem,
            height: 82 * fem,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        '${reward['first_name'] ?? ''} ${reward['last_name'] ?? ''}',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14 * fem,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1.0,
                        ),
                      ),
                      Text(
                        'Service: ${reward['serviceType'] ?? ''} , Shoes: ${reward['numberShoes'] ?? ''} , Points: ${reward['rewardPoints'] ?? ''} ',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.57),
                          fontSize: 12 * fem,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                          height: 1.17,
                        ),
                      ),
                      Text(
                        '${reward['stubNumber'] ?? ''} , Type: ${reward['status'] ?? ''}, Amount: ${reward['amount'] ?? ''}',
                        style: TextStyle(
                          color: Color(0xFF57CC99),
                          fontSize: 12 * fem,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w600,
                          height: 1.17,
                        ),
                      ),
                    ],
                  ),
                ),
                Container(
                  width: 78,
                  padding: EdgeInsets.only(left: 20, top: 30, right: 10),
                  child: Text(
                    '$formattedDate',
                    textAlign: TextAlign.right,
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.5699999928474426),
                      fontSize: 12,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                      height: 0.14,
                    ),
                  ),
                ),
              ],
            ),
          );
        },
      ),
    );
  }
}
