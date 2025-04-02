import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:suellas/customer/qr_screen.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/location.dart';
import 'package:suellas/customer/inbox.dart';
import 'package:suellas/customer/inboxread.dart';
import 'package:suellas/customer/security.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:suellas/design/start.dart';
import 'package:suellas/customer/services.dart';
import 'package:suellas/customer/contact.dart';
import 'package:suellas/customer/privacy.dart';
import 'package:suellas/customer/terms.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

class CustomerHomeScreen extends StatefulWidget {
  const CustomerHomeScreen({Key? key}) : super(key: key);

  @override
  _CustomerHomeScreenState createState() => _CustomerHomeScreenState();
}

class _CustomerHomeScreenState extends State<CustomerHomeScreen> {
  String? rewardPoints; // Change this to nullable
  String? _firstName;
  String? _lastName;
  int _notificationCount = 0;
  List<Map<String, dynamic>> messages = []; // List to store promotions
  String _userEmail = ''; // Default value is an empty string
  List<Map<String, dynamic>> promotions = []; // List to store promotions
  GoogleSignIn _googleSignIn = GoogleSignIn();
  bool isDrawerOpen = false;
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();

  // Function to toggle the drawer
  void toggleDrawer() {
    setState(() {
      isDrawerOpen = !isDrawerOpen;
    });
  }

  @override
  void initState() {
    super.initState();
    // Call the API request method to get reward points and set the state
    _getUserEmail().then((_) {
      _getUserData().then((data) {
        setState(() {
          _firstName = data['first_name'] ?? '';
          _lastName = data['last_name'] ?? '';
          rewardPoints = data['reward_points'] ?? '';
        });
      });

      _getPromotions().then((_) {
        _getPromotions();
      });
      _getUserMessages();
    });
  }

  Future<void> _logOut() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();

