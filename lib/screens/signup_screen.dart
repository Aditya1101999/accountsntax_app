import 'package:flutter/material.dart';
import 'package:accountsntax/utils/routes.dart';

class SignupScreen extends StatelessWidget {
  const SignupScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Sign Up'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Name',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email/Phone no.',
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Confirm Password',
              ),
              obscureText: true,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                // Perform registration/authentication
                // If successful, automatically log in and navigate to the DashboardScreen
                Navigator.pushReplacementNamed(context, dashboardRoute);
              },
              style: ElevatedButton.styleFrom(
                // ignore: deprecated_member_use
                primary: const Color(0xFFEA7A40), // Set the button color to orange
              ),
              child: const Text('Sign Up'),
            ),
          ],
        ),
      ),
    );
  }
}
