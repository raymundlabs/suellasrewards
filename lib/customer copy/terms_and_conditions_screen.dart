import 'package:flutter/material.dart';

class TermsAndConditionsScreen extends StatelessWidget {
  const TermsAndConditionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title:  Text('Terms and Conditions'),
        backgroundColor:  Color(0xFF1E464A),
      ),
      body:  Padding(
        padding: EdgeInsets.all(16.0),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Terms and Conditions',
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
                'By using our mobile application or website (collectively referred to as "Service"), you agree to comply with and be bound by these Terms and Conditions. If you do not agree to these Terms and Conditions, please do not use the Service.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16.0),
              Text(
                '1. Use of Service',
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              SizedBox(height: 8.0),
              Text(
                'You must be at least 18 years old to use the Service. By using the Service, you represent and warrant that you are 18 years of age or older.',
                style: TextStyle(fontSize: 16),
              ),
              SizedBox(height: 16.0),
              // ... Continue adding the rest of the terms and conditions content
            ],
          ),
        ),
      ),
    );
  }
}
