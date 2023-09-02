import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'package:suellas/screens/auth.dart'; // Import the AuthScreen

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController(text: 'Sofia Nilo');
  TextEditingController lastNameController = TextEditingController(text: 'Nilo');
  TextEditingController usernameController = TextEditingController(text: 'sofianilo');
  TextEditingController mobileController = TextEditingController(text: '123-456-7890');
  TextEditingController emailController = TextEditingController(text: 'sofia@example.com');
  TextEditingController addressController = TextEditingController(text: '123 Main St, City');
Future<void> _signOut() async {
  try {
    // Perform any necessary cleanup or tasks related to sign-out
    // For example, clear user data, tokens, etc.

    // Navigate back to the authentication screen
    Navigator.of(context).pushReplacement(
      MaterialPageRoute(builder: (context) => AuthScreen()),
    );
    
  } catch (e) {
    print('Error signing out: $e');
  }
}



  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFF1E464A),
      ),
      body: Container(
        color: Colors.grey[200],
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // ... other input fields ...

            ListTile(
              title: const Text('Sign Out'),
              trailing: const Text('App version 1.0'),
              onTap: _signOut,
            ),
          ],
        ),
      ),
    );
  }
}
