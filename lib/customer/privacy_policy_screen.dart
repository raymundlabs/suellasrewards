import 'package:flutter/material.dart';

class PrivacyPolicyScreen extends StatelessWidget {
  const PrivacyPolicyScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Privacy Policy'),
        backgroundColor:  Color(0xFF1E464A),
      ),
      body:  Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Privacy Policy',
                style: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'Effective Date: [Date]',
                style: TextStyle(
                  fontSize: 16,
                ),
              ),
              SizedBox(height: 16.0),
              Text(
                'This Privacy Policy describes how Suellas ("we", "us", or "our") collects, uses, and shares your personal information when you use our mobile application or website (collectively referred to as "Service"). By using the Service, you agree to the terms of this Privacy Policy.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16.0),
              Text(
                '1. Information We Collect',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'We may collect the following types of information:',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 4.0),
              Text(
                '- Personal Information: Name, email address, phone number, and other contact information.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 4.0),
              Text(
                '- Usage Data: Information about how you use the Service, including pages visited, features used, and other interactions.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16.0),
              // ... Continue adding the rest of the privacy policy content
            ],
          ),
        ),
      ),
    );
  }
}
