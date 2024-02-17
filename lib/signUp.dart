import 'package:codeshefs/home_page.dart';
import 'package:flutter/material.dart';

class SignUpPage extends StatefulWidget {
  @override
  _SignUpPageState createState() => _SignUpPageState();
}

class _SignUpPageState extends State<SignUpPage> {
  final TextEditingController nameController = TextEditingController();
  final TextEditingController usernameController = TextEditingController();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController phoneNumberController = TextEditingController();
  final TextEditingController pinCodeController = TextEditingController();
  String? _selectedPinCode;
  String? _selectedLoginType;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: ListView(
        padding: EdgeInsets.all(16.0),
        children: [
          Text(
            'Enter your details',
            style: TextStyle(fontSize: 24.0),
            textAlign: TextAlign.center,
          ),
          SizedBox(height: 10.0),
          DropdownButtonFormField<String>(
            value: _selectedLoginType,
            decoration: InputDecoration(labelText: 'Register As'),
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
            controller: nameController,
            decoration: InputDecoration(labelText: 'Name'),
          ),
          SizedBox(height: 20.0),
          TextFormField(
            controller: usernameController,
            decoration: InputDecoration(labelText: 'Username'),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            controller: addressController,
            decoration: InputDecoration(labelText: 'Address'),
          ),
          SizedBox(height: 10.0),
          TextFormField(
            controller: phoneNumberController,
            decoration: InputDecoration(labelText: 'Phone Number'),
          ),
          SizedBox(height: 10.0),
          DropdownButtonFormField<String>(
            value: _selectedPinCode,
            decoration: InputDecoration(labelText: 'Pin Code'),
            onChanged: (String? newValue) {
              setState(() {
                _selectedPinCode = newValue;
              });
            },
            items: <String>[
              '680664',
              '680666',
              '680665',
            ].map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
          ),
          SizedBox(height: 20.0),
          ElevatedButton(
            onPressed: () {
              // Handle saving data or moving to the next step
              _navigateToNextPage();
            },
            child: Text('Submit'),
          ),
        ],
      ),
    );
  }

  void _navigateToNextPage() {
    // You can navigate to the next page or perform other actions
    // For now, let's print the entered details
    print('Name: ${nameController.text}');
    print('Username: ${usernameController.text}');
    print('Address: ${addressController.text}');
    print('Phone Number: ${phoneNumberController.text}');
    print('Pin Code: ${_selectedPinCode}');
    print('Login Type: ${_selectedLoginType}');
    Navigator.push(
      context,
      MaterialPageRoute(builder: (context) => collector()),
    );
  }
}
