import 'package:flutter/material.dart';
import 'package:suellas/customer/archived/privacy_policy_screen.dart';
import 'package:suellas/customer/archived/terms_and_conditions_screen.dart';

class BranchProfileScreen extends StatefulWidget {
  const BranchProfileScreen({super.key});

  @override
  _BranchProfileScreenState createState() => _BranchProfileScreenState();
}

class _BranchProfileScreenState extends State<BranchProfileScreen> {
  TextEditingController nameController = TextEditingController(text: 'Branch Manager');
  TextEditingController mobileController = TextEditingController(text: '123-456-7890');
  TextEditingController emailController = TextEditingController(text: 'branch@example.com');
  TextEditingController addressController = TextEditingController(text: '456 Branch St, City');

Future<void> _signOut() async {
  try {
    // Perform any necessary cleanup or tasks related to sign-out
    // For example, clear user data, tokens, etc.

    // Navigate back to the authentication screen
      Navigator.pushNamedAndRemoveUntil(
        context,
        '/', // Route name of your AuthScreen
        (Route<dynamic> route) => false, // Remove all routes
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
            const CircleAvatar(
              radius: 50.0,
              backgroundImage: NetworkImage('https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVk58F1Z91wet1x70S-qiELsB_ObskOTzyCQ&usqp=CAU'), // Replace with actual image URL
            ),
            const SizedBox(height: 16.0),
            TextFormField(
              controller: nameController,
              decoration: const InputDecoration(labelText: 'Name'),
            ),
            TextFormField(
              controller: mobileController,
              decoration: const InputDecoration(labelText: 'Mobile Number'),
            ),
            TextFormField(
              controller: emailController,
              decoration: const InputDecoration(labelText: 'Email'),
            ),
            TextFormField(
              controller: addressController,
              decoration: const InputDecoration(labelText: 'Address'),
            ),
            const SizedBox(height: 16.0),
            ElevatedButton(
              onPressed: () {
                // Handle save button tap to update branch manager's profile
              },
              style: ElevatedButton.styleFrom(
                foregroundColor: Colors.black, backgroundColor: Colors.transparent,
                side: const BorderSide(color: Colors.black),
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10.0),
                ),
              ),
              child: const Text('Save'),
            ),
            ListTile(
              title: const Text('Privacy Policy'),
              trailing: const Icon(Icons.privacy_tip),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const PrivacyPolicyScreen(),
                ));
              },
            ),
            ListTile(
              title: const Text('Terms and Conditions'),
              trailing: const Icon(Icons.description),
              onTap: () {
                Navigator.of(context).push(MaterialPageRoute(
                  builder: (context) => const TermsAndConditionsScreen(),
                ));
              },
            ),
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







