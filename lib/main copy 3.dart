import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter CodeIgniter API Example',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  String baseUrl = 'https://app.suellastheshoelaundry.com/admin/auth'; // Replace with your API URL
  String apiKey = '36051e7b28bda1067f46ef8741fb4bcc60594b6e6fa0df66cb690c1fbdced530';

  Future<void> registerUser(String email, String password) async {
    final response = await http.post(
      Uri.parse('$baseUrl/register'),
      body: {'email': email, 'password': password},
    );

    if (response.statusCode == 200) {
      print('Registration successful');
    } else {
      print('Registration failed');
    }
  }

Future<void> loginUser(String email, String password) async {
  try {
    
    final response = await http.post(
      Uri.parse('$baseUrl/loginv2'),
      body: {'email': email, 'password': password},
    );

    print('Response Status Code: ${response.statusCode}');
    print('Response Body: ${response.body}');

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      final api_key = responseBody['api_key'];
      // Store the api_key securely, e.g., using environment variables or secure storage
      print('Login successful');
    } else {
      print('Login failed');
    }
  } catch (error) {
    print('An error occurred: $error');
  }
}


  Future<void> fetchData() async {
    final headers = {'Authorization': apiKey};
    final response = await http.get(
      Uri.parse('$baseUrl/get_data'),
      headers: headers,
    );

    if (response.statusCode == 200) {
      final responseBody = json.decode(response.body);
      print('Fetched data: $responseBody');
    } else {
      print('Failed to fetch data');
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Flutter CodeIgniter API Example'),
      ),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            ElevatedButton(
              onPressed: () {
                registerUser('user@example.com', 'password123');
              },
              child: Text('Register User'),
            ),
            ElevatedButton(
              onPressed: () {
                loginUser('r@g.com', '123456');
              },
              child: Text('Login User'),
            ),
            ElevatedButton(
              onPressed: () {
                fetchData();
              },
              child: Text('Fetch Data'),
            ),
          ],
        ),
      ),
    );
  }
}
