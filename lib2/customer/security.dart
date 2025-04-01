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

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() {
    return _ChangePasswordScreenState();
  }
}

class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final _formKey = GlobalKey<FormState>();

  var _currentPassword = '';
  var _newPassword = '';
  var _confirmNewPassword = '';
  var _isChangingPassword = false;
  var _userEmail = '';

  @override
  void initState() {
    super.initState();
    // Retrieve the stored email from SharedPreferences when the screen is first loaded
    _getUserEmail();
  }

  Future<void> _getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _userEmail = prefs.getString('userEmail') ?? '';
    });
  }

  Future<void> _submit() async {
    if (_formKey.currentState!.validate()) {
      _formKey.currentState!.save();

      if (_newPassword != _confirmNewPassword) {
        // Passwords don't match, show an error.
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('New passwords do not match.'),
            duration: Duration(seconds: 3),
          ),
        );
        return;
      }

      setState(() {
        _isChangingPassword = true;
      });

      try {
        // Make an HTTP request to change the password
        final response = await _changePasswordRequest();

        if (response.statusCode == 200) {
          final responseBody = response.body;

          if (responseBody.contains('Password changed successfully')) {
            // Show a success message
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Password changed successfully.'),
                duration: Duration(seconds: 3),
              ),
            );

            // Reset the form
            _formKey.currentState!.reset();
          } else {
            // Handle other responses or errors
            print('Password change failed.');
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                content: Text('Password change not successful.'),
                duration: Duration(seconds: 3),
              ),
            );
          }
        } else {
          // Handle other responses or errors
          print('Password change failed.');
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Password change not successful.'),
              duration: Duration(seconds: 3),
            ),
          );
        }
      } catch (error) {
        print('Password change error: $error');
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('Password change not successful.'),
            duration: Duration(seconds: 3),
          ),
        );
      } finally {
        setState(() {
          _isChangingPassword = false;
        });
      }
    }
  }

  Future<http.Response> _changePasswordRequest() async {
    final headers = {
      'Content-Type': 'application/json',
      'X-CSRF-Token': 'your_csrf_token', // Replace with your CSRF token
    };
    final apiUrl =
        '/admin/auth/changepasswordv2'; // Replace with your API endpoint

    final response = await http.post(
      Uri.parse('https://app.suellastheshoelaundry.com' +
          apiUrl), // Replace with your API domain
      body: {
        'email': _userEmail, // Use the stored email
        'currentPassword': _currentPassword,
        'newPassword': _newPassword,
      },
    );
    return response;
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(

      body: SingleChildScrollView(
        child: Container(
                   padding:
                  EdgeInsets.fromLTRB(29 * fem, 50 * fem, 29 * fem, 27 * fem),
          color: Colors.white,
          child: Form(
            key: _formKey,
            // Wrap the form around your form fields
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () {
                        Navigator.pop(context); // Go back when tapped
                      },
                      child: Image.asset(
                        'assets/icons/images/back.png',
                        width: 30 * fem,
                        height: 30 * fem,
                      ),
                    ),
                    Expanded(
                      child: Center(
                        child: Container(
                          margin: EdgeInsets.only(top: 4 * fem),
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
                    GestureDetector(
                      onTap: () {
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => EditProfileScreen(),
                          ),
                        );
                      },
                      child: Image.asset(
                        'assets/icons/images/edit.png',
                        width: 30 * fem,
                        height: 30 * fem,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 10.0),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: GestureDetector(
                        onTap: () {
                          Navigator.push(
                            context,
                            MaterialPageRoute(
                              builder: (context) => ProfileScreen(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Profile',
                                style: TextStyle(
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff000000),
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
                              builder: (context) => ChangePasswordScreen(),
                            ),
                          );
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(
                              10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Text(
                                'Security',
                                style: TextStyle(
                                  fontSize: 14 * ffem,
                                  fontWeight: FontWeight.w600,
                                  color: Color(0xff000000),
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
                Container(
                  margin: EdgeInsets.only(top: 20 * fem),
                  child: Text(
                    'Personal Details',
                    style: TextStyle(
                      fontSize: 15 * ffem,
                      fontWeight: FontWeight.w700,
                      color: Color(0xff57cc99),
                    ),
                  ),
                ),
                SizedBox(height: 5 * fem),
                Divider(),
                
                // Wrap each TextFormField within a TextFormField widget
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Current Password',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter your current password.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _currentPassword = value!;
                  },
                ),
                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'New Password',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please enter a new password.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _newPassword = value!;
                  },
                ),

                TextFormField(
                  decoration: InputDecoration(
                    labelText: 'Confirm New Password',
                  ),
                  obscureText: true,
                  validator: (value) {
                    if (value == null || value.isEmpty) {
                      return 'Please confirm your new password.';
                    }
                    return null;
                  },
                  onSaved: (value) {
                    _confirmNewPassword = value!;
                  },
                ),
                SizedBox(height: 20.0),
                ElevatedButton(
                  onPressed: _isChangingPassword ? null : _submit,
                  child: _isChangingPassword
                      ? CircularProgressIndicator()
                      : Text('Change Password'),
                ),
              ],
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
