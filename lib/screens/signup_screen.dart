import 'package:flutter/material.dart';
import 'package:accountsntax/utils/routes.dart';

class SignupScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Name',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Email/Phone no.',
              ),
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            TextFormField(
              decoration: InputDecoration(
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Sign Up'),
              onPressed: () {
                // Perform registration/authentication
                // If successful, automatically log in and navigate to the DashboardScreen
                Navigator.pushReplacementNamed(context, dashboardRoute);
              },
              style: ElevatedButton.styleFrom(
                primary: Color(0xFFEA7A40), // Set the button color to orange
              ),
            ),
          ],
        ),
      ),
    );
  }
}
