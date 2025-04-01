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

import 'package:flutter/material.dart';

class EditProfileScreen extends StatefulWidget {
  @override
  _EditProfileScreenState createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
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
  TextEditingController birthdayController = TextEditingController();
  TextEditingController phoneController = TextEditingController();
  TextEditingController streetController = TextEditingController();
  TextEditingController barangayController = TextEditingController();
  TextEditingController cityController = TextEditingController();
 final _formKey = GlobalKey<FormState>();
  @override
  void initState() {
    super.initState();

    _getUserEmail().then((_) {
      _getUserData().then((data) {
        setState(() {
          _firstName = data['first_name'] ?? '';
          _lastName = data['last_name'] ?? '';
          _phoneNumber = data['mobile_number'] ?? '';
          _streetName = data['address'] ?? '';
          _barangayName = data['barangay'] ?? '';
          _cityName = data['city'] ?? '';
          _birthday = data['birthday'] ?? '';

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

  Future<void> _updateUserData() async {
    final headers = {
      'Content-Type': 'application/json',
      'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
    };
    final apiUrl = '/admin/auth/updateuserv2';

    final response = await http.post(
      Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
      body: {
        'email': _userEmail,
        'first_name': _firstName,
        'last_name': _lastName,
        'birthday': _birthday,
        'mobile_number': _phoneNumber,
        'address': _streetName,
        'barangay': _barangayName,
        'city': _cityName,
        // Include other updated fields as needed
      },
      headers: headers,
    );

    if (response.statusCode == 200) {
      // Server successfully processed the update, you can update local data if needed
    } else {
      // Handle errors if the update request fails
      print('Failed to update user data');
    }
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
    void _submitForm() {
    if (_formKey.currentState.validate()) {
      _updateUserData().then((_) {
        // Handle successful data update (e.g., show a success message or navigate back)
      });
    }
  }


  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: Text('Change Password'),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: 896 * fem,
            child: Container(
              padding: EdgeInsets.fromLTRB(
                  29 * fem, 39.77 * fem, 29 * fem, 27 * fem),
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
                            'assets/design/images/btn-back.png',
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
                              'assets/design/images/iconly-curved-outline-edit-square.png',
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
                                            child: TextFormField(
                                              controller: firstNameController,
                                              decoration: InputDecoration(
                                                hintText:
                                                    _firstName, // Set the initial value as hintText
                                              ),
                                              focusNode: FocusNode(),
                                              onTap: () {
                                                // Replace hintText with an empty string when the field is focused
                                                setState(() {
                                                  firstNameController.text =
                                                      _firstName;
                                                });
                                              },
                                              onFieldSubmitted: (value) {
                                                // Update _firstName when the field is submitted
                                                setState(() {
                                                  _firstName = value;
                                                });
                                              },
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
                                            child: TextFormField(
                                              controller: lastNameController,
                                              decoration: InputDecoration(
                                                hintText:
                                                    _lastName, // Set the initial value as hintText
                                              ),
                                              focusNode: FocusNode(),
                                              onTap: () {
                                                // Replace hintText with an empty string when the field is focused
                                                setState(() {
                                                  lastNameController.text =
                                                      _lastName;
                                                });
                                              },
                                              onFieldSubmitted: (value) {
                                                // Update _firstName when the field is submitted
                                                setState(() {
                                                  _lastName = value;
                                                });
                                              },
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
                                            child: TextFormField(
                                              controller: birthdayController,
                                              decoration: InputDecoration(
                                                hintText:
                                                    _birthday, // Set the initial value as hintText
                                              ),
                                              focusNode: FocusNode(),
                                              onTap: () {
                                                // Replace hintText with an empty string when the field is focused
                                                setState(() {
                                                  birthdayController.text =
                                                      _birthday;
                                                });
                                              },
                                              onFieldSubmitted: (value) {
                                                // Update _firstName when the field is submitted
                                                setState(() {
                                                  _birthday = value;
                                                });
                                              },
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
                                            child: TextFormField(
                                              controller: phoneController,
                                              decoration: InputDecoration(
                                                hintText:
                                                    _phoneNumber, // Set the initial value as hintText
                                              ),
                                              focusNode: FocusNode(),
                                              onTap: () {
                                                // Replace hintText with an empty string when the field is focused
                                                setState(() {
                                                  phoneController.text =
                                                      _phoneNumber;
                                                });
                                              },
                                              onFieldSubmitted: (value) {
                                                // Update _firstName when the field is submitted
                                                setState(() {
                                                  _phoneNumber = value;
                                                });
                                              },
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
                                            child: TextFormField(
                                              controller: streetController,
                                              decoration: InputDecoration(
                                                hintText:
                                                    _streetName, // Set the initial value as hintText
                                              ),
                                              focusNode: FocusNode(),
                                              onTap: () {
                                                // Replace hintText with an empty string when the field is focused
                                                setState(() {
                                                  streetController.text =
                                                      _streetName;
                                                });
                                              },
                                              onFieldSubmitted: (value) {
                                                // Update _firstName when the field is submitted
                                                setState(() {
                                                  _streetName = value;
                                                });
                                              },
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
                                          'Barangay Name',
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
                                            child: TextFormField(
                                              controller: barangayController,
                                              decoration: InputDecoration(
                                                hintText:
                                                    _barangayName, // Set the initial value as hintText
                                              ),
                                              focusNode: FocusNode(),
                                              onTap: () {
                                                // Replace hintText with an empty string when the field is focused
                                                setState(() {
                                                  barangayController.text =
                                                      _barangayName;
                                                });
                                              },
                                              onFieldSubmitted: (value) {
                                                // Update _firstName when the field is submitted
                                                setState(() {
                                                  _barangayName = value;
                                                });
                                              },
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
                                          'City Name',
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
                                            child: TextFormField(
                                              controller: cityController,
                                              decoration: InputDecoration(
                                                hintText:
                                                    _cityName, // Set the initial value as hintText
                                              ),
                                              focusNode: FocusNode(),
                                              onTap: () {
                                                // Replace hintText with an empty string when the field is focused
                                                setState(() {
                                                  cityController.text =
                                                      _cityName;
                                                });
                                              },
                                              onFieldSubmitted: (value) {
                                                // Update _firstName when the field is submitted
                                                setState(() {
                                                  _cityName = value;
                                                });
                                              },
                                            ),
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                ElevatedButton(
                                  onPressed: _submitForm,
                                  child: Text('Save Changes'),
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
    );
  }
}
