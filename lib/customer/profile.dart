import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/security.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:suellas/customer/location.dart';
import 'package:suellas/customer/inbox.dart';
import 'package:suellas/customer/home.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:suellas/customer/editprofile.dart';

import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _userEmail = ''; // Default value is an empty string
  String _firstName = '';
  String _lastName = '';
  String _birthday = '';
  String _phoneNumber = '';
  String _streetName = '';
  String _barangayName = '';
  String _cityName = '';

  bool isSmsNotificationEnabled = false; // Default value is false
  bool isEmailNotificationEnabled = false; // Default value is false
  bool isEditingName = false;
  TextEditingController firstNameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController passwordController = TextEditingController(); // Password text controller


  @override
  void initState() {
    super.initState();
    _getUserEmail().then((_) {
      _getUserData().then((data) {
        setState(() {
          _firstName = data['first_name'] ?? '';
          _lastName = data['last_name'] ?? '';
          _birthday = data['birthday'] ?? '';
          _phoneNumber = data['mobile_number'] ?? '';
          _streetName = data['address'] ?? '';
          _barangayName = data['barangay'] ?? '';
          _cityName = data['city'] ?? '';
          isSmsNotificationEnabled = data['isSmsNotificationEnabled'] ?? false;
          isEmailNotificationEnabled =
              data['isEmailNotificationEnabled'] ?? false;
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

  

  Future<http.Response> _updateNotificationSettings() async {
    final headers = {
      'Content-Type': 'application/json',
      'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
    };
    final apiUrl = '/admin/auth/notify';

    final response = await http.post(
      Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
      body: {
        'email': _userEmail, // Use the stored email
        'isSmsNotificationEnabled': isSmsNotificationEnabled.toString(),
        'isEmailNotificationEnabled': isEmailNotificationEnabled.toString(),
      },
    );
    return response;
  }

  Future<Map<String, dynamic>> _getUserData() async {
    final headers = {
      'Content-Type': 'application/json',
      'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
    };
    final apiUrl = '/admin/auth/getUserData';
    final email = _userEmail;
    final response = await http.post(
      Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
      body: {
        'email': email, // r@g.com 1234567
      },
    );

    if (response.statusCode == 200) {
      final Map<String, dynamic> userData = json.decode(response.body);
      userData['isSmsNotificationEnabled'] =
          userData['isSmsNotificationEnabled'] == 'true';
      userData['isEmailNotificationEnabled'] =
          userData['isEmailNotificationEnabled'] == 'true';
      print("User data retrieved1: $userData"); // Add this debugging statement

      return userData;
    } else {
      throw Exception('Failed to load user data');
    }
  }
void _showDeleteConfirmationDialog() {
  showDialog(
    context: context,
    barrierDismissible: false, // Prevent dismissing the dialog by tapping outside
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text(
          'Delete Account',
          style: TextStyle(color: Colors.red),
        ),
        content: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Text(
              'This action is destructive. Type your password to confirm delete.',
              style: TextStyle(color: Colors.red),
            ),
            SizedBox(height: 20),
            TextField(
              obscureText: true, // Hide the password text
              controller: passwordController, // Connect the password controller
              decoration: InputDecoration(
                labelText: 'Enter your password',
                border: OutlineInputBorder(),
                hintText: 'Password',
              ),
            ),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Cancel the delete action
            },
            child: Text('Cancel'),
          ),
          TextButton(
            onPressed: () {
              // Instead of actual deletion logic, just confirm the action
              Navigator.of(context).pop();
              _showDemoMessage(); // Show a confirmation that it's just a demo
            },
            child: Text('Confirm'),
          ),
        ],
      );
    },
  );
}

// Show a confirmation demo message (no actual deletion)
void _showDemoMessage() {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: Text('Demo'),
        content: Text('Account deletion is only a demo. No action was taken.'),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Close the demo message
            },
            child: Text('OK'),
          ),
        ],
      );
    },
  );
}



  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      // appBar: AppBar(r
      //   title: Text('Change Password'),
      // ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: 896 * fem,
            child: Container(
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
                              margin: EdgeInsets.fromLTRB(
                                0 * fem,
                                4 * fem,
                                0 * fem,
                                0 * fem,
                              ),
                              child: Text(
                                'Account',
                                style: TextStyle(
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff000000),
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
                                      EditProfileScreen(), // Replace EditProfileScreen with your edit screen widget
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
                              // Navigate to the Profile page when "Profile" is clicked
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ProfileScreen(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                10.14 * fem,
                                0 * fem,
                                0 * fem,
                                16 * fem,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    child: SizedBox(
                                      width: 60 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Profile',
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
                              // Navigate to the Security page when "Security" is clicked
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                  builder: (context) => ChangePasswordScreen(),
                                ),
                              );
                            },
                            child: Container(
                              margin: EdgeInsets.fromLTRB(
                                10.14 * fem,
                                0 * fem,
                                0 * fem,
                                16 * fem,
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Align(
                                    child: SizedBox(
                                      width: 60 * fem,
                                      height: 20 * fem,
                                      child: Text(
                                        'Security',
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
                      ],
                    ),
                  ),
                  Container(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          margin: EdgeInsets.only(left: 0 * fem, top: 0 * fem),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: SizedBox(
                              width: 119 * fem,
                              height: 20 * fem,
                              child: Text(
                                'Personal Details',
                                textAlign: TextAlign.center,
                                style: TextStyle(
                                  fontSize: 15 * ffem,
                                  fontWeight: FontWeight.w700,
                                  color: Color(0xff57cc99),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          margin: EdgeInsets.only(left: 0 * fem, top: 0 * fem),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 100 * fem,
                                        child: Text(
                                          'Email',
                                          style: TextStyle(
                                            fontSize: 13 * ffem,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0x66000000),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 30.63 * fem),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              _userEmail,
                                              style: TextStyle(
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0x66000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 100 * fem,
                                        child: Text(
                                          'First Name',
                                          style: TextStyle(
                                            fontSize: 13 * ffem,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0x66000000),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 30.63 * fem),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              _firstName,
                                              style: TextStyle(
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0x66000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 100 * fem,
                                        child: Text(
                                          'Last Name',
                                          style: TextStyle(
                                            fontSize: 13 * ffem,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0x66000000),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 30.63 * fem),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              _lastName,
                                              style: TextStyle(
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0x66000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 100 * fem,
                                        child: Text(
                                          'Birthday',
                                          style: TextStyle(
                                            fontSize: 13 * ffem,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0x66000000),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 30.63 * fem),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              _birthday,
                                              style: TextStyle(
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0x66000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 100 * fem,
                                        child: Text(
                                          'Phone Number',
                                          style: TextStyle(
                                            fontSize: 13 * ffem,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0x66000000),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 30.63 * fem),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              _phoneNumber,
                                              style: TextStyle(
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0x66000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 100 * fem,
                                        child: Text(
                                          'Street Name',
                                          style: TextStyle(
                                            fontSize: 13 * ffem,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0x66000000),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 30.63 * fem),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              _streetName,
                                              style: TextStyle(
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0x66000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 100 * fem,
                                        child: Text(
                                          'Barangay',
                                          style: TextStyle(
                                            fontSize: 13 * ffem,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0x66000000),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 30.63 * fem),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              _barangayName,
                                              style: TextStyle(
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0x66000000),
                                              ),
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Container(
                                        width: 100 * fem,
                                        child: Text(
                                          'City',
                                          style: TextStyle(
                                            fontSize: 13 * ffem,
                                            fontWeight: FontWeight.w500,
                                            color: Color(0x66000000),
                                          ),
                                        ),
                                      ),
                                      Expanded(
                                        child: Container(
                                          padding: EdgeInsets.only(
                                              left: 30.63 * fem),
                                          child: Align(
                                            alignment: Alignment.topRight,
                                            child: Text(
                                              _cityName,
                                              style: TextStyle(
                                                fontSize: 13 * ffem,
                                                fontWeight: FontWeight.w500,
                                                color: Color(0x66000000),
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
                        ),
                        Divider(),
                        Container(
                          margin: EdgeInsets.only(left: 0 * fem, top: 10 * fem),
                          child: Align(
                            alignment: Alignment.topLeft,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                SizedBox(
                                  width: 120 * fem,
                                  height: 20 * fem,
                                  child: Text(
                                    'Notification',
                                    style: TextStyle(
                                      fontSize: 15 * ffem,
                                      fontWeight: FontWeight.w700,
                                      color: Color(0xff57cc99),
                                    ),
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 20 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 10 * fem, 1 * fem),
                                          child: Text(
                                            'SMS Notification',
                                            style: TextStyle(
                                              fontSize: 13 * ffem,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0x66000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            10.63 * fem,
                                            6.51 * fem,
                                            11.37 * fem,
                                            5.49 * fem),
                                        width: 50 * fem,
                                        height: 25 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(0xffc7f9cc),
                                          borderRadius:
                                              BorderRadius.circular(30 * fem),
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Switch(
                                            value: isSmsNotificationEnabled,
                                            onChanged: (bool value) {
                                              setState(() {
                                                isSmsNotificationEnabled =
                                                    value;
                                                _updateNotificationSettings();
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 10 * fem, 1 * fem),
                                          child: Text(
                                            'Email Notification',
                                            style: TextStyle(
                                              fontSize: 13 * ffem,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0x66000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            10.63 * fem,
                                            6.51 * fem,
                                            11.37 * fem,
                                            5.49 * fem),
                                        width: 50 * fem,
                                        height: 25 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(0xffc7f9cc),
                                          borderRadius:
                                              BorderRadius.circular(30 * fem),
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Switch(
                                            value: isEmailNotificationEnabled,
                                            onChanged: (bool value) {
                                              setState(() {
                                                isEmailNotificationEnabled =
                                                    value;

                                                _updateNotificationSettings();
                                              });
                                            },
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  margin: EdgeInsets.only(
                                      left: 0 * fem, top: 5 * fem),
                                  width: 500 * fem,
                                  height: 27 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Expanded(
                                        child: Container(
                                          margin: EdgeInsets.fromLTRB(0 * fem,
                                              0 * fem, 10 * fem, 1 * fem),
                                          child: Text(
                                            'Delete Account',
                                            style: TextStyle(
                                              fontSize: 13 * ffem,
                                              fontWeight: FontWeight.w500,
                                              color: Color(0x66000000),
                                            ),
                                          ),
                                        ),
                                      ),
                                      Container(
                                        padding: EdgeInsets.fromLTRB(
                                            10.63 * fem,
                                            6.51 * fem,
                                            11.37 * fem,
                                            5.49 * fem),
                                        width: 50 * fem,
                                        height: 25 * fem,
                                        decoration: BoxDecoration(
                                          color: Color(0xffffffff),
                                          borderRadius:
                                              BorderRadius.circular(30 * fem),
                                        ),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: GestureDetector(
                                            onTap: () {
                                              // Show the delete confirmation dialog
                                              _showDeleteConfirmationDialog();
                                            },
                                            child: Icon(
                                              Icons.delete, // The delete icon
                                              color: const Color.fromARGB(
                                                  255,
                                                  8,
                                                  1,
                                                  0), // Color for the delete icon
                                              size: 20 *
                                                  fem, // Size of the icon, adjust as needed
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
                        InboxScreen()), // Navigate to location screen
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
                    builder: (context) => QRScreen()), // Navigate to QR screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/qr.png',
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
                        LocationScreen()), // Navigate to QR screen
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
              // Implement the behavior to reset or return to the current screen
              // For example, you can scroll to the top of the current screen
              // or refresh the content.
              // _scrollToTopOrRefresh(); // Call a method to scroll to the top or refresh the content
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/profile-selected.png',
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
