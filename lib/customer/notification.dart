import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/gestures.dart';
import 'package:suellas/customer/home_old.dart';
import 'package:suellas/utils.dart';
import 'package:suellas/design/blank.dart';
import 'package:suellas/design/done.dart';
import 'package:suellas/branch/branch_home_screen.dart';
import 'package:flutter/services.dart';

class NotificationScreen extends StatefulWidget {
  const NotificationScreen({Key? key}) : super(key: key);

  @override
  State<NotificationScreen> createState() {
    return _NotificationScreenState();
  }
}

class _NotificationScreenState extends State<NotificationScreen> {
  final _formKey = GlobalKey<FormState();

  var _currentPassword = '';
  var _newPassword = '';
  var _confirmNewPassword = '';
  var _isChangingPassword = false;
  var _userEmail = '';

  bool isEmailSwitched = false;
  bool isSmsSwitched = false;

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

  void _submit() async {
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
      'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
    };
    final apiUrl = '/admin/auth/changepasswordv2';

    final response = await http.post(
      Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
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
    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: EdgeInsets.all(16.0),
          child: Form(
            key: _formKey,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
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

                // Email Notification Toggle Switch
                Container(
                  margin: EdgeInsets.only(left: 0 * fem, top: 5 * fem),
                  width: 500 * fem,
                  height: 27 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 1 * fem),
                          child: Text(
                            'Email Notification',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 13 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5384615385 * ffem / fem,
                              color: Color(0x66000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10.63 * fem, 6.51 * fem, 11.37 * fem, 5.49 * fem),
                        width: 50 * fem,
                        height: 25 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffc7f9cc),
                          borderRadius: BorderRadius.circular(30 * fem),
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Switch(
                            value: isEmailSwitched,
                            onChanged: (bool value) {
                              setState(() {
                                isEmailSwitched = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                // SMS Notification Toggle Switch
                Container(
                  margin: EdgeInsets.only(left: 0 * fem, top: 5 * fem),
                  width: 500 * fem,
                  height: 27 * fem,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Expanded(
                        child: Container(
                          margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 10 * fem, 1 * fem),
                          child: Text(
                            'SMS Notification',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 13 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.5384615385 * ffem / fem,
                              color: Color(0x66000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        padding: EdgeInsets.fromLTRB(10.63 * fem, 6.51 * fem, 11.37 * fem, 5.49 * fem),
                        width: 50 * fem,
                        height: 25 * fem,
                        decoration: BoxDecoration(
                          color: Color(0xffc7f9cc),
                          borderRadius: BorderRadius.circular(30 * fem),
                        ),
                        child: Align(
                          alignment: Alignment.centerRight,
                          child: Switch(
                            value: isSmsSwitched,
                            onChanged: (bool value) {
                              setState(() {
                                isSmsSwitched = value;
                              });
                            },
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

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
    );
  }
}
