
import 'package:flutter/material.dart';

class RegistrationScreen extends StatefulWidget {
  @override
  State<RegistrationScreen> createState() {
    return _RegistrationScreenState();
  }
}

class _RegistrationScreenState extends State<RegistrationScreen> {
  final _form = GlobalKey<FormState>();

  var _enteredFirstName = '';
  var _enteredLastName = '';
  var _enteredEmail = '';
  var _enteredAddress = '';
  var _enteredCity = '';
  var _enteredProvince = '';
  var _enteredMobileNumber = '';
  var _acceptedTerms = false;
  var _isAuthenticating = false;

  void _submit() async {
    final isValid = _form.currentState!.validate();

    if (!_acceptedTerms) {
      ScaffoldMessenger.of(context).showSnackBar(
        SnackBar(content: Text('Please accept terms and conditions.')),
      );
      return;
    }

    if (!isValid) {
      return;
    }

    _form.currentState!.save();

    try {
      setState(() {
        _isAuthenticating = true;
      });

      // Perform registration logic here

    } catch (error) {
      print('Registration error: $error');
    } finally {
      setState(() {
        _isAuthenticating = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Form(
      key: _form,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          TextFormField(
            decoration: InputDecoration(labelText: 'First Name'),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your first name.';
              }
              return null;
            },
            onSaved: (value) {
              _enteredFirstName = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Last Name'),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your last name.';
              }
              return null;
            },
            onSaved: (value) {
              _enteredLastName = value!;
            },
          ),
          TextFormField(
            // Remove the duplicate "Email Address" field here
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Address'),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your address.';
              }
              return null;
            },
            onSaved: (value) {
              _enteredAddress = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'City'),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your city.';
              }
              return null;
            },
            onSaved: (value) {
              _enteredCity = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Province'),
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your province.';
              }
              return null;
            },
            onSaved: (value) {
              _enteredProvince = value!;
            },
          ),
          TextFormField(
            decoration: InputDecoration(labelText: 'Mobile Number'),
            keyboardType: TextInputType.phone,
            validator: (value) {
              if (value == null || value.trim().isEmpty) {
                return 'Please enter your mobile number.';
              }
              return null;
            },
            onSaved: (value) {
              _enteredMobileNumber = value!;
            },
          ),
          CheckboxListTile(
            title: Text('Accept Terms and Conditions'),
            value: _acceptedTerms,
            onChanged: (value) {
              setState(() {
                _acceptedTerms = value!;
              });
            },
          ),
          SizedBox(height: 12),
          if (_isAuthenticating)
            CircularProgressIndicator(),
          if (!_isAuthenticating)
            ElevatedButton(
              onPressed: _submit,
              child: Text('Signup'),
            ),
        ],
      ),
    );
  }
}
