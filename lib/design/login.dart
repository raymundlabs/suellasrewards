import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/gestures.dart';
// import 'package:suellas/customer/home_old.dart';
import 'package:suellas/utils.dart';
import 'package:suellas/design/blank.dart';
import 'package:suellas/design/register.dart';
import 'package:suellas/branch/scan.dart';
import 'package:suellas/design/forgot.dart';
import 'package:suellas/design/done.dart';
import 'package:suellas/customer/home.dart';
// import 'package:google_sign_in/google_sign_in.dart';
// import 'package:firebase_auth/firebase_auth.dart';

//import 'package:suellas/customer/customer_home.dart'; // Import the customer home screen
// import 'package:suellas/branch/branch_home_screen.dart'; // Import the branch home screen

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
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
  bool _rememberMe = false;

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

      final response = await _sendAuthRequest();

      if (response.statusCode == 200) {
        final responseBody = response.body;

        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userEmail', _enteredEmail);

        await prefs.setString('userDetails', responseBody);

        if (_rememberMe == true) {
          await prefs.setString('userPassword', _enteredPassword);
        } else {
          await prefs.remove('userPassword');
        }
        print(responseBody);

        if (responseBody.contains('Registration successful')) {
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
                builder: (context) => ScanScreen(),
                settings: RouteSettings(
                  arguments: responseBody,
                ),
              ),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                builder: (context) => CustomerHomeScreen(),
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
    } finally {
      setState(() {
        _isAuthenticating = false;
      });
    }
  }

//   Future<User?> signInWithGoogle() async {
//   try {
//     final GoogleSignInAccount? googleUser = await GoogleSignIn().signIn();
//     if (googleUser == null) {
//       // User canceled the Google Sign-In process.
//       return null;
//     }

//     final GoogleSignInAuthentication googleAuth = await googleUser.authentication;
//     final AuthCredential credential = GoogleAuthProvider.credential(
//       accessToken: googleAuth.accessToken,
//       idToken: googleAuth.idToken,
//     );

//     final UserCredential authResult = await FirebaseAuth.instance.signInWithCredential(credential);
//     final User? user = authResult.user;

