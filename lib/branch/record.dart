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
import 'package:suellas/branch/history.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:suellas/branch/pay.dart';
import 'package:suellas/branch/scan.dart';
import 'package:suellas/branch/record.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class RecordScreen extends StatefulWidget {
  final Map<String, dynamic> userData;

  RecordScreen({required this.userData});

  @override
  _RecordScreenState createState() => _RecordScreenState();
}

class _RecordScreenState extends State<RecordScreen> {
  double baseWidth = 414;
  double fem = 1.0;
  double ffem = 1.0;
  late String email;
  var _firstName = '';
  var _lastName = '';
  var _enteredAmount = '';
  final _formKey = GlobalKey<FormState>();

  @override
  void initState() {
    super.initState();
    // Access 'email' from widget.userData
    email = widget.userData['email'];
  }

  Future<void> _recordAmount(double? amount) async {
    print(amount);
    if (amount != null) {
      final apiUrl =
          'https://app.suellastheshoelaundry.com/admin/auth/scanrewards';
      final response = await http.post(
        Uri.parse(apiUrl),
        body: {'amount': amount.toString(), 'email': email},
      );

      if (response.statusCode == 200) {
        final responseData = jsonDecode(response.body);
        print('Amount recorded successfully.');
        print('Response Data: $responseData');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Amount recorded successfully'),
          ),
        );

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
        child: Form(
          key: _formKey,
          child: Container(
            width: double.infinity,
            child: Container(
              width: double.infinity,
              height: 896 * fem,
              child: Container(
                padding: EdgeInsets.fromLTRB(
                    29 * fem, 39.77 * fem, 40.14 * fem, 27 * fem),
                width: double.infinity,
                height: double.infinity,
                decoration: BoxDecoration(
                  color: Color(0xffffffff),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 1.86 * fem, 42 * fem),
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 115 * fem, 0 * fem),
                            width: 30 * fem,
                            height: 30 * fem,
                            child: GestureDetector(
                              onTap: () {
                                Navigator.pop(context);
                              },
                              child: Image.asset(
                                'assets/design/images/btn-back.png',
                                width: 30 * fem,
                                height: 30 * fem,
                              ),
                            ),
                          ),
                          Container(
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => EditProfileScreen(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 0 * fem, 4 * fem),
                              width: 20 * fem,
                              height: 20 * fem,
                              child: Image.asset(
                                'assets/design/images/iconly-curved-outline-edit-square.png',
                                width: 20 * fem,
                                height: 20 * fem,
                              ),
                            ),
                          )
                        ],
                      ),
                    ),
                    Container(
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
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5.86 * fem, 33 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 287 * fem,
                      ),
                      child: Text(
                        'Enter the Amount.',
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
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 5.86 * fem, 33 * fem),
                      constraints: BoxConstraints(
                        maxWidth: 287 * fem,
                      ),
                      child: TextField(
                        // Use a TextField to enter the amount
                        onChanged: (value) {
                          // Save the entered value as a string
                          setState(() {
                            _enteredAmount = value;
                          });
                        },

                        keyboardType:
                            TextInputType.number, // Allow only numeric input
                        decoration: InputDecoration(
                          hintText: 'Enter the Amount',
                        ),
                      ),
                    ),
                    GestureDetector(
                      // Add onTap property to handle button click
                      onTap: () {
                        // Call the _recordAmount method when the button is tapped
                        double? amount = double.tryParse(_enteredAmount ?? '');
                        _recordAmount(amount);
                      },
                      child: Container(
                        margin: EdgeInsets.fromLTRB(
                          26 * fem,
                          0 * fem,
                          23.86 * fem,
                          89 * fem,
                        ),
                        width: double.infinity,
                        height: 50 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xff57cc99),
                          borderRadius: BorderRadius.circular(70 * fem),
                        ),
                        child: Center(
                          child: Text(
                            'Save Amount',
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
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: _buildBottomNavigationBar(fem, ffem, context),
    );
  }

  Widget _buildBottomNavigationBar(
    double fem,
    double ffem,
    BuildContext context,
  ) {
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
                  builder: (context) => CustomerHomeScreen(),
                ),
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
                  builder: (context) => InboxScreen(),
                ),
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
              // Implement the behavior to reset or return to the current screen
              // For example, you can scroll to the top of the current screen
              // or refresh the content.
              // _scrollToTopOrRefresh(); // Call a method to scroll to the top or refresh the content
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
                  builder: (context) => LocationScreen(),
                ),
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
                MaterialPageRoute(
                  builder: (context) => ProfileScreen(),
                ),
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
