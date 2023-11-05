import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/gestures.dart';
import 'package:suellas/customer/home_old.dart';
import 'package:suellas/utils.dart';
import 'package:suellas/design/blank.dart';
// import 'package:suellas/customer/customer_home.dart'; // Import the customer home screen
import 'package:suellas/branch/branch_home_screen.dart'; // Import the branch home screen

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
 var _isObscure=true;

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
                builder: (context) => AuthScreen(), // Replace with your sign-in page
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
              padding: EdgeInsets.fromLTRB(29 * fem, 39.77 * fem, 40.14 * fem, 5 * fem),
              width: double.infinity,
              height: 500 * fem,
              decoration: BoxDecoration(
                color: Color(0xfffffff),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    margin: EdgeInsets.fromLTRB(0 * fem, 10 * fem, 0, 0),
                    child: Text(
                      'Good Morning,',
                      textAlign: TextAlign.left,
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
                      textAlign: TextAlign.left,
                      style: SafeGoogleFont(
                        'Inter',
                        fontSize: 21 * ffem,
                        fontWeight: FontWeight.w900,
                        height: 1.2125 * ffem / fem,
                        color: Color(0xff040b14),
                      ),
                    ),
                  ),
                  Form(
                    child: TextFormField(
                      decoration: InputDecoration(
                        hintText: 'Email Address',
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
                  ),
                  Form(
                    child: TextFormField(
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
                              _isObscure = !_isObscure;
                            });
                          },
                          child: Icon(
                            _isObscure ? Icons.visibility : Icons.visibility_off,
                            color: Color(0xff898a7a),
                          ),
                        ),
                      ),
                      obscureText: _isObscure,
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
                  ),
                  SizedBox(height: 20 * fem),
                  SizedBox(height: 12),
                  if (_isAuthenticating) CircularProgressIndicator(),
                  if (!_isAuthenticating)
                    ElevatedButton(
                      onPressed: _submit,
                      child: Text(_isLogin ? 'Login' : 'Signup'),
                    ),
                  if (!_isAuthenticating)
                    TextButton(
                      onPressed: () {
                        setState(() {
                          _isLogin = !_isLogin;
                        });
                      },
                      child: Text(
                        _isLogin ? 'Create an account' : 'Already have an account',
                      ),
                    ),
                  Positioned(
                    left: 35 * fem,
                    top: 312 * fem,
                    child: Container(
                      width: 339.5 * fem,
                      height: 20 * fem,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 12 * fem, 0 * fem),
                            width: 20 * fem,
                            height: 20 * fem,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              border: Border.all(color: Color(0xe557cc99)),
                            ),
                          ),
                          Container(
                            margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 63.5 * fem, 0 * fem),
                            child: Text(
                              'Keep me logged in',
                              textAlign: TextAlign.center,
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 14 * ffem,
                                fontWeight: FontWeight.w500,
                                height: 1.4285714286 * ffem / fem,
                                color: Color(0xff000000),
                              ),
                            ),
                          ),
                          Text(
                            'Forgot Password?',
                            textAlign: TextAlign.center,
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w500,
                              height: 1.4285714286 * ffem / fem,
                              color: Color(0xff57cc99),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
              SizedBox(height: 20 * fem), // Add spacing between the containers
              Container(
                padding: EdgeInsets.all(20 * fem),
                width: double.infinity,
                height: 500 * fem, // Use the same height as the green container
                color: Colors.blue, // Set the background color to blue
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    // ... (blue container's child widgets)
                  ],
                ),
              ),
            //    SizedBox(height: 12),
            //           if (_isAuthenticating)
            //             CircularProgressIndicator(),
            //           if (!_isAuthenticating)
            //             ElevatedButton(
            //               onPressed: _submit,
            //               child: Text(_isLogin ? 'Login' : 'Signup'),
            //             ),
            //           if (!_isAuthenticating)
            //             TextButton(
            //               onPressed: () {
            //                 setState(() {
            //                   _isLogin = !_isLogin;
            //                 });
            //               },
            //               child: Text(
            //                 _isLogin ? 'Create an account' : 'Already have an account',
            //               ),
            //             ),
            ],
          ),
        ),
      ),


    );
  }
}



//   Widget build(BuildContext context) {
//         double baseWidth = 414;
//     double fem = MediaQuery.of(context).size.width / baseWidth;
//     double ffem = fem * 0.97;
//     final String qrData = "ABC123";
//     return Scaffold(
//     appBar: AppBar(
//         title: Text('Blank Page'),
//       ),
//      backgroundColor: Colors.white,
//        body: SingleChildScrollView(
//         child: Center(
//           child: SingleChildScrollView(
//             child: Card(
//               margin: const EdgeInsets.all(20),
//               child: Padding(
//                 padding: const EdgeInsets.all(16),
//                 child: Form(
//                   key: _form,
//                   child: Column(
//                     mainAxisSize: MainAxisSize.min,
//                     children: [

