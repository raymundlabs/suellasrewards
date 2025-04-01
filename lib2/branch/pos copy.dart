import 'package:flutter/material.dart';
import 'package:flutter/gestures.dart';
import 'dart:ui';
import 'package:google_fonts/google_fonts.dart';
import 'package:suellas/branch/scan.dart';
import 'package:suellas/utils.dart';
import 'package:qr_flutter/qr_flutter.dart';
import 'package:suellas/branch/editprofile.dart';

import 'package:suellas/branch/profile.dart';
import 'package:suellas/branch/location.dart';
import 'package:suellas/branch/inboxread.dart';
import 'package:suellas/branch/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:suellas/branch/editprofile.dart';




class BranchPOSScreen extends StatefulWidget {
  const BranchPOSScreen({Key? key}) : super(key: key);

  @override
  _BranchPOSScreenState createState() => _BranchPOSScreenState();
}

class _BranchPOSScreenState extends State<BranchPOSScreen> {
  String _userEmail = '';
  List<Map<String, dynamic>> messages = [];
  List<Map<String, dynamic>> cartItems = [];

  @override
  void initState() {
    super.initState();
    _getUserEmail().then((_) {
      _getUserMessages().then((_) {});
    });
  }

  Future<void> _getUserEmail() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    setState(() {
      _userEmail = prefs.getString('userEmail') ?? '';
    });
  }

  void updateMessageList() {
    _getUserMessages().then((_) {});
  }

  void deleteMessage(int index) {
    if (index >= 0 && index < messages.length) {
      messages.removeAt(index);
      setState(() {});
    }
  }

  Future<void> _getUserMessages() async {
    final headers = {
      'Content-Type': 'application/json',
      'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
    };
    final apiUrl = '/admin/auth/getposservices';
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
        print('Fetched Messages: $userMessages');
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

  void addToCart(Map<String, dynamic> service) {
    setState(() {
      cartItems.add(service);
    });
  }

  Widget _buildBottomNavigationBar(double fem, double ffem, BuildContext context) {
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
                MaterialPageRoute(builder: (context) => BranchHomeScreen()),
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
                MaterialPageRoute(builder: (context) => BranchPOSScreen()),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/inbox-selected.png',
                width: 50,
                height: 50,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => ScanScreen()),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/iconly-regular-outline-scan-q2q.png',
                width: 50,
                height: 50,
              ),
            ),
          ),
          GestureDetector(
            onTap: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BranchLocationScreen()),
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
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => BranchProfileScreen()),
              );
            },
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 1.0),
              child: Image.asset(
                'assets/icons/images/profile.png',
                width: 50,
                height: 50,
              ),
            ),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    double baseWidth = 414;
    double fem = MediaQuery.of(context).size.width / baseWidth;
    double ffem = fem * 0.97;

    return Scaffold(
      appBar: AppBar(
        title: Text('Your App Title'),
        actions: [
          IconButton(
            icon: Icon(Icons.shopping_cart),
            onPressed: () {
              // Handle cart icon press or open a cart view
            },
          ),
        ],
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: 3000 * fem,
            child: Container(
              padding: EdgeInsets.fromLTRB(29 * fem, 50 * fem, 29 * fem, 27 * fem),
              width: double.infinity,
              height: double.infinity,
              decoration: BoxDecoration(
                color: Color.fromARGB(255, 255, 255, 255),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Messages(
                    fem: fem,
                    ffem: ffem,
                    messages: messages,
                    updateMessageList: updateMessageList,
                    deleteMessage: deleteMessage,
                    addToCart: addToCart,
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
}

class Messages extends StatefulWidget {
  final double fem;
  final double ffem;
  final List<Map<String, dynamic>> messages;
  final Function updateMessageList;
  final Function deleteMessage;
  final Function addToCart;

  Messages({
    required this.fem,
    required this.ffem,
    required this.messages,
    required this.updateMessageList,
    required this.deleteMessage,
    required this.addToCart,
  });

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  int selectedMessageIndex = -1;

  void onMessageSelected(int index) {
    setState(() {
      selectedMessageIndex = index;
    });
  }

  Future<void> markMessageAsRead(int index) async {
    if (index >= 0 && index < widget.messages.length) {
      final message = widget.messages[index];

      if (message['isRead'] != 'Read') {
        message['isRead'] = 'Read';
        final messageId = message['id'];

        final headers = {
          'Content-Type': 'application/json',
          'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
        };
        final apiUrl = '/admin/auth/updateMessages';
        final response = await http.post(
          Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
          body: {'id': messageId.toString(), 'isRead': 'Yes'},
        );

        if (response.statusCode == 200) {
          // Handle success if needed
        } else {
          // Handle API request error
        }
      }
    }
  }

  void showFullMessageDialog(String message) async {
    await showDialog(
      context: context,
      builder: (BuildContext context) {
        return WillPopScope(
          onWillPop: () async {
            widget.updateMessageList();
            return true;
          },
          child: AlertDialog(
            title: Text('Message'),
            content: Text(message),
            actions: <Widget>[
              TextButton(
                child: Text('Close'),
                onPressed: () {
                  Navigator.of(context).pop();
                },
              ),
            ],
          ),
        );
      },
    );

    widget.updateMessageList();
  }

  Future<void> deleteMessage(int index) async {
    if (index >= 0 && index < widget.messages.length) {
      final message = widget.messages[index];

      if (message['isRead'] != 'Read') {
        message['isRead'] = 'Read';
        final messageId = message['id'];

        final headers = {
          'Content-Type': 'application/json',
          'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
        };
        final apiUrl = '/admin/auth/deleteMessages';
        final response = await http.post(
          Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
          body: {'id': messageId.toString(), 'arhieved': 'Yes'},
        );

        if (response.statusCode == 200) {
          print('API Response: ${response.body}');
          widget.updateMessageList();
        } else {
          // Handle API request error
        }
      }
    }
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: List.generate(widget.messages.length, (index) {
        final service = widget.messages[index];

        return GestureDetector(
          onTap: () {
            onMessageSelected(index);
            widget.addToCart(service);
          },
          child: Container(
            width: 350 * widget.fem,
            height: 120 * widget.fem,
            color: Colors.transparent,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      margin: EdgeInsets.fromLTRB(
                          0 * widget.fem, 0 * widget.fem, 0 * widget.fem, 3 * widget.fem),
                      child: Text(
                        '${service['services']} - ${service['color']}',
                        style: TextStyle(
                          fontSize: 14 * widget.ffem,
                          fontWeight: FontWeight.w600,
                          color: Color(0xff000000),
                        ),
                      ),
                    ),
                    Container(
                      width: 310 * widget.fem,
                      child: Text(
                        'Price: \$${service['price']}',
                        style: TextStyle(
                          color: Colors.black.withOpacity(0.57),
                          fontSize: 12 * widget.ffem,
                          fontFamily: 'Inter',
                          fontWeight: FontWeight.w400,
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        );
      }),
    );
  }
}

