import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/location.dart';
import 'package:suellas/customer/inbox.dart';
import 'package:suellas/customer/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';


class InboxScreen extends StatefulWidget {
  const InboxScreen({Key? key}) : super(key: key);

  @override
  _InboxScreenState createState() => _InboxScreenState();
}

class _InboxScreenState extends State<InboxScreen> {
  String _userEmail = ''; // Default value is an empty string
  List<Map<String, dynamic>> messages = []; // List to store promotions
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();


  @override
  void initState() {
    super.initState();
    // Call the API request method to get reward points and set the state
      _getUserEmail().then((_) {

      _getUserMessages().then((_) {
      // Once promotions are fetched, the widget tree will be rebuilt
    });
    });  
  
  }


  Future<void> _getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _userEmail = prefs.getString('userEmail') ?? '';
    });
  }



Future<void> _getUserMessages() async {
  final headers = {
    'Content-Type': 'application/json',
    'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
  };
  final apiUrl = '/admin/auth/getMessages';
  final email = _userEmail;
  final response = await http.post(
    Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
    body: {
      'email': email,
      'isRead': 'No'
    },
  );

  if (response.statusCode == 200) {
    final dynamic responseBody = json.decode(response.body);

    if (responseBody is List) {
      final List<Map<String, dynamic>> userMessages = responseBody.cast<Map<String, dynamic>>();
    
      // Debugging: Print the fetched promotions to the console
      print('Fetched Promotions: $userMessages');
    
      // Update the state with the fetched promotions data
      setState(() {
        messages = userMessages;
      });
    } else {
      throw Exception('Invalid response format');
    }
  } else {
    throw Exception('Failed to load user data');
  }
}

  Widget _buildMessageList() {
    if (messages.isEmpty) {
      return Center(
        child: Text("No messages available"),
      );
    }

    return ListView.builder(
      itemCount: messages.length,
      itemBuilder: (context, index) {
        final message = messages[index];
        return Container(
          // Your message item widget here
          child: Column(
            children: [
              Text(
                message["title"],
                style: TextStyle(fontWeight: FontWeight.bold),
              ),
              Text(
                message["message"],
              ),
              // Add more UI elements to display other message details
            ],
          ),
        );
      },
    );
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
          child: Container(
            // scanqrcustomer5Ym (4:30439)
            width: double.infinity,
            height: 896 * fem,
            child: Container(
              // rewardsRcd (4:30440)
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
                          // btnbackfGd (202:999)
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
                              // scanqrfxD (4:30479)
                              margin: EdgeInsets.fromLTRB(
                                  0 * fem, 4 * fem, 0 * fem, 0 * fem),
                              child: Text(
                                'Inbox',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 18 * ffem,
                                  fontWeight: FontWeight.w600,
                                  height: 1.2125 * ffem / fem,
                                  color: Color(0xff000000),
                                ),
                              ),
                            ),
                          ),
                        ),
                        Container(
                          // iconlyboldfilterG1X (202:997)
                          width: 30 * fem,
                          height: 30 * fem,
                          child: Image.asset(
                            'assets/design/images/iconly-curved-outline-edit-square.png',
                            width: 30 * fem,
                            height: 30 * fem,
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
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  child: SizedBox(
                                    width: 40 * fem,
                                    height: 20 * fem,
                                    child: Text(
                                      'Read',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        letterSpacing: 0.5 * fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double
                                      .infinity, // Cover the entire width of the column
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ],
                            ),
                          ),
                        ),
                        Expanded(
                          child: Container(
                            margin: EdgeInsets.fromLTRB(
                                10.14 * fem, 0 * fem, 0 * fem, 16 * fem),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Align(
                                  child: SizedBox(
                                    width: 40 * fem,
                                    height: 20 * fem,
                                    child: Text(
                                      'New',
                                      style: SafeGoogleFont(
                                        'Inter',
                                        fontSize: 14 * ffem,
                                        fontWeight: FontWeight.w600,
                                        height: 1.4285714286 * ffem / fem,
                                        letterSpacing: 0.5 * fem,
                                        color: Color(0xff000000),
                                      ),
                                    ),
                                  ),
                                ),
                                Container(
                                  width: double
                                      .infinity, // Cover the entire width of the column
                                  height: 1,
                                  color: Color(0xff000000),
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Container(
                    // group4809545967K (4:30271)
                    padding: EdgeInsets.fromLTRB(
                        35 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    height: 100 * fem,
                    decoration: BoxDecoration(
                      color: Color(0xfff6fff7),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouprk4faYH (Tkq3BYFMDZqpdwMke5Rk4f)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 19 * fem, 15 * fem, 18 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // readyforpickuphcu (4:30272)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  child: Text(
                                    'Ready for Pick-up',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4285714286 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  // yourshoesisnowreadyforpickupat (4:30273)
                                  'Your shoes is now ready for pick-up at SM Baguio.',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6666666667 * ffem / fem,
                                    color: Color(0x91000000),
                                  ),
                                ),
                                Container(
                                  // readmoreuys (4:30274)
                                  margin: EdgeInsets.fromLTRB(
                                      1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'Read more',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.6666666667 * ffem / fem,
                                      color: Color(0xff57cc99),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  8 * fem, 42 * fem, 8 * fem, 38 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color(0xffed6a5a),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 50 * fem,
                                  height: 20 * fem,
                                  child: Image.asset(
                                    'assets/design/images/iconly-regular-outline-delete.png',
                                    width: 30 * fem,
                                    height: 30 * fem,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                  Container(
                    // group4809545967K (4:30271)
                    padding: EdgeInsets.fromLTRB(
                        35 * fem, 0 * fem, 0 * fem, 0 * fem),
                    width: double.infinity,
                    height: 100 * fem,
                    decoration: BoxDecoration(
                      color: Color.fromARGB(255, 255, 255, 255),
                    ),
                    child: Container(
                      width: double.infinity,
                      height: double.infinity,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          Container(
                            // autogrouprk4faYH (Tkq3BYFMDZqpdwMke5Rk4f)
                            margin: EdgeInsets.fromLTRB(
                                0 * fem, 19 * fem, 15 * fem, 18 * fem),
                            height: double.infinity,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Container(
                                  // readyforpickuphcu (4:30272)
                                  margin: EdgeInsets.fromLTRB(
                                      0 * fem, 0 * fem, 0 * fem, 3 * fem),
                                  child: Text(
                                    ,
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 14 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.4285714286 * ffem / fem,
                                      color: Color(0xff000000),
                                    ),
                                  ),
                                ),
                                Text(
                                  // yourshoesisnowreadyforpickupat (4:30273)
                                  'Your shoes is now ready for pick-up at SM Baguio.',
                                  style: SafeGoogleFont(
                                    'Inter',
                                    fontSize: 12 * ffem,
                                    fontWeight: FontWeight.w400,
                                    height: 1.6666666667 * ffem / fem,
                                    color: Color(0x91000000),
                                  ),
                                ),
                                Container(
                                  // readmoreuys (4:30274)
                                  margin: EdgeInsets.fromLTRB(
                                      1 * fem, 0 * fem, 0 * fem, 0 * fem),
                                  child: Text(
                                    'Read more',
                                    style: SafeGoogleFont(
                                      'Inter',
                                      fontSize: 12 * ffem,
                                      fontWeight: FontWeight.w600,
                                      height: 1.6666666667 * ffem / fem,
                                      color: Color(0xff57cc99),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Expanded(
                            child: Container(
                              padding: EdgeInsets.fromLTRB(
                                  8 * fem, 42 * fem, 8 * fem, 38 * fem),
                              height: double.infinity,
                              decoration: BoxDecoration(
                                color: Color.fromARGB(255, 255, 255, 255),
                              ),
                              child: Align(
                                alignment: Alignment.center,
                                child: SizedBox(
                                  width: 50 * fem,
                                  height: 20 * fem,
                                  child: Image.asset(
                                    'assets/design/images/iconly-regular-outline-delete.png',
                                    width: 30 * fem,
                                    height: 30 * fem,
                                  ),
                                ),
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
                    builder: (context) =>
                        InboxScreen()), // Navigate to location screen
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
              Navigator.push(
                context,
                MaterialPageRoute(
                    builder: (context) => QRScreen()), // Navigate to QR screen
              );
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
                    builder: (context) =>
                        LocationScreen()), // Navigate to QR screen
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
              // Implement the behavior to reset or return to the current screen
              // For example, you can scroll to the top of the current screen
              // or refresh the content.
              // _scrollToTopOrRefresh(); // Call a method to scroll to the top or refresh the content
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
