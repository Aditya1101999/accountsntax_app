// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:accountsntax/utils/routes.dart';

class SignupScreen extends StatefulWidget {
  const SignupScreen({Key? key}) : super(key: key);

  @override
  _SignupScreenState createState() => _SignupScreenState();
}

class _SignupScreenState extends State<SignupScreen> {
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _contactNoController = TextEditingController();
  final TextEditingController _adminCodeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();

  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;

  String _firstNameError = '';
  String _lastNameError = '';
  String _contactNoError = '';
  String _adminCodeError = '';
  String _emailError = '';
  String _passwordError = '';
  String _confirmPasswordError = '';

  bool _validateFields() {
    bool isValid = true;
    setState(() {
      _firstNameError = _firstNameController.text.trim().isEmpty
          ? 'First Name is required.'
          : '';
      _lastNameError = _lastNameController.text.trim().isEmpty
          ? 'Last Name is required.'
          : '';
      _contactNoError = _contactNoController.text.trim().isEmpty
          ? 'Contact No. is required.'
          : '';
      _adminCodeError = _adminCodeController.text.trim().isEmpty
          ? 'Admin Code is required.'
          : '';
      _emailError =
          _emailController.text.trim().isEmpty ? 'Email is required.' : '';
      _passwordError = _passwordController.text.trim().isEmpty
          ? 'Password is required.'
          : '';
      _confirmPasswordError = _confirmPasswordController.text.trim().isEmpty
          ? 'Confirm Password is required.'
          : '';

      // Email validation
      if (_emailController.text.trim().isNotEmpty) {
        if (!_emailController.text.trim().contains('@') ||
            !_emailController.text.trim().contains('.')) {
          _emailError = 'Invalid email format.';
          isValid = false;
        }
      }

      // Password validation
      if (_passwordController.text.trim().length < 8) {
        _passwordError = 'Password should be at least 8 characters long.';
        isValid = false;
      }

      // Confirm password validation
      if (_confirmPasswordController.text.trim() !=
          _passwordController.text.trim()) {
        _confirmPasswordError = 'Passwords do not match.';
        isValid = false;
      }

      // Contact No. validation
      if (_contactNoController.text.trim().isNotEmpty) {
        if (_contactNoController.text.trim().length < 10) {
          _contactNoError = 'Contact No. should be at least 10 digits long.';
          isValid = false;
        }
      }

      // Admin Code validation
      if (_adminCodeController.text.trim().isNotEmpty) {
        if (_adminCodeController.text.trim().length < 5) {
          _adminCodeError = 'Admin Code should be at least 5 digits long.';
          isValid = false;
        }
      }
    });
    return isValid;
  }

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
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _firstNameController,
                    decoration: InputDecoration(
                      labelText: 'First Name *',
                      hintText: 'Enter your first name',
                      errorText:
                          _firstNameError.isNotEmpty ? _firstNameError : null,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    controller: _lastNameController,
                    decoration: InputDecoration(
                      labelText: 'Last Name *',
                      hintText: 'Enter your last name',
                      errorText:
                          _lastNameError.isNotEmpty ? _lastNameError : null,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Row(
              children: [
                Expanded(
                  child: TextFormField(
                    controller: _contactNoController,
                    decoration: InputDecoration(
                      labelText: 'Contact No. *',
                      hintText: 'Enter your contact number',
                      errorText:
                          _contactNoError.isNotEmpty ? _contactNoError : null,
                    ),
                  ),
                ),
                const SizedBox(width: 10),
                Expanded(
                  child: TextFormField(
                    controller: _adminCodeController,
                    decoration: InputDecoration(
                      labelText: 'Admin Code *',
                      hintText: 'Enter admin code',
                      errorText:
                          _adminCodeError.isNotEmpty ? _adminCodeError : null,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _emailController,
              decoration: InputDecoration(
                labelText: 'Email *',
                hintText: 'Enter your email',
                errorText: _emailError.isNotEmpty ? _emailError : null,
              ),
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _passwordController,
              decoration: InputDecoration(
                labelText: 'Password *',
                hintText: 'Enter your password',
                errorText: _passwordError.isNotEmpty ? _passwordError : null,
                suffixIcon: IconButton(
                  icon: Icon(_isPasswordVisible
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isPasswordVisible = !_isPasswordVisible;
                    });
                  },
                ),
              ),
              obscureText: !_isPasswordVisible,
            ),
            const SizedBox(height: 20),
            TextFormField(
              controller: _confirmPasswordController,
              decoration: InputDecoration(
                labelText: 'Confirm Password *',
                hintText: 'Re-enter your password',
                errorText: _confirmPasswordError.isNotEmpty
                    ? _confirmPasswordError
                    : null,
                suffixIcon: IconButton(
                  icon: Icon(_isConfirmPasswordVisible
                      ? Icons.visibility_off
                      : Icons.visibility),
                  onPressed: () {
                    setState(() {
                      _isConfirmPasswordVisible = !_isConfirmPasswordVisible;
                    });
                  },
                ),
              ),
              obscureText: !_isConfirmPasswordVisible,
            ),
            const SizedBox(height: 20),
            ElevatedButton(
              onPressed: () {
                if (_validateFields()) {
                  // Perform registration/authentication
                  // If successful, automatically log in and navigate to the DashboardScreen
                  Navigator.pushReplacementNamed(context, dashboardRoute);
                }
              },
              style: ElevatedButton.styleFrom(
                backgroundColor:
                    const Color(0xFFEA7A40), // Set the button color to orange
              ),
              child: const Text('Sign Up'),
            ),
            const SizedBox(height: 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                const Text("Already a member? "),
                InkWell(
                  onTap: () {
                    Navigator.pushReplacementNamed(context, loginRoute);
                  },
                  child: const Text(
                    "Login",
                    style: TextStyle(
                      color: Color(0xFFEA7A40),
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
