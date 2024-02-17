import 'package:codeshefs/collector_account.dart';
import 'package:flutter/material.dart';
import 'userScreen.dart';
//import 'collectorscreen.dart';

class LoginCredPage extends StatefulWidget {
  @override
  _LoginCredPageState createState() => _LoginCredPageState();
}

class _LoginCredPageState extends State<LoginCredPage> {
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController otpController = TextEditingController();
  String? _selectedLoginType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Login'),
      ),
      body: Padding(
        padding: EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            DropdownButtonFormField<String>(
              value: _selectedLoginType,
              decoration: InputDecoration(labelText: 'Login As'),
              onChanged: (String? newValue) {
                setState(() {
                  _selectedLoginType = newValue;
                });
              },
              items: <String>[
                'User',
                'Collector',
              ].map<DropdownMenuItem<String>>((String value) {
                return DropdownMenuItem<String>(
                  value: value,
                  child: Text(value),
                );
              }).toList(),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: usernameController,
              decoration: InputDecoration(labelText: 'Username'),
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: phoneNumberController,
              decoration: InputDecoration(labelText: 'Phone Number'),
              keyboardType: TextInputType.phone,
            ),
            SizedBox(height: 20.0),
            TextFormField(
              controller: otpController,
              decoration: InputDecoration(labelText: 'OTP'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20.0),
            ElevatedButton(
              onPressed: () {
                // Handle login logic here
                _login();
              },
              child: Text('Login'),
            ),
          ],
        ),
      ),
    );
  }

  void _login() {
    String username = usernameController.text;
    String phoneNumber = phoneNumberController.text;
    String otp = otpController.text;

    // You can implement your login logic here
    // For now, let's print the entered details
    print('Login Type: $_selectedLoginType');
    print('Username: $username');
    print('Phone Number: $phoneNumber');
    print('OTP: $otp');

    // Based on the selected login type, navigate to the appropriate screen
    if (_selectedLoginType == 'User') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => Account()),
      );
    } else if (_selectedLoginType == 'Collector') {
      Navigator.push(
        context,
        MaterialPageRoute(builder: (context) => pickup()),
      );
    }
  }
}
