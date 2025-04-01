import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/gestures.dart';
import 'package:suellas/utils.dart';
import 'package:suellas/design/blank.dart';
import 'package:suellas/design/register.dart';
import 'package:suellas/design/forgot.dart';
import 'package:suellas/design/done.dart';
import 'package:suellas/design/login.dart';

// import 'package:suellas/customer/customer_home.dart'; // Import the customer home screen // Import the branch home screen

class ForgotScreen extends StatefulWidget {
  const ForgotScreen({Key? key}) : super(key: key);

  @override
  State<ForgotScreen> createState() {
    return _ForgotScreen();
  }
}

class _ForgotScreen extends State<ForgotScreen> {
  final _form = GlobalKey<FormState>();

  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredPassword = '';
  var _enteredUsername = '';
  var _isAuthenticating = false;
  var _enteredFirstName = '';
  var _enteredLastName = '';
  var _enteredMobileNumber = '';
  var _enteredAddress = '';
  var _enteredCity = '';
  var _enteredProvince = '';
  var _acceptedTerms = false;
  var _isObscure = true;

  void _submit() async {
    final isValid = _form.currentState!.validate();

    if (!_acceptedTerms && !_isLogin) {
      showDialog(
        context: context,
        builder: (ctx) => AlertDialog(
          title: Text('Terms and Conditions'),
          content: Text('Please accept the terms and conditions to proceed.'),
          actions: <Widget>[
            TextButton(
              onPressed: () {
                Navigator.of(ctx).pop();
              },
              child: Text('Okay'),
            ),
          ],
        ),
      );
      return;
    }

    if (!isValid) {
      return;
    }

    _form.currentState!.save();

    try {
      setState(() {
        _isAuthenticating = true;
      });

      // final response = await _sendAuthRequest();

      final headers = {
        'Content-Type': 'application/json',
        'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
      };
      final apiUrl =
          _isLogin ? '/admin/auth/loginv2' : '/admin/auth/registerv2';

      final response = await http.post(
        Uri.parse('https://app.suellastheshoelaundry.com/admin/auth/forgot'),
        body: {
          'email': _enteredEmail,
        },
      );

      if (response.statusCode == 200) {
        final responseBody = response.body;

        print(responseBody);

        if (responseBody.contains('Password changed successfully')) {
          // Show a "Thank You" SnackBar
          ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(
              content: Text('Thank you for registering! Please sign in.'),
              duration: Duration(seconds: 3), // Duration to show the SnackBar
            ),
          );

          // Delay navigation to the sign-in page
          Future.delayed(Duration(seconds: 3), () {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) =>
                    AuthScreen(), // Replace with your sign-in page
              ),
            );
          });
        } else if (responseBody.contains('Login successful')) {
          if (_enteredEmail.endsWith('@suellas.com')) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => BlankPage(),
                settings: RouteSettings(
                  arguments: responseBody,
                ),
              ),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => BlankPage(),
                settings: RouteSettings(
                  arguments: responseBody,
                ),
              ),
            );
          }
        } else {
          print('Authentication failed.');
        }
      } else {
        print('Authentication failed.');
      }
    } catch (error) {
      print('Authentication error: $error');
    }
  }

  // Future<http.Response> _sendAuthRequest() async {
  //   final headers = {
  //     'Content-Type': 'application/json',
  //     'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
  //   };
  //   final apiUrl = _isLogin ? '/admin/auth/loginv2' : '/admin/auth/registerv2';

  //   final response = await http.post(
  //     Uri.parse('https://app.suellastheshoelaundry.com/admin/auth/forgot'),
  //     body: {
  //       'email': _enteredEmail,
  //     },
  //   );
  //   return response;
  // }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final String qrData = "ABC123";

    return Scaffold(
      //  appBar: CustomAppBar(), // Use your custom AppBar
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                // suellaslogoblack1oj7 (4:16599)
                margin: EdgeInsets.fromLTRB(
                    0 * fem, 20 * fem, 20.86 * fem, 20 * fem),
                width: 128 * fem,
                height: 50 * fem,
                child: Image.asset(
                  'assets/design/images/suellas-logo-black-1.png',
                  fit: BoxFit.cover,
                ),
              ),
              // Container(
              //   alignment: Alignment.centerLeft, // Align to the left
              //   child: Padding(
              //     padding: EdgeInsets.only(left: 30.0),
              //     child: GestureDetector(
              //       onTap: () {
              //         // Handle the back navigation here, e.g., using Navigator
              //         Navigator.of(context)
              //             .pop(); // This will pop the current screen and go back
              //       },
              //       child: SizedBox(
              //         width: 30 * fem,
              //         height: 30 * fem,
              //         child: Image.asset(
              //           'assets/design/images/btn-back.png',
              //           width: 30 * fem,
              //           height: 30 * fem,
              //         ),
              //       ),
              //     ),
              //   ),
              // ),
              Container(
                padding: EdgeInsets.fromLTRB(
                  29 * fem,
                  39.77 * fem,
                  40.14 * fem,
                  5 * fem,
                ),
                width: double.infinity,
                height: 400 * fem,
                decoration: BoxDecoration(
                  color: Color(0xfffffff),
                ),
                child: Form(
                  key: _form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(height: 20 * fem),
                      Center(
                        child: Container(
                          width: 286 * fem,
                          height: 20 * fem,
                          child: Center(
                            child: Text(
                              'Forgot Password?',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 20 * ffem,
                                fontWeight: FontWeight.w600,
                                height: 1 * ffem / fem,
                                color: Color(0xff57cc99),
                              ),
                            ),
                          ),
                        ),
                      ),

                      SizedBox(height: 20 * fem),
                      Container(
                        width: 286 * fem,
                        height: 40 * fem,
                        child: Center(
                          child: Text(
                            'Don’t worry! Enter your registered email below to receive password instructions',
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
                      ),

                      SizedBox(height: 20 * fem),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText:
                              'Email Address', // Placeholder text inside the TextFormField
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff898a7a),
                          ),
                        ),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        textCapitalization: TextCapitalization.none,
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty ||
                              !value.contains('@')) {
                            return 'Please enter a valid email address.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _enteredEmail = value!;
                        },
                      ),
                      SizedBox(height: 20 * fem),
                      Container(
                        padding: EdgeInsets.all(20 * fem),
                        width: double.infinity,
                        height: 70 * fem,
                        color: Colors.white,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              width: 231 * fem,
                              height: 19 * fem,
                              child: Row(
                                crossAxisAlignment: CrossAxisAlignment.center,
                                children: [
                                  Container(
                                    margin: EdgeInsets.fromLTRB(
                                      0 * fem,
                                      0 * fem,
                                      6 * fem,
                                      0 * fem,
                                    ),
                                    child: Text(
                                      'Remember Password?',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff333333),
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      Navigator.push(
                                        context,
                                        MaterialPageRoute(
                                          builder: (context) => AuthScreen(),
                                        ),
                                      );
                                    },
                                    child: Text(
                                      'Log In',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 15 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2125 * ffem / fem,
                                        color: Color(0xff57cc99),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              if (_isAuthenticating)
                                CircularProgressIndicator(),
                              if (!_isAuthenticating)
                                Container(
                                  width: 200,
                                  height: 40,
                                  decoration: BoxDecoration(
                                    color: Color(0xff57cc99),
                                    borderRadius: BorderRadius.circular(70),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: () {
                                      if (_form.currentState!.validate()) {
                                        // Only submit if the form is valid
                                        _submit();
                                      }
                                    },
                                    style: ElevatedButton.styleFrom(
                                      primary: Colors
                                          .transparent, // Make the button transparent
                                      elevation: 0, // Remove button elevation
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                    ),
                                    child: Text(
                                      'Reset Password',
                                      style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        color: Color(0xffffffff),
                                      ),
                                    ),
                                  ),
                                ),
                              // if (!_isAuthenticating)
                              //   TextButton(
                              //     onPressed: () {
                              //       setState(() {
                              //         _isLogin = !_isLogin;
                              //       });
                              //     },
                              //     child: Text(
                              //       _isLogin ? '' : '',
                              //     ),
                              //   ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              // ... (unchanged)
                            ],
                          ),
                        ),
                      ),
                      // ... (green container's child widgets)
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20 * fem),
                width: double.infinity,
                height: 100 * fem,
                color: Colors.white,
                child: Align(
                  alignment: Alignment.bottomCenter,
                  child: Container(
                    width: 231 * fem,
                    height: 50 * fem,
                    child: Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(
                              0 * fem, 0 * fem, 6 * fem, 0 * fem),
                          child: Text(
                            'Don’t have an account?',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff333333),
                            ),
                          ),
                        ),
                        GestureDetector(
                          onTap: () {
                            Navigator.push(
                              context,
                              MaterialPageRoute(
                                builder: (context) => RegisterScreen(),
                              ),
                            );
                          },
                          child: Text(
                            'Sign Up',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.2125 * ffem / fem,
                              color: Color(0xff57cc99),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize =>
      Size.fromHeight(80.0); // Adjust the height as needed

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    return AppBar(
      title: Text('Your App Title'),
      leading: Image.asset(
        'assets/design/images/suellas-logo-black-1.png',
        width: 128 * fem,
        height: 50 * fem,
      ),
      actions: [
        // Add any other actions or buttons here
        IconButton(
          icon: Icon(Icons.search),
          onPressed: () {
            // Handle search action
          },
        ),
      ],
    );
  }
}
