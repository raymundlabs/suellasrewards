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
  List<Map<String, dynamic>> services = [];
  List<Map<String, dynamic>> cartItems = [];
  double _totalAmount = 0.0; // Add this variable to store the total amount

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
    updateTotalAmount();
    for (var item in cartItems) {
      print(
          '  ID: ${item['id']}, Service: ${item['services']}, Color: ${item['color']}, Price: ${item['price']}');
      // Add other fields as needed
    }
  }

  void updateTotalAmount() {
    double totalAmount = 0.0;
    for (var item in cartItems) {
      totalAmount += double.parse(item['price'].toString());
      // Add other fields as needed
    }

    setState(() {
      // Update the total amount in the state
      _totalAmount = totalAmount;
    });
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
            icon: Stack(
              children: [
                Icon(Icons.shopping_cart),
                if (cartItems.length > 0) // Use cartItems.length directly
                  Positioned(
                    right: 0,
                    child: Container(
                      padding: EdgeInsets.all(2),
                      decoration: BoxDecoration(
                        color: Colors.red,
                        borderRadius: BorderRadius.circular(8),
                      ),
                      constraints: BoxConstraints(
                        minWidth: 16,
                        minHeight: 16,
                      ),
                      child: Text(
                        cartItems.length.toString(),
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 10,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ),
                  ),
              ],
            ),
            onPressed: () {
              // Handle cart icon press or open a cart view
            },
          ),
        ],
        bottom: PreferredSize(
          preferredSize: Size.fromHeight(60), // Adjust the height as needed
          child: Container(
            decoration: BoxDecoration(
              color: Colors.green, // Green background color
              borderRadius:
                  BorderRadius.circular(10), // Adjust border radius as needed
            ),
            margin: EdgeInsets.all(10), // Margin for the box
            padding: EdgeInsets.symmetric(
                horizontal: 20, vertical: 10), // Padding effect
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(
                  'Total Amount: \PHP $_totalAmount',
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.white, // Text color
                  ),
                ),
                Icon(
                  Icons.payment,
                  color: Colors.white, // Icon color
                  size: 24, // Icon size
                ),
              ],
            ),
          ),
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          width: double.infinity,
          child: Container(
            width: double.infinity,
            height: 3000 * fem,
            child: Container(
              padding:
                  EdgeInsets.fromLTRB(29 * fem, 50 * fem, 29 * fem, 100 * fem),
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
  final Function addToCart;

  Messages({
    required this.fem,
    required this.ffem,
    required this.messages,
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

  @override
  Widget build(BuildContext context) {
    return Container(
      height:
          MediaQuery.of(context).size.height - 200, // Set a height constraint

      child: GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 3, // Set the number of columns in the grid
          crossAxisSpacing: 8.0, // Set the spacing between columns (reduced)
          mainAxisSpacing: 8.0, // Set the spacing between rows (reduced)
        ),
        itemCount: widget.messages.length,
        itemBuilder: (context, index) {
          final service = widget.messages[index];
          bool isSelected = index == selectedMessageIndex;
          Color originalColor = Colors.grey[200] ??
              Colors.grey; // Provide a default color if null

          Color selectedColor = Colors.blue;

          return GestureDetector(
            onTap: () {
              onMessageSelected(index);
              widget.addToCart(service);
              print('Added item with id: ${service['id']}');
            },
            child: AnimatedContainer(
              duration: Duration(milliseconds: 300),
              decoration: BoxDecoration(
                color: isSelected ? selectedColor : originalColor,
                borderRadius: BorderRadius.circular(
                    isSelected ? 15.0 : 10.0), // Adjust the border radius
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    '${service['services']}',
                    style: TextStyle(
                      fontSize: isSelected
                          ? 12.0
                          : 10 * widget.ffem, // Adjust font size with animation
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                   Text(
                    '${service['material']}',
                    style: TextStyle(
                      fontSize: isSelected
                          ? 12.0
                          : 10 * widget.ffem, // Adjust font size with animation
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    '${service['color']}',
                    style: TextStyle(
                      fontSize: isSelected
                          ? 12.0
                          : 10 * widget.ffem, // Adjust font size with animation
                      fontWeight: FontWeight.w600,
                      color: Color(0xff000000),
                    ),
                  ),
                  Text(
                    'Price: \PHP ${service['price']}',
                    style: TextStyle(
                      color: Colors.black.withOpacity(0.57),
                      fontSize: isSelected
                          ? 12.0
                          : 10 * widget.ffem, // Adjust font size with animation
                      fontFamily: 'Inter',
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                  // GestureDetector(
                  //   onTap: () {
                  //     print('Pressed + icon for item with id: ${service['id']}');
                  //   },
                  //   child: Icon(
                  //     Icons.add,
                  //     size: isSelected ? 26.0 : 24.0, // Adjust icon size with animation
                  //     color: isSelected ? Colors.white : Colors.blue, // Adjust icon color
                  //   ),
                  // ),
                ],
              ),
            ),
          );
        },
      ),
    );
  }
}