    // Clear user data from SharedPreferences
    await prefs.remove('userEmail');
    await prefs.remove('authToken');
    await _googleSignIn.signOut();
    // Navigate to the login screen
    Navigator.pushReplacement(
      context,
      MaterialPageRoute(builder: (context) => StartScreen()),
    );
  }

  Future<void> _getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _userEmail = prefs.getString('userEmail') ?? '';
    });
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
      return userData;
    } else {
      throw Exception('Failed to load user data');
    }
  }

  Future<void> _getPromotions() async {
    final headers = {
      'Content-Type': 'application/json',
      'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
    };
    final apiUrl = '/admin/auth/getPromotions';
    final email = _userEmail;
    final response = await http.post(
      Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
      body: {
        'email': email,
      },
    );

    if (response.statusCode == 200) {
      final dynamic responseBody = json.decode(response.body);

      if (responseBody is List) {
        final List<Map<String, dynamic>> userPromotions =
            responseBody.cast<Map<String, dynamic>>();

        // Debugging: Print the fetched promotions to the console
        // print('Fetched Promotions: $userPromotions');

        // Update the state with the fetched promotions data
        setState(() {
          promotions = userPromotions;
        });
      } else {
        throw Exception('Invalid response format');
      }
    } else {
      throw Exception('Failed to load user data');
    }
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
      body: {'email': email, 'isRead': 'No'},
    );

    if (response.statusCode == 200) {
      final dynamic responseBody = json.decode(response.body);

      if (responseBody is List) {
        final List<Map<String, dynamic>> userMessages =
            responseBody.cast<Map<String, dynamic>>();

        // Debugging: Print the fetched promotions to the console
        print('Fetched Messages: $userMessages');
        setState(() {
          _notificationCount = userMessages.length;
        });

    FlutterAppBadger.updateBadgeCount(_notificationCount);

      // Update the badge count using the flutter_local_notifications plugin (iOS)
      // final FlutterLocalNotificationsPlugin flutterLocalNotificationsPlugin =
      //     FlutterLocalNotificationsPlugin();
      // await flutterLocalNotificationsPlugin
      //     .resolvePlatformSpecificImplementation<IOSFlutterLocalNotificationsPlugin>()
      //     ?.setBadge(_notificationCount);
      //   // Update the state with the fetched promotions data
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

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;
    final String qrData = "ABC123";

    return Scaffold(
      key: scaffoldKey,
      // appBar: CustomAppBar(fem: fem, ffem: ffem),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Column(
            children: [
              Container(
                padding: EdgeInsets.fromLTRB(
                    29 * fem, 39.77 * fem, 29 * fem, 29 * fem),
                width: double.infinity,
                height: 410 * fem,
                decoration: BoxDecoration(
                  color: Color(0xff2f6e53),
                ),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      alignment: Alignment.center,
                      child: Row(
                        crossAxisAlignment: CrossAxisAlignment.center,
                        children: [
                          GestureDetector(
                            onTap: () {
                              if (_notificationCount > 0) {
                                Navigator.pop(context);
                              } else {
                                // Do nothing or show a snackbar indicating that there are no new messages
                                ScaffoldMessenger.of(context).showSnackBar(
                                  SnackBar(
                                    content: Text('No New Notification'),
                                  ),
                                );
                              }
                            },
                            child: Stack(
                              children: [
                                Container(
                                  // btnbackfGd (202:999)
                                  width: 50 * fem,
                                  height: 50 * fem,
                                  child: Image.asset(
                                    'assets/icons/images/notification-white.png',
                                    width: 50 * fem,
                                    height: 50 * fem,
                                  ),
                                ),
                                if (_notificationCount > 0)
                                  Positioned(
                                    right: 5,
                                    top: 5,
                                    child: Container(
                                      padding: EdgeInsets.all(4),
                                      decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Colors.red,
                                      ),
                                      child: Text(
                                        '$_notificationCount',
                                        style: TextStyle(
                                          color: Colors.white,
                                          fontSize: 12,
                                        ),
                                      ),
                                    ),
                                  ),
                              ],
                            ),
                          ),

                          Expanded(
                            child: Center(
                              child: Container(
                                // suellaslogowhite1Z77 (4:16607)
                                width: 127 * fem,
                                height: 50 * fem,
                                child: Image.asset(
                                  'assets/design/images/suellas-logo-white-1.png',
                                  fit: BoxFit.cover,
                                ),
                              ),
                            ),
                          ),
                          IconButton(
                            icon: Image.asset(
                              'assets/icons/images/filter-white.png',
                              width: 50 * fem,
                              height: 50 * fem,
                            ),
                            onPressed: () {
                              scaffoldKey.currentState?.openEndDrawer();
                            },
                          ),
                          // Container(
                          //   // iconlyboldfilterG1X (202:997)
                          //   width: 20 * fem,
                          //   height: 17.78 * fem,
                          //   child: Image.asset(
                          //     'assets/design/images/iconly-bold-filter.png',
                          //     width: 20 * fem,
                          //     height: 17.78 * fem,
                          //   ),
                          // ),
                        ],
                      ),
                    ),
                    // Other child widgets in the green box
                    Container(
                      // rewardsZmK (202:1016)
                      margin: EdgeInsets.fromLTRB(
                          17.14 * fem, 30 * fem, 0 * fem, 17.23 * fem),
                      child: Text(
                        'Rewards',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 16 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 1.25 * ffem / fem,
                          letterSpacing: 1 * fem,
                          color: Color(0xffffffff),
                        ),
                      ),
                    ),
                    RewardsPointsWidget(
                        fem: fem, ffem: ffem, rewardPoints: rewardPoints),
                  ],
                ),
              ),
              Container(
                padding: EdgeInsets.fromLTRB(20 * fem, 20 * fem, 20 * fem,
                    0), // Adjust the top padding as needed
                width: double.infinity,
                height: 500 * fem, // Use the same height as the green container
                color: Color.fromARGB(
                  255,
                  255,
                  255,
                  255,
                ), // Set the background color to blue
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Align(
                      child: SizedBox(
                        width: 79 * fem,
                        height: 17 * fem,
                        child: Text(
                          'Promotions',
                          style: TextStyle(
                            fontFamily: 'Inter',
                            fontSize: 14 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 1.2125 * ffem / fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                        height: 10 *
                            fem), // Add space between the text and the promotions
                    Group48095458(fem: fem, ffem: ffem, promotions: promotions),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
      endDrawer: FractionallySizedBox(
        widthFactor: 0.6, // Set the width to 60% of the screen's width
        child: Drawer(
          child: ListView(
            padding: EdgeInsets.only(top: 50.0),
            children: <Widget>[
              // Your right-side drawer items
              ListTile(
                leading: Icon(Icons.settings), // Customize with your icon
                title: Text('$_firstName $_lastName'),
                onTap: () {
                  // Handle settings action
                },
              ),

              ListTile(
                title: Text('Member Profile'), // Customize with your text
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ProfileScreen()),
                  );
                },
              ),
              ListTile(
                title: Text('Account Security'), // Customize with your text
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => ChangePasswordScreen()),
                  );
                }, // <-- Added closing brace
              ),

              ListTile(
                title: Text('Services'), // Customize with your text
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => ServicesScreen()),
                  );
                  // Handle settServicesScreenings action
                },
              ),
              // ListTile(
              //   title: Text('Terms & Conditions'), // Customize with your text
              //   onTap: () {
              //     // Handle settings action
              //   },
              // ),
              ListTile(
                title: Text('Privacy Policy'), // Customize with your text
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => PrivacyScreen()),
                  );
                },
              ),
              ListTile(
                title: Text('Contact Us'), // Customize with your text
                onTap: () {
                  Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => LocationScreen()),
                  );
                },
              ),
              ListTile(
                title: Text('Log Out'), // Customize with your text
                onTap: () {
                  _logOut();
                },
              ),
              // Add more right-side drawer items as needed
            ],
          ),
        ),
      ),

      bottomNavigationBar: _buildBottomNavigationBar(fem, ffem, context),
    );
  }

  Widget _rewardsPoints(double fem, double ffem, BuildContext context) {
    // Insert your rewards_point_class widget code here
    return Container(
      // autogroupxsur4CH (Tkpx6gief7yGGT4nbuxsuR)
      margin: EdgeInsets.fromLTRB(53 * fem, 0 * fem, 34.86 * fem, 0 * fem),
      width: double.infinity,
      height: 160.42 * fem,
      child: Stack(
        children: [
          Container(
            // iconlyboldfilterG1X (202:997)

            width: 20 * fem,
            height: 17.78 * fem,
            child: Image.asset(
              'assets/design/images/iconly-bold-filter.png',
              width: 20 * fem,
              height: 17.78 * fem,
            ),
          ),
        ],
      ),
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
                'icons/images/rewards-selected.png',
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
                        InboxScreen()), // Navigate to inbox screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'icons/images/inbox.png',
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
                'icons/images/qr.png',
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
                        LocationScreen()), // Navigate to location screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'icons/images/location.png',
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
                        ProfileScreen()), // Navigate to profile screen
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'icons/images/profile.png',
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

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final double fem;
  final double ffem;

  const CustomAppBar({
    required this.fem,
    required this.ffem,
  });

  @override
  Size get preferredSize => Size.fromHeight(100 * fem);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      titleSpacing: 0,
      title: Container(
        margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 1.86 * fem, 42 * fem),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 115 * fem, 0 * fem),
              width: 30 * fem,
              height: 30 * fem,
              child: Image.asset(
                'assets/design/images/btn-back.png',
                width: 30 * fem,
                height: 30 * fem,
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 4 * fem, 112 * fem, 0 * fem),
              child: Text(
                'Scan QR',
                style: TextStyle(
                  fontSize: 16 * ffem,
                  fontWeight: FontWeight.w600,
                  height: 1.2125 * ffem / fem,
                  color: Color(0xff000000),
                ),
              ),
            ),
            Container(
              margin: EdgeInsets.fromLTRB(0 * fem, 0 * fem, 0 * fem, 4 * fem),
              width: 20 * fem,
              height: 20 * fem,
              child: Image.asset(
                'assets/design/images/iconly-curved-outline-edit-square.png',
                width: 20 * fem,
                height: 20 * fem,
              ),
            ),
          ],
        ),
      ),
    );
  }
}

