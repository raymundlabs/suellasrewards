import 'package:flutter/material.dart';
import 'package:flutter_barcode_scanner/flutter_barcode_scanner.dart';

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
import 'package:suellas/customer/inboxread.dart';
import 'package:suellas/customer/inbox.dart';
import 'package:suellas/customer/home.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

class ScanScreen extends StatefulWidget {
  const ScanScreen({Key? key}) : super(key: key);

  @override
  _ScanScreenState createState() => _ScanScreenState();
}

class _ScanScreenState extends State<ScanScreen> {
  String _userEmail = ''; // Default value is an empty string
  List<Map<String, dynamic>> messages = []; // List to store promotions
  final GlobalKey<ScaffoldState> scaffoldKey = GlobalKey<ScaffoldState>();
  bool isCurrentPage = true; // Set this value based on your logic

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

  void updateMessageList() {
    _getUserMessages().then((_) {
      // This will fetch and update the message list
    });
  }

  void deleteMessage(int index) {
    if (index >= 0 && index < messages.length) {
      messages.removeAt(index); // Remove the message at the specified index
      setState(() {}); // Trigger a rebuild of the widget
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
                          child: GestureDetector(
                            onTap: () {
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InboxScreen()),
                              );
                            },
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
                                        'New', // Change "New" to "Inbox"
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
                              Navigator.push(
                                context,
                                MaterialPageRoute(
                                    builder: (context) => InboxReadScreen()),
                              );
                            },
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
                                    width: double.infinity,
                                    height: 1,
                                              color:Color.fromRGBO(17, 0, 0, 0.20) ,
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Messages(
                    fem: fem,
                    ffem: ffem,
                    messages: messages,
                    updateMessageList: updateMessageList,
                    deleteMessage:
                        deleteMessage, // Pass the deleteMessage function
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

class Messages extends StatefulWidget {
  final double fem;
  final double ffem;
  final List<Map<String, dynamic>> messages;
  final Function updateMessageList;
  final Function deleteMessage; // Callback function

  Messages({
    required this.fem,
    required this.ffem,
    required this.messages,
    required this.updateMessageList,
    required this.deleteMessage,
  });

  @override
  _MessagesState createState() => _MessagesState();
}

class _MessagesState extends State<Messages> {
  int selectedMessageIndex =
      -1; // Initialize with -1 to indicate no message is selected

  void onMessageSelected(int index) {
    setState(() {
      selectedMessageIndex = index;
    });
  }

  Future<void> markMessageAsRead(int index) async {
    if (index >= 0 && index < widget.messages.length) {
      final message = widget.messages[index];

      if (message['isRead'] != 'Read') {
        message['isRead'] = 'Read'; // Update the status in the message data
        final messageId = message['id'];

        // Make a POST API request to update the message status
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
          // Message status updated successfully
          // You can handle the response as needed
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
            // Update the message list when the user tries to pop the dialog
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

    // Update the message list after the dialog is closed
    widget.updateMessageList();
  }

  Future<void> deleteMessage(int index) async {
    if (index >= 0 && index < widget.messages.length) {
      final message = widget.messages[index];

      if (message['isRead'] != 'Read') {
        message['isRead'] = 'Read'; // Update the status in the message data
        final messageId = message['id'];

        // Make a POST API request to update the message status
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
          // Message status updated successfully
          // You can handle the response as needed
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
        final message = widget.messages[index];
        final isMessageSelected = selectedMessageIndex == index;

        return Column(
          children: [
            GestureDetector(
              onTap: () {
                onMessageSelected(index);
              },
              child: Container(
                width: 350 * widget.fem,
                height: 82 * widget.fem,
                color:
                    isMessageSelected ? Color(0xfff6fff7) : Colors.transparent,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.fromLTRB(0 * widget.fem,
                              0 * widget.fem, 0 * widget.fem, 3 * widget.fem),
                          child: Text(
                            message['title'] ?? '',
                            style: SafeGoogleFont(
                              'Inter',
                              fontSize: 14 * widget.ffem,
                              fontWeight: FontWeight.w600,
                              height: 1.4285714286 * widget.ffem / widget.fem,
                              color: Color(0xff000000),
                            ),
                          ),
                        ),
                        Container(
                          width: 310 * widget.fem,
                          child: Text(
                            (message['message'] ?? '').length > 60
                                ? '${(message['message'] ?? '').substring(0, 60)}...'
                                : message['message'],
                            maxLines: 3,
                            overflow: TextOverflow.ellipsis,
                            style: TextStyle(
                              color:
                                  Colors.black.withOpacity(0.5699999928474426),
                              fontSize: 12 * widget.ffem,
                              fontFamily: 'Inter',
                              fontWeight: FontWeight.w400,
                              height: 1.67 * widget.ffem / widget.fem,
                            ),
                          ),
                        ),
                        if ((message['message'] ?? '').length >
                            1) // Check if message is longer
                          Container(
                            margin: EdgeInsets.fromLTRB(1 * widget.fem,
                                0 * widget.fem, 0 * widget.fem, 0 * widget.fem),
                            child: GestureDetector(
                              onTap: () {
                                // Call markMessageAsRead with the current message index
                                markMessageAsRead(index);
                                showFullMessageDialog(message['message']);
                              },
                              child: Text(
                                'Read more',
                                style: SafeGoogleFont(
                                  'Inter',
                                  fontSize: 12 * widget.ffem,
                                  fontWeight: FontWeight.w600,
                                  height:
                                      1.6666666667 * widget.ffem / widget.fem,
                                  color: Color(0xff57cc99),
                                ),
                              ),
                            ),
                          ),
                      ],
                    ),
                    if (isMessageSelected)
                      GestureDetector(
                        onTap: () {
                          deleteMessage(
                              index); // Wrap deleteMessage in an anonymous function
                        },
                        child: Container(
                          width: 40 * widget.fem,
                          decoration: BoxDecoration(
                            color: Color(0xffed6a5a),
                          ),
                          child: Align(
                            alignment: Alignment.center,
                            child: SizedBox(
                              width: 20 * widget.fem,
                              height: 20 * widget.fem,
                              child: Image.asset(
                                'assets/design/images/iconly-regular-outline-delete.png',
                                width: 20 * widget.fem,
                                height: 20 * widget.fem,
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
        );
      }),
    );
  }
}
