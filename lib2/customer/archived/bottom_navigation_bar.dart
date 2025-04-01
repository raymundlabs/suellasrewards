import 'package:flutter/material.dart';
import 'package:suellas/customer/inbox.dart';
import 'package:suellas/customer/profile.dart';
import 'package:suellas/customer/location.dart';



Widget buildBottomNavigationBar(BuildContext context) {
  return Container(
    width: 333,
    height: 50,
    padding: EdgeInsets.fromLTRB(20, 8, 20, 8),
    margin: EdgeInsets.fromLTRB(44, 20.14, 44, 20.14),
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
            // Implement the behavior for the first icon
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
              MaterialPageRoute(builder: (context) => InboxScreen()),
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
            // Navigate to QR screen
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
              MaterialPageRoute(builder: (context) => LocationScreen()),
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
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => ProfileScreen()),
            );
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