class RewardsPointsWidget extends StatelessWidget {
  final double fem;
  final double ffem;
  final String? rewardPoints;

  const RewardsPointsWidget({
    required this.fem,
    required this.ffem,
    required this.rewardPoints,
  });

  @override
  Widget build(BuildContext context) {
    if (rewardPoints == null) {
      // Display a loading indicator or placeholder when rewardPoints is not available yet.
      return CircularProgressIndicator(); // You can use any other widget as a placeholder.
    } else {
      int remainPoints = 0;

      int? rewardPointsValue = int.tryParse(rewardPoints!.split('.')[0]);

      if (rewardPointsValue != null) {
        remainPoints = (150 - rewardPointsValue).round();
      }
      return Container(
        margin: EdgeInsets.fromLTRB(53 * fem, 0 * fem, 34.86 * fem, 0 * fem),
        width: double.infinity,
        height: 160.42 * fem,
        child: Stack(
          children: [
            Positioned(
              // rectangle39374m6h (202:980)
              left: 0 * fem,
              top: 4.7749023438 * fem,
              child: Align(
                child: SizedBox(
                  width: 250 * fem,
                  height: 152 * fem,
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10 * fem),
                      color: Color(0xffffffff),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // sicon1rP3 (4:16617)
              left: 142.6625976562 * fem,
              top: 0 * fem,
              child: Align(
                child: SizedBox(
                  width: 107.31 * fem,
                  height: 160.42 * fem,
                  child: Image.asset(
                    'assets/design/images/s-icon-1.png',
                    width: 107.31 * fem,
                    height: 160.42 * fem,
                  ),
                ),
              ),
            ),
            Positioned(
              // suellasrewardMah (202:981)
              left: 23 * fem,
              top: 13.7749023438 * fem,
              child: Align(
                child: SizedBox(
                  width: 118 * fem,
                  height: 20 * fem,
                  child: Text(
                    'SUELLAS REWARD',
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 11 * ffem,
                      fontWeight: FontWeight.w700,
                      height: 1.8181818182 * ffem / fem,
                      letterSpacing: 1.25 * fem,
                      color: Color(0xff00613a),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group480954472B3 (202:984)
              left: 22 * fem,
              top: 92.7749023438 * fem,
              child: Container(
                width: 133 * fem,
                height: 18.34 * fem,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10 * fem),
                ),
                child: Stack(
                  children: [
                    Positioned(
                      // rectangle39372ipZ (202:985)
                      left: 3 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 130 * fem,
                          height: 18 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              border: Border.all(color: Color(0x0a000000)),
                              color: Color(0xc9d8d8d8),
                            ),
                          ),
                        ),
                      ),
                    ),
                    Positioned(
                      // rectangle39373cQ9 (202:986)
                      left: 0 * fem,
                      top: 0 * fem,
                      child: Align(
                        child: SizedBox(
                          width: 73.82 * fem,
                          height: 18.34 * fem,
                          child: Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10 * fem),
                              color: Color(0xff57cc99),
                            ),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // starstonextrewards7bo (202:987)
              left: 25 * fem,
              top: 120.7749023438 * fem,
              child: Align(
                child: SizedBox(
                  width: 150 * fem,
                  height: 20 * fem,
                  child: Text(
                    '$remainPoints Stars to Next Rewards',
                    textAlign: TextAlign.center,
                    style: SafeGoogleFont(
                      'Inter',
                      fontSize: 9 * ffem,
                      fontWeight: FontWeight.w600,
                      height: 2.2222222222 * ffem / fem,
                      color: Color(0xff00613a),
                    ),
                  ),
                ),
              ),
            ),
            Positioned(
              // group48095456bWy (4:16635)
              left: 26.5 * fem,
              top: 51.7749023438 * fem,
              child: Container(
                width: 150 * fem,
                height: 21 * fem,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 0 * fem, 0 * fem, 1 * fem),
                      child: FittedBox(
                        fit: BoxFit.scaleDown,
                        child: Text(
                          '$rewardPointsValue ',
                          textAlign: TextAlign.center,
                          style: SafeGoogleFont(
                            'Inter',
                            fontSize: 11 * ffem,
                            fontWeight: FontWeight.w700,
                            height: 0.7692307692 * ffem / fem,
                            letterSpacing: 1 * fem,
                            color: Color(0xff000000),
                          ),
                        ),
                      ),
                    ),
                    Container(
                      // Bzy (202:990)
                      margin: EdgeInsets.fromLTRB(
                          0 * fem, 1 * fem, 0 * fem, 0 * fem),
                      child: Text(
                        '/150',
                        textAlign: TextAlign.center,
                        style: SafeGoogleFont(
                          'Inter',
                          fontSize: 21 * ffem,
                          fontWeight: FontWeight.w700,
                          height: 0.9523809524 * ffem / fem,
                          letterSpacing: 1 * fem,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              // star3JJu (202:991)
              left: 175 * fem,
              top: 39.7749023438 * fem,
              child: Align(
                child: SizedBox(
                  width: 36 * fem,
                  height: 36 * fem,
                  child: Image.asset(
                    'assets/design/images/star-3.png',
                    width: 36 * fem,
                    height: 36 * fem,
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  }
}

class Group48095458 extends StatelessWidget {
  final double fem;
  final double ffem;
  final List<Map<String, dynamic>> promotions; // Add the promotions parameter

  const Group48095458({
    required this.fem,
    required this.ffem,
    required this.promotions,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: promotions.map((promotion) {
        return Container(
          width: 320 * fem,
          height: 82 * fem,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                margin: EdgeInsets.fromLTRB(
                    5 * fem, 5.67 * fem, 10.99 * fem, 0 * fem),
                width: 42.01 * fem,
                height: 50.34 * fem,
                child: Image.asset(
                  'assets/design/images/auto-group-fz6h.png',
                  width: 30.01 * fem,
                  height: 30.34 * fem,
                  fit: BoxFit.contain,
                ),
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(
                    width: 261 * fem,
                    child: Text(
                      promotion['title'] ??
                          '', // Use the title from the promotion
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.99),
                        fontSize: 14 * ffem,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w600,
                        height: 1.67 * ffem / fem,
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 261 * fem,
                    child: Text(
                      promotion['description'] ??
                          '', // Use the description from the promotion
                      style: TextStyle(
                        color: Colors.black.withOpacity(0.5699999928474426),
                        fontSize: 12 * ffem,
                        fontFamily: 'Inter',
                        fontWeight: FontWeight.w400,
                        height: 1.67 * ffem / fem,
                      ),
                    ),
                  ),
                  SizedBox(height: 4 * fem), // Adjust the spacing
                  Text(
                    'Valid: ${promotion['startDate']} - ${promotion['endDate']}', // Use the promotion dates
                    style: TextStyle(
                      color: Colors.black,
                      fontSize: 10 * ffem,
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w600,
                      height: 2 * ffem / fem,
                    ),
                  ),
                ],
              ),
            ],
          ),
        );
      }).toList(),
    );
  }
}
