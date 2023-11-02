import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:flutter/gestures.dart';
import 'package:suellas/customer/home_old.dart';
import 'package:suellas/utils.dart';
import 'package:suellas/design/blank.dart';
import 'package:suellas/design/done.dart';
// import 'package:suellas/customer/customer_home.dart'; // Import the customer home screen/ Import the branch home screen
import 'package:flutter/services.dart'; // Import the services library for input formatting

class RegisterScreen extends StatefulWidget {
  const RegisterScreen({Key? key}) : super(key: key);

  @override
  State<RegisterScreen> createState() {
    return _RegisterScreen();
  }
}

class _RegisterScreen extends State<RegisterScreen> {
  final _form = GlobalKey<FormState>();

  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredPassword = '';
  var _enteredUsername = '';
  var _confirmedPassword = '';
  var _isAuthenticating = false;
  var _enteredFirstName = '';
  var _enteredLastName = '';
  var _enteredMobileNumber = '';
  var _enteredAddress = '';
  var _enteredCity = '';
  var _enteredProvince = '';
  var _enteredBarangay = '';
  var _accepted = false;
  var _isObscure = true;
  var isAccepted='';
  bool isChecked = false;
  List<String> days = List.generate(31, (index) => (index + 1).toString());

  List<String> months = [
    'January',
    'February',
    'March',
    'April',
    'May',
    'June',
    'July',
    'August',
    'September',
    'October',
    'November',
    'December',
  ];
  String? selectedDay;
  String? selectedMonth;