//     if (user != null) {
//       // The user is signed in.
//       return user;
//     } else {
//       // Sign-in failed, handle the error.
//       return null;
//     }
//   } catch (error) {
//     // Handle errors, e.g., display an error message.
//     print('Error signing in with Google: $error');
//     return null;
//   }
// }

  Future<http.Response> _sendAuthRequest() async {
    final headers = {
      'Content-Type': 'application/json',
      'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
    };
    final apiUrl = _isLogin ? '/admin/auth/loginv2' : '/admin/auth/registerv2';

    final response = await http.post(
      Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
      body: {
        'email': _enteredEmail,
        'password': _enteredPassword,
        'username': _enteredUsername,
        'first_name': _enteredFirstName,
        'last_name': _enteredLastName,
        'mobile_number': _enteredMobileNumber,
        'address': _enteredAddress,
        'city': _enteredCity,
        'province': _enteredProvince,
      },
    );
    return response;
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final String qrData = "ABC123";

    return Scaffold(
      appBar: AppBar(
        title: Text(''),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    29 * fem, 39.77 * fem, 40.14 * fem, 5 * fem),
                width: double.infinity,
                height: 380 * fem,
                decoration: BoxDecoration(
                  color: Color(0xfffffff),
                ),
                child: Form(
                  key: _form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0, 0),
                        child: Text(
                          'Good Morning,',
                          textAlign: TextAlign.left, // Align text to the left
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff898a7a),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0, 0),
                        child: Text(
                          'Welcome Back!',
                          textAlign: TextAlign.left, // Align text to the left
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 21 * ffem,
                            fontWeight: FontWeight.w900,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff040b14),
                          ),
                        ),
                      ),

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

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Password',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff898a7a),
                          ),
                          suffixIcon: GestureDetector(
                            onTap: () {
                              setState(() {
                                _isObscure =
                                    !_isObscure; // Toggle password visibility
                              });
                            },
                            child: Icon(
                              _isObscure
                                  ? Icons.visibility
                                  : Icons.visibility_off,
                              color:
                                  Color(0xff898a7a), // Change color as needed
                            ),
                          ),
                        ),
                        obscureText:
                            _isObscure, // Toggle password visibility here
                        validator: (value) {
                          if (value == null || value.trim().length < 6) {
                            return 'Password must be at least 6 characters long.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _enteredPassword = value!;
                        },
                      ),

                      SizedBox(height: 20 * fem),

                      Container(
                        margin: EdgeInsets.only(top: 25 * fem, left: 70 * fem),
                        padding: EdgeInsets.fromLTRB(
                            23 * fem, 16 * fem, 75 * fem, 13 * fem),
                        width: 295 * fem,
                        height: 50 * fem,
                        decoration: BoxDecoration(
                          border: Border.all(color: Color(0xff000000)),
                          color: Color(0x7fffffff),
                          borderRadius: BorderRadius.circular(70 * fem),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 39.36 * fem, 3 * fem),
                              width: 17.64 * fem,
                              height: 18 * fem,
                              child: Image.asset(
                                'assets/design/images/group.png',
                                width: 17.64 * fem,
                                height: 18 * fem,
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.only(top: 1 * fem),
                              child: Text(
                                'Login with Google',
                                textAlign: TextAlign.center,
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 16 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20 * fem),
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
                                    color:
                                        Color(0xff57cc99), // Background color
                                    borderRadius: BorderRadius.circular(70),
                                  ),
                                  child: ElevatedButton(
                                    onPressed: _submit,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors
                                          .transparent, // Allows Container's color to show
                                      foregroundColor:
                                          Colors.white, // Text color
                                      elevation: 0, // No shadow
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                    ),
                                    child: Text(
                                      _isLogin ? 'Login' : 'Signup',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 16 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2125 * ffem / fem,
                                        color: Colors.white,
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

                      // ... (green container's child widgets)
                    ],
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.all(20 * fem),
                width: double.infinity,
                height: 250 * fem, // Use the same height as the green container
                color: Colors.white, // Set the background color to blue
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      width: 444 * fem,
                      height: 19 * fem,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment
                            .center, // Center the row horizontally
                        crossAxisAlignment: CrossAxisAlignment
                            .center, // Center the row vertically
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 7 * fem, 29 * fem, 0 * fem),
                            width: 102 * fem,
                            height: 2 * fem,
                            decoration: BoxDecoration(
                              color: Color(0x7c000000),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 0 * fem, 30 * fem, 0 * fem),
                            child: Text(
                              'OR',
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 17 * ffem,
                                fontWeight: FontWeight.w400,
                                height: 1.2125 * ffem / fem,
                                color: Color(0x7c000000),
                              ),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 7 * fem, 0 * fem, 0 * fem),
                            width: 102 * fem,
                            height: 2 * fem,
                            decoration: BoxDecoration(
                              color: Color(0x7c000000),
                            ),
                          ),
                        ],
                      ),
                    ),
              Container(
  margin: EdgeInsets.only(top: 602 * fem, left: 70 * fem), // Adjusted top and left for positioning
  padding: EdgeInsets.fromLTRB(23 * fem, 16 * fem, 75 * fem, 13 * fem),
  width: 295 * fem,
  height: 50 * fem,
  decoration: BoxDecoration(
    border: Border.all(color: Color(0xff000000)),
    color: Color(0x7fffffff),
    borderRadius: BorderRadius.circular(70 * fem),
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 39.36 * fem, 3 * fem),
        width: 17.64 * fem,
        height: 18 * fem,
        child: Image.asset(
          'assets/design/images/group.png',
          width: 17.64 * fem,
          height: 18 * fem,
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0 * fem, 1 * fem, 0 * fem, 0 * fem),
        child: Text(
          'Login with Google',
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 16 * ffem,
            fontWeight: FontWeight.w600,
            height: 1.2125 * ffem / fem,
            color: Color(0xff000000),
          ),
        ),
      ),
    ],
  ),
),

                    SizedBox(height: 10 * fem),
          Container(
  margin: EdgeInsets.only(top: 532 * fem, left: 69 * fem), // Adjusted top and left for positioning
  padding: EdgeInsets.fromLTRB(21 * fem, 12 * fem, 63 * fem, 13 * fem),
  width: 295 * fem,
  height: 50 * fem,
  decoration: BoxDecoration(
    color: Color(0xff4285f4),
    borderRadius: BorderRadius.circular(70 * fem),
  ),
  child: Row(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
      Container(
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 25 * fem, 0 * fem),
        width: 25 * fem,
        height: 25 * fem,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12.5 * fem),
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage('assets/design/images/ellipse-3-bg.png'),
          ),
        ),
      ),
      Container(
        margin: EdgeInsets.fromLTRB(0 * fem, 3 * fem, 0 * fem, 0 * fem),
        child: Text(
          'Login with Facebook',
          textAlign: TextAlign.center,
          style: SafeGoogleFont(
            'Inter',
            fontSize: 16 * ffem,
            fontWeight: FontWeight.w600,
            height: 1.2125 * ffem / fem,
            color: Color(0xffffffff),
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
                padding: EdgeInsets.all(20 * fem),
                width: double.infinity,
                height: 150 * fem, // Use the same height as the green container
                color: Colors.white, // Set the background color to blue
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Positioned(
                      left: 100 * fem,
                      top: 696 * fem,
                      child: Container(
                        width: 231 * fem,
                        height: 19 * fem,
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
                                      builder: (context) => RegisterScreen()),
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
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
