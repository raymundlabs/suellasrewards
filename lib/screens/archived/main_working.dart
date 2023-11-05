import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;

class AuthScreen extends StatefulWidget {
  const AuthScreen({Key? key}) : super(key: key);

  @override
  State<AuthScreen> createState() {
    return _AuthScreenState();
  }
}

class _AuthScreenState extends State<AuthScreen> {
  final _form = GlobalKey<FormState>();

  var _isLogin = true;
  var _enteredEmail = '';
  var _enteredPassword = '';
  var _enteredUsername = '';
  var _isAuthenticating = false;
  int _currentIndex = 0;

  void _submit() async {
    final isValid = _form.currentState!.validate();

    if (!isValid) {
      return;
    }

    _form.currentState!.save();

    try {
      setState(() {
        _isAuthenticating = true;
      });

      final response = await _sendAuthRequest();

      if (response.statusCode == 200) {
        final responseBody = response.body;
        print(responseBody); // Handle the response according to your needs
      } else {
        print('Authentication failed.');
      }

    } catch (error) {
      print('Authentication error: $error');
    } finally {
      setState(() {
        _isAuthenticating = false;
      });
    }
  }

  Future<http.Response> _sendAuthRequest() async {
          final headers = {
        'Content-Type': 'application/json',
        'X-CSRF-Token': 'd7c436fff9e0910158379791ad0aeba8',
      };
    final apiUrl = _isLogin ? '/admin/auth/login_app' : '/admin/auth/register_app';
    
    final response = await http.post(
      Uri.parse('https://app.suellastheshoelaundry.com' + apiUrl),
      body: {
        'email': _enteredEmail,
        'password': _enteredPassword,
        'username': _enteredUsername,
      },
    );
    return response;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        titleSpacing: 0,
        title: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Good Morning',
                style: const TextStyle(
                  fontSize: 26,
                  fontWeight: FontWeight.bold,
                  color: Colors.black,
                ),
              ),
            ),
          ],
        ),
        toolbarHeight: 100,
      ),
      body: Container(
        color: Colors.grey[200],
        child: Center(
          child: SingleChildScrollView(
            child: Card(
              margin: const EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(16),
                child: Form(
                  key: _form,
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      Container(
                        margin: const EdgeInsets.only(top: 20),
                        width: 150,
                        height: 150,
                        child: Image(
                          image: AssetImage('assets/images/logo.png'),
                        ),
                      ),
                      Divider(
                        color: Colors.black,
                        thickness: 1,
                        height: 16,
                      ),
                      if (!_isLogin)
                        TextFormField(
                          decoration: InputDecoration(labelText: 'Username'),
                          validator: (value) {
                            if (value == null ||
                                value.isEmpty ||
                                value.trim().length < 4) {
                              return 'Please enter at least 4 characters.';
                            }
                            return null;
                          },
                          onSaved: (value) {
                            _enteredUsername = value!;
                          },
                        ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Email Address'),
                        keyboardType: TextInputType.emailAddress,
                        autocorrect: false,
                        textCapitalization: TextCapitalization.none,
                        validator: (value) {
                          if (value == null ||
                              value.trim().isEmpty ||
                              !value.contains('@')) {
                            return 'Please enter a valid email address.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _enteredEmail = value!;
                        },
                      ),
                      TextFormField(
                        decoration: InputDecoration(labelText: 'Password'),
                        obscureText: true,
                        validator: (value) {
                          if (value == null || value.trim().length < 6) {
                            return 'Password must be at least 6 characters long.';
                          }
                          return null;
                        },
                        onSaved: (value) {
                          _enteredPassword = value!;
                        },
                      ),
                      SizedBox(height: 12),
                      if (_isAuthenticating)
                        CircularProgressIndicator(),
                      if (!_isAuthenticating)
                        ElevatedButton(
                          onPressed: _submit,
                          child: Text(_isLogin ? 'Login' : 'Signup'),
                        ),
                      if (!_isAuthenticating)
                        TextButton(
                          onPressed: () {
                            setState(() {
                              _isLogin = !_isLogin;
                            });
                          },
                          child: Text(
                            _isLogin ? 'Create an account' : 'Already have an account',
                          ),
                        ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          setState(() {
            _currentIndex = index;
          });
        },
        selectedItemColor: Colors.blue,
        unselectedItemColor: Colors.grey,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.qr_code),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.list),
            label: '',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.help),
            label: '',
          ),
        ],
        type: BottomNavigationBarType.fixed,
      ),
    );
  }
}

void main() => runApp(const MaterialApp(home: AuthScreen()));

class GreetingWidget {
  static String _getGreetMessage() {
    final currentTime = DateTime.now();
    if (currentTime.hour < 12) {
      return 'Good Morning';
    } else if (currentTime.hour < 17) {
      return 'Good Afternoon';
    } else {
      return 'Good Evening';
    }
  }
}