//                       Container(
//                       margin: EdgeInsets.fromLTRB(0 * fem, 88 * fem, 0, 0),
//                       width: 114 * fem,
//                       height: 20 * fem,
//                       child: Text(
//                         'Good Morning,',
//                         textAlign: TextAlign.left, // Align text to the left
//                         style: SafeGoogleFont(
//                           'Inter',
//                           fontSize: 16 * ffem,
//                           fontWeight: FontWeight.w500,
//                           height: 1.2125 * ffem / fem,
//                           color: Color(0xff898a7a),
//                         ),
//                       ),
//                     ),

                      
//                       Divider(
//                         color: Colors.black,
//                         thickness: 1,
//                         height: 16,
//                       ),
//                       if (!_isLogin)
//                         Column(
//                           children: [
//                             TextFormField(
//                               decoration: InputDecoration(labelText: 'First Name'),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty || value.trim().length < 2) {
//                                   return 'Please enter at least 2 characters.';
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {
//                                 _enteredFirstName = value!;
//                               },
//                             ),
//                             TextFormField(
//                               decoration: InputDecoration(labelText: 'Last Name'),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty || value.trim().length < 2) {
//                                   return 'Please enter at least 2 characters.';
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {
//                                 _enteredLastName = value!;
//                               },
//                             ),
//                             TextFormField(
//                               decoration: InputDecoration(labelText: 'Mobile Number'),
//                               keyboardType: TextInputType.phone,
//                               validator: (value) {
//                                 if (value == null || value.isEmpty || value.trim().length < 7) {
//                                   return 'Please enter a valid mobile number.';
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {
//                                 _enteredMobileNumber = value!;
//                               },
//                             ),
//                             TextFormField(
//                               decoration: InputDecoration(labelText: 'Address'),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please enter your address.';
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {
//                                 _enteredAddress = value!;
//                               },
//                             ),
//                             TextFormField(
//                               decoration: InputDecoration(labelText: 'City'),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please enter your city.';
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {
//                                 _enteredCity = value!;
//                               },
//                             ),
//                             TextFormField(
//                               decoration: InputDecoration(labelText: 'Province'),
//                               validator: (value) {
//                                 if (value == null || value.isEmpty) {
//                                   return 'Please enter your province.';
//                                 }
//                                 return null;
//                               },
//                               onSaved: (value) {
//                                 _enteredProvince = value!;
//                               },
//                             ),
//                           ],
//                         ),


                        
//                       TextFormField(
//                         decoration: InputDecoration(labelText: 'Email Address'),
//                         keyboardType: TextInputType.emailAddress,
//                         autocorrect: false,
//                         textCapitalization: TextCapitalization.none,
//                         validator: (value) {
//                           if (value == null ||
//                               value.trim().isEmpty ||
//                               !value.contains('@')) {
//                             return 'Please enter a valid email address.';
//                           }
//                           return null;
//                         },
//                         onSaved: (value) {
//                           _enteredEmail = value!;
//                         },
//                       ),
//                       TextFormField(
//                         decoration: InputDecoration(labelText: 'Password'),
//                         obscureText: true,
//                         validator: (value) {
//                           if (value == null || value.trim().length < 6) {
//                             return 'Password must be at least 6 characters long.';
//                           }
//                           return null;
//                         },
//                         onSaved: (value) {
//                           _enteredPassword = value!;
//                         },
//                       ),

//                       if (!_isLogin)
//                    Column(
//                 crossAxisAlignment: CrossAxisAlignment.start,
//                 children: [
//                   Row(
//                 children: [
//                   Checkbox(
//                     value: _acceptedTerms,
//                     onChanged: (value) {
//                       setState(() {
//                         _acceptedTerms = value!;
//                       });
//                     },
//                   ),
//                   Text('I accept the terms and conditions.'),
//                 ],
//               ),
//                     RichText(
//                       text: TextSpan(
//                         children: [
//                           TextSpan(
//                             text: 'By joining, I agree to the terms and conditions, including ',
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                           TextSpan(
//                             text: 'Suellas reward points Terms',
//                             style: TextStyle(
//                               color: Colors.blue,
//                               decoration: TextDecoration.underline,
//                             ),
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 // Handle the tap event, e.g., open the relevant link
//                               },
//                           ),
//                           TextSpan(
//                             text: ', ',
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                           TextSpan(
//                             text: 'Mobile application terms',
//                             style: TextStyle(
//                               color: Colors.blue,
//                               decoration: TextDecoration.underline,
//                             ),
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 // Handle the tap event
//                               },
//                           ),
//                           TextSpan(
//                             text: ' and ',
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                           TextSpan(
//                             text: 'privacy policy',
//                             style: TextStyle(
//                               color: Colors.blue,
//                               decoration: TextDecoration.underline,
//                             ),
//                             recognizer: TapGestureRecognizer()
//                               ..onTap = () {
//                                 // Handle the tap event
//                               },
//                           ),
//                           TextSpan(
//                             text: '. Please read the terms and conditions before accepting.',
//                             style: TextStyle(
//                               color: Colors.grey,
//                             ),
//                           ),
//                         ],
//                       ),
//                     ),
//                     Text('Terms of use privacy policy.'),
//                   ],
//                 ),

//                       SizedBox(height: 12),
//                       if (_isAuthenticating)
//                         CircularProgressIndicator(),
//                       if (!_isAuthenticating)
//                         ElevatedButton(
//                           onPressed: _submit,
//                           child: Text(_isLogin ? 'Login' : 'Signup'),
//                         ),
//                       if (!_isAuthenticating)
//                         TextButton(
//                           onPressed: () {
//                             setState(() {
//                               _isLogin = !_isLogin;
//                             });
//                           },
//                           child: Text(
//                             _isLogin ? 'Create an account' : 'Already have an account',
//                           ),
//                         ),
//                     ],
//                   ),
//                 ),
//               ),
//             ),
//           ),
//         ),
//       ),
//     );
//   }
//}
