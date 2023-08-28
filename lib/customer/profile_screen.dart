import 'package:flutter/material.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'dart:convert';
import 'package:http/http.dart' as http;

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  TextEditingController nameController = TextEditingController();
  TextEditingController lastNameController = TextEditingController();
  TextEditingController mobileController = TextEditingController();
  TextEditingController emailController = TextEditingController();
  TextEditingController addressController = TextEditingController();
  TextEditingController cityController = TextEditingController();
  TextEditingController provinceController = TextEditingController();

  bool _isEditing = false;

  Future<void> _loadUserData() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userDetailsJson = prefs.getString('userDetails') ?? '';

    if (userDetailsJson.isNotEmpty) {
      Map<String, dynamic> userDetailsMap = json.decode(userDetailsJson);
      setState(() {
        nameController.text = userDetailsMap['user']['first_name'] ?? '';
        lastNameController.text = userDetailsMap['user']['last_name'] ?? '';
        mobileController.text = userDetailsMap['user']['mobile_number'] ?? '';
        emailController.text = userDetailsMap['user']['email'] ?? '';
        addressController.text = userDetailsMap['user']['address'] ?? '';
        cityController.text = userDetailsMap['user']['city'] ?? '';
        provinceController.text = userDetailsMap['user']['province'] ?? '';
      });
    }
  }

  Future<void> _editProfile() async {
    SharedPreferences prefs = await SharedPreferences.getInstance();
    String userDetailsJson = prefs.getString('userDetails') ?? '';

    if (userDetailsJson.isNotEmpty) {
      Map<String, dynamic> userDetailsMap = json.decode(userDetailsJson);
      String userId = userDetailsMap['user']['id'] ?? '';

      Map<String, dynamic> updatedData = {
        'id': userId,
        'first_name': nameController.text,
        'last_name': lastNameController.text,
        'mobile_number': mobileController.text,
        'email': emailController.text,
        'address': addressController.text,
        'city': cityController.text,
        'province': provinceController.text,
      };

      try {
        final response = await http.post(
          Uri.parse('https://app.suellastheshoelaundry.com/admin/auth/editProfile'),
          body: json.encode(updatedData),
          headers: {
            'Content-Type': 'application/json',
          },
        );

        if (response.statusCode == 200) {
          final responseBody = json.decode(response.body);
          if (responseBody['message'] == 'Profile updated successfully') {
            // Show a success message or perform other actions
            print('Success: Profile updated');
          } else {
            // Show an error message or handle errors
            print('Error: ${responseBody['message']}');
          }
        } else {
          // Handle API errors
          print('Error: API request failed with status code ${response.statusCode}');
        }
      } catch (error) {
        print('Error editing profile: $error');
      }
    }
  }

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

  void _toggleEdit() {
    setState(() {
      _isEditing = true;
    });
  }

  void _saveChanges() {
    // Perform the logic to save changes to the user's profile
    // Here, you can call _editProfile() or other relevant actions
    _editProfile(); // For demonstration purposes, you can call _editProfile() directly
    setState(() {
      _isEditing = false;
    });
  }

  @override
  void initState() {
    super.initState();
    _loadUserData();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Profile'),
        backgroundColor: const Color(0xFF1E464A),
      ),
      body: SingleChildScrollView(
        child: Container(
          color: Colors.grey[200],
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CircleAvatar(
                radius: 50.0,
                backgroundImage: NetworkImage(
                    'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTVk58F1Z91wet1x70S-qiELsB_ObskOTzyCQ&usqp=CAU'),
              ),
              const SizedBox(height: 16.0),
              TextFormField(
                controller: nameController,
                decoration: const InputDecoration(labelText: 'Name'),
                enabled: _isEditing,
              ),
              TextFormField(
                controller: lastNameController,
                decoration: const InputDecoration(labelText: 'Last Name'),
                enabled: _isEditing,
              ),
              TextFormField(
                controller: mobileController,
                decoration: const InputDecoration(labelText: 'Mobile Number'),
                enabled: _isEditing,
              ),
              TextFormField(
                controller: emailController,
                decoration: const InputDecoration(labelText: 'Email'),
                enabled: _isEditing,
              ),
              TextFormField(
                controller: addressController,
                decoration: const InputDecoration(labelText: 'Address'),
                enabled: _isEditing,
              ),
              TextFormField(
                controller: cityController,
                decoration: const InputDecoration(labelText: 'City'),
                enabled: _isEditing,
              ),
              TextFormField(
                controller: provinceController,
                decoration: const InputDecoration(labelText: 'Province'),
                enabled: _isEditing,
              ),
              const SizedBox(height: 16.0),
              if (_isEditing)
                ElevatedButton(
                  onPressed: _saveChanges,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text('Save'),
                )
              else
                ElevatedButton(
                  onPressed: _toggleEdit,
                  style: ElevatedButton.styleFrom(
                    foregroundColor: Colors.black,
                    backgroundColor: Colors.transparent,
                    side: const BorderSide(color: Colors.black),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                  ),
                  child: const Text('Edit'),
                ),
              ListTile(
                title: const Text('Sign Out'),
                trailing: const Text('App version 1.0'),
                onTap: _signOut,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
