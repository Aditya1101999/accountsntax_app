import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:accountsntax/utils/routes.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Login'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email',
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
            ElevatedButton(
              child: const Text('Log In'),
              onPressed: () {
                // login authentication
                Navigator.pushReplacementNamed(context, dashboardRoute);
              },
              style: ElevatedButton.styleFrom(
                primary: const Color(0xFFEA7A40), // Set the button color to orange
              ),
            ),
            const SizedBox(height: 20),
            TextButton(
              child: const Text(
                "Don't have an account? Sign up",
                style: TextStyle(color: Color(0xFFEA7A40)),
              ),
              onPressed: () {
                Navigator.pushNamed(context, signupRoute);
              },
            ),
            const SizedBox(height: 20),
            OutlinedButton.icon(
              icon: const Icon(CupertinoIcons.square_arrow_right), // Use the square_arrow_right icon from cupertino_icons
              label: const Text("Sign up with Google"),
              onPressed: () {
                // sign up with Google authentication
              },
            ),
          ],
        ),
      ),
    );
  }
}