  void _submit() async {
    final isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }
    print(_confirmedPassword);
     print(_enteredPassword);
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
                builder: (context) =>
                    Done(), // Replace with your sign-in page
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
      Uri.parse('https://app.suellastheshoelaundry.com/admin/auth/registerv2'),
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
        'barangay': _enteredBarangay,
        'newsletter': isAccepted,
        'selectedDay': selectedDay,
        'selectedMonth': selectedMonth
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
                height: 1500 * fem,
                decoration: BoxDecoration(
                  color: Color(0xfffffff),
                ),
                child: Form(
                  key: _form,
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        alignment: Alignment.topLeft, // Align to the top left
                        child: SizedBox(
                          width: 207 * fem,
                          height: 26 * fem,
                          child: RichText(
                            text: TextSpan(
                              style: SafeGoogleFont(
                                'Inter',
                                fontSize: 21 * ffem,
                                fontWeight: FontWeight.w900,
                                height: 1.2102272397 * ffem / fem,
                                color: Color(0xff040b14),
                              ),
                              children: [
                                TextSpan(
                                  text: 'Welcome to ',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 21 * ffem,
                                    fontWeight: FontWeight.w900,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff040b14),
                                  ),
                                ),
                                TextSpan(
                                  text: 'Suellas',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 21 * ffem,
                                    fontWeight: FontWeight.w900,
                                    height: 1.2125 * ffem / fem,
                                    color: Color(0xff57cc99),
                                  ),
                                ),
                              ],
                            ),
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

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Confirm Password',
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
                          _confirmedPassword = value!;
                        },
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'First Name',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff898a7a),
                          ),
                        ),
                        keyboardType: TextInputType
                            .text, // Use TextInputType.text for first name
                        autocorrect: false,
                        textCapitalization:
                            TextCapitalization.words, // Capitalize each word
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your First Name'; // Provide a more meaningful error message
                          }
                          
                          return null;
                        },
                        onSaved: (value) {
                          _enteredFirstName =
                              value!; // Save the entered first name
                        },
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Last Name',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff898a7a),
                          ),
                        ),
                        keyboardType: TextInputType
                            .text, // Use TextInputType.text for first name
                        autocorrect: false,
                        textCapitalization:
                            TextCapitalization.words, // Capitalize each word
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your First Name'; // Provide a more meaningful error message
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _enteredLastName =
                              value!; // Save the entered first name
                        },
                      ),
                      SizedBox(height: 20 * fem),
                      Align(
                        alignment:
                            Alignment.topLeft, // Align to the top left (start)
                        child: SizedBox(
                          width: 500 * fem,
                          height: 20 * fem,
                          child: Text(
                            'Birthday ',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3333333333 * ffem / fem,
                              color: Color(0xff57cc99),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20 * fem),
                      Align(
                        alignment:
                            Alignment.topLeft, // Align to the top left (start)
                        child: SizedBox(
                          width: 500 * fem,
                          height: 60 * fem,
                          child: Text(
                            'We would never want to miss such a special day. Your birthday cannot be changed after submission.',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.3333333333 * ffem / fem,
                              color: Color(0xa5000000),
                            ),
                          ),
                        ),
                      ),
                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 20 * fem, 0 * fem, 0 * fem),
                        height: 50 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 39 * fem, 0 * fem),
                              child: DropdownButton<String>(
                                value: selectedDay,
                                onChanged: (newValue) {
                                  // Update the selected day when a new value is chosen
                                  setState(() {
                                    selectedDay = newValue;
                                  });
                                },
                                items: <DropdownMenuItem<String>>[
                                  DropdownMenuItem<String>(
                                    value:
                                        null, // Set to null to represent placeholder
                                    child: Text(
                                      'Day',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.4285714286 * ffem / fem,
                                        color: Color(0xa5000000),
                                      ),
                                    ),
                                  ),
                                  ...days.map<DropdownMenuItem<String>>(
                                      (String day) {
                                    return DropdownMenuItem<String>(
                                      value: day,
                                      child: Text(day),
                                    );
                                  }).toList(),
                                ],
                              ),
                            ),
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 50 * fem, 0 * fem),
                              child: DropdownButton<String>(
                                value: selectedMonth,
                                onChanged: (newValue) {
                                  // Update the selected month when a new value is chosen
                                  setState(() {
                                    selectedMonth = newValue;
                                  });
                                },
                                items: <DropdownMenuItem<String>>[
                                  DropdownMenuItem<String>(
                                    value:
                                        null, // Set to null to represent placeholder
                                    child: Text(
                                      'Month',
                                      textAlign: TextAlign.center,
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w500,
                                        height: 1.4285714286 * ffem / fem,
                                        color: Color(0xa5000000),
                                      ),
                                    ),
                                  ),
                                  ...months.map<DropdownMenuItem<String>>(
                                      (String month) {
                                    return DropdownMenuItem<String>(
                                      value: month,
                                      child: Text(month),
                                    );
                                  }).toList(),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 20 * fem),
                      Align(
                        alignment:
                            Alignment.topLeft, // Align to the top left (start)
                        child: SizedBox(
                          width: 500 * fem,
                          height: 20 * fem,
                          child: Text(
                            'Contact Address',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 15 * ffem,
                              fontWeight: FontWeight.w700,
                              height: 1.3333333333 * ffem / fem,
                              color: Color(0xff57cc99),
                            ),
                          ),
                        ),
                      ),

                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Address',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff898a7a),
                          ),
                        ),
                        keyboardType: TextInputType
                            .text, // Use TextInputType.text for first name
                        autocorrect: false,
                        textCapitalization:
                            TextCapitalization.words, // Capitalize each word
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your Last Name'; // Provide a more meaningful error message
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _enteredAddress =
                              value!; // Save the entered first name
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Province',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff898a7a),
                          ),
                        ),
                        keyboardType: TextInputType
                            .text, // Use TextInputType.text for first name
                        autocorrect: false,
                        textCapitalization:
                            TextCapitalization.words, // Capitalize each word
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your Province'; // Provide a more meaningful error message
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _enteredProvince =
                              value!; // Save the entered first name
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'City',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff898a7a),
                          ),
                        ),
                        keyboardType: TextInputType
                            .text, // Use TextInputType.text for first name
                        autocorrect: false,
                        textCapitalization:
                            TextCapitalization.words, // Capitalize each word
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your City'; // Provide a more meaningful error message
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _enteredCity = value!; // Save the entered first name
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          hintText: 'Barangay',
                          hintStyle: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 16 * ffem,
                            fontWeight: FontWeight.w500,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff898a7a),
                          ),
                        ),
                        keyboardType: TextInputType
                            .text, // Use TextInputType.text for first name
                        autocorrect: false,
                        textCapitalization:
                            TextCapitalization.words, // Capitalize each word
                        validator: (value) {
                          if (value == null || value.trim().isEmpty) {
                            return 'Please enter your Barangay'; // Provide a more meaningful error message
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _enteredBarangay =
                              value!; // Save the entered first name
                        },
                      ),

                      Container(
                        margin: EdgeInsets.fromLTRB(
                            0 * fem, 20 * fem, 0 * fem, 0 * fem),
                        height: 50 * fem,
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          children: [
                            Container(
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 0 * fem, 22 * fem, 0 * fem),
                              width: 51 * fem,
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xbf57cc99),
                                borderRadius: BorderRadius.circular(20 * fem),
                              ),
                              child: Center(
                                child: Text(
                                  '+63',
                                  style: TextStyle(
                                    fontFamily: 'Inter',
                                    fontSize: 14 * ffem,
                                    fontWeight: FontWeight.w600,
                                    height: 1.4285714286 * ffem / fem,
                                    color: Color(0xffffffff),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextFormField(
                                  decoration: InputDecoration(
                                    hintText: 'Mobile Number',
                                    hintStyle: TextStyle(
                                      fontFamily: 'Inter',
                                      fontSize: 16 * ffem,
                                      fontWeight: FontWeight.w500,
                                      height: 1.2125 * ffem / fem,
                                      color: Color(0xff898a7a),
                                    ),
                                  ),
                                  keyboardType: TextInputType
                                      .phone, // Use TextInputType.phone for phone number input
                                  autocorrect: false,
                                  textCapitalization: TextCapitalization.none,
                                  validator: (value) {
                                    // Remove any non-digit characters
                                    final cleanedValue =
                                        value?.replaceAll(RegExp(r'[^\d]'), '');

                                    if (cleanedValue == null ||
                                        cleanedValue.length != 10) {
                                      return 'Please enter a valid mobile number';
                                    }

                                    return null;
                                  },
                                  onSaved: (String? value) {
                                    if (value != null) {
                                      _enteredMobileNumber = value;
                                    }
                                  }),
                            ),
                          ],
                        ),
                      ),

                      SizedBox(height: 20 * fem),
                      Align(
                        alignment:
                            Alignment.topLeft, // Align to the top left (start)
                        child: SizedBox(
                          width: 178 * fem,
                          height: 20 * fem,
                          child: Text(
                            'Email preferences & terms',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14 * ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.4285714286 * ffem / fem,
                              color: Color(0xe5000000),
                            ),
                          ),
                        ),
                      ),
                      SizedBox(height: 20 * fem),
                      Container(
                        child: Center(
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.center,
                            children: [
                              Positioned(
                                left: 31 * fem,
                                top: 695 * fem,
                                child: Container(
                                  width: 328 * fem,
                                  height: 40 * fem,
                                  child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Checkbox(
                                        value:
                                            isChecked, // Bind the checkbox value to the 'isChecked' variable.
                                        onChanged: (bool? newValue) {
                                          if (newValue != null) {
                                            // Update the 'isChecked' variable when the checkbox changes.
                                            setState(() {
                                              isChecked = newValue;
                                              isAccepted = isChecked
                                                  ? "yes"
                                                  : "no"; // Update isAccepted based on isChecked
                                            });
                                          }
                                        },
                                      ),
                                      Container(
                                        constraints: BoxConstraints(
                                          maxWidth: 279 * fem,
                                        ),
                                        child: Text(
                                          'I do not wish to receive news, special offers and more from Suellas',
                                          style: SafeGoogleFont(
                                            'Inter',
                                            fontSize: 12 * ffem,
                                            fontWeight: FontWeight.w500,
                                            height: 1.6666666667 * ffem / fem,
                                            color: Color(0xff000000),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),

                              SizedBox(height: 20 * fem),
                              Align(
                                alignment: Alignment
                                    .topLeft, // Align to the top left (start)
                                child: SizedBox(
                                  width: 500 * fem,
                                  height: 50 * fem,
                                  child: Text(
                                    'By clicking this button, I agree to the \nterms and conditions.',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4285714286 * ffem / fem,
                                      color: Color(0xe5000000),
                                    ),
                                  ),
                                ),
                              ),
                              Align(
                                alignment: Alignment
                                    .topLeft, // Align to the top left (start)
                                child: SizedBox(
                                  width: 500 * fem,
                                  height: 50 * fem,
                                  child: Text(
                                    'Terms of Use',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 13 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.5384615385 * ffem / fem,
                                      color: Color(0xff57cc99),
                                    ),
                                  ),
                                ),
                              ),

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
                                    primary: Colors.transparent,
                                    elevation: 0,
                                    shape: RoundedRectangleBorder(
                                      borderRadius: BorderRadius.circular(70),
                                    ),
                                  ),
                                  child: Text(
                                    'Signup',
                                    style: TextStyle(
                                      fontSize: 16,
                                      fontWeight: FontWeight.w600,
                                      color: Color(0xffffffff),
                                    ),
                                  ),
                                ),
                              )

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
            ],
          ),
        ),
      ),
    );
  }
}
