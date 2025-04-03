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
import 'package:google_sign_in/google_sign_in.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:google_sign_in/google_sign_in.dart';
// import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:google_sign_in/google_sign_in.dart';

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
  GoogleSignIn _googleSignIn = GoogleSignIn();
  @override
  void initState() {
    super.initState();
    _loadSavedCredentials();
    // Check if "Remember Me" is checked and the credentials are not empty
  }

  void _loadSavedCredentials() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    final savedEmail = prefs.getString('userEmail');
    final savedPassword = prefs.getString('userPassword');

    if (savedEmail != null && savedPassword != null) {
      setState(() {
        _enteredEmail = savedEmail;
        _enteredPassword = savedPassword;
        _rememberMe = true;
      });

      Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => CustomerHomeScreen(),
        ),
      );
    }
  }

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

  Future<void> _handleGoogleSignIn() async {
    try {
      FirebaseAuth auth = FirebaseAuth.instance;
      final GoogleSignIn googleSignIn = GoogleSignIn();

      // Trigger the authentication flow
      final GoogleSignInAccount? googleUser = await googleSignIn.signIn();

      // Obtain the auth details from the request
      final GoogleSignInAuthentication googleAuth =
          await googleUser!.authentication;

      // Create a new credentials
      final AuthCredential credential = GoogleAuthProvider.credential(
        accessToken: googleAuth.accessToken,
        idToken: googleAuth.idToken,
      );

      // Sign in the user with the credentials
      final UserCredential userCredential =
          await auth.signInWithCredential(credential);

      // Check if the user is signed in
      if (userCredential.user != null) {
        // Access the user's email
        String userEmail = userCredential.user!.email ?? 'Email not available';

        // Print the email
        print('User email: $userEmail');
        await _sendGoogleAuthRequest(userEmail);
      }
    } catch (error) {
      print('Google Sign-In Error: $error');
    }
  }

  Future<void> _sendGoogleAuthRequest(String email) async {
    try {
      final headers = {
        'Content-Type': 'application/json',
        'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
      };
      final apiUrl = '/admin/auth/loginWithGoogle';

      final response = await http.post(
        Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
        body: {
          'email': email,
        },
      );

      if (response.statusCode == 200) {
        // Handle the response as needed
        final responseBody = response.body;
        print(responseBody);

        // Save email and response to shared preferences
        SharedPreferences prefs = await SharedPreferences.getInstance();
        await prefs.setString('userEmail', email);
        await prefs.setString('userDetails', responseBody);

        if (responseBody.contains('Login successful')) {
          if (email.endsWith('@suellas.com')) {
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
        }
      } else if (response.statusCode == 401) {
        // Handle 401 Unauthorized status code
        // Sign out of Google to allow selecting another email
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text('User does not exist'),
            duration: Duration(seconds: 3),
          ),
        );
        await _googleSignIn.signOut();
      } else {
        // Handle other cases or show an error message
        print('Authentication failed with status code: ${response.statusCode}');
      }
    } catch (error) {
      print('Error during Google authentication request: $error');
    }
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
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    29 * fem, 39.77 * fem, 40.14 * fem, 5 * fem),
                width: double.infinity,
                height: 400 * fem,
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

                      Container(
                        margin: EdgeInsets.only(left: 2 * fem, top: 10 * fem),
                        width: 339.5 * fem,
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                InkWell(
                                  onTap: () {
                                    setState(() {
                                      _rememberMe = !_rememberMe;
                                    });
                                  },
                                  child: Container(
                                    width: 20.0,
                                    height: 20.0,
                                    decoration: BoxDecoration(
                                      shape: BoxShape.circle,
                                      border: Border.all(
                                        color: Colors.grey,
                                        width: 2.0,
                                      ),
                                    ),
                                    child: _rememberMe
                                        ? Center(
                                            child: Icon(
                                              Icons.check,
                                              size: 11.0,
                                              color: Colors.green,
                                            ),
                                          )
                                        : Container(),
                                  ),
                                ),
                                SizedBox(
                                  width: 8.0,
                                ),
                                Text(
                                  'Remember Me',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w500,
                                    height: 1.4285714286 * ffem / fem,
                                    color: Color(0xff57cc99),
                                  ),
                                ),
                                Spacer(), // Add Spacer to push the next widget to the right
                                GestureDetector(
                                  onTap: () {
                                    Navigator.push(
                                      context,
                                      MaterialPageRoute(
                                        builder: (context) => ForgotScreen(),
                                      ),
                                    );
                                  },
                                  child: Text(
                                    'Forgot Password?',
                                    style: TextStyle(
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w500,
                                      color: Color(0xff57cc99),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),

                      Container(
                        margin: EdgeInsets.only(
                            top: 20 * fem), // Adjusted top margin
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
                                    onPressed: _submit,
                                    style: ElevatedButton.styleFrom(
                                      backgroundColor: Colors
                                          .transparent, // ✅ Updated from `primary`
                                      elevation: 0,
                                      shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(70),
                                      ),
                                    ),
                                    child: Text(
                                      _isLogin ? 'Login' : 'Signup',
                                      style: TextStyle(
                                        // ✅ Changed from `SafeGoogleFont`
                                        fontSize: 16,
                                        fontWeight: FontWeight.w600,
                                        height: 1.2,
                                        color: Colors.white,
                                      ),
                                    ),
                                  ),
                                )

                              // if (!_isAuthenticating)
                              //   TextButton(
                              //     onPressed: () {
                              //       seColor.fromARGB(255, 204, 87, 194)                          //         _isLogin = !_isLogin;
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
                margin: EdgeInsets.symmetric(
                    horizontal: 20 * fem, vertical: 20 * fem),
                child: Container(
                  padding: EdgeInsets.symmetric(horizontal: 10 * fem),
                  width: double.infinity,
                  height: 50 * fem,
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Container(
                          height: 2 * fem,
                          decoration: BoxDecoration(
                            color: Color(0x7c000000),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.symmetric(horizontal: 10 * fem),
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
                      Expanded(
                        child: Container(
                          height: 2 * fem,
                          decoration: BoxDecoration(
                            color: Color(0x7c000000),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
           Container(
  margin: EdgeInsets.only(left: 0 * fem, top: 0 * fem),
  child: ElevatedButton(
    onPressed: _handleGoogleSignIn,
    style: ElevatedButton.styleFrom(
      backgroundColor: Color(0x7fffffff), // ✅ Updated from `primary`
      foregroundColor: Color(0xff000000), // ✅ Updated from `onPrimary`
      elevation: 0.0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(70 * fem),
        side: BorderSide(color: Color(0xff000000)),
      ),
    ),
    child: Container(
      padding: EdgeInsets.fromLTRB(21 * fem, 12 * fem, 63 * fem, 13 * fem),
      width: 295 * fem,
      height: 50 * fem,
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
                image: AssetImage('assets/design/images/group.png'),
              ),
            ),
          ),
          // Text(
          //   'Login with Google',
          //   style: TextStyle( // ✅ Changed from `SafeGoogleFont`
          //     fontSize: 16 * ffem,
          //     fontWeight: FontWeight.w600,
          //     height: 1.2125,
          //     color: Color(0xff000000),
          //   ),
          // ),
        ],
      ),
    ),
  ),
)
,
              SizedBox(height: 10 * fem),
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
