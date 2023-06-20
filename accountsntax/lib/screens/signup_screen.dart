// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';
import 'package:accountsntax/utils/routes.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  _SignUpScreenState createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  bool _isPasswordVisible = false;
  bool _isConfirmPasswordVisible = false;
  final TextEditingController _firstNameController = TextEditingController();
  final TextEditingController _lastNameController = TextEditingController();
  final TextEditingController _contactNoController = TextEditingController();
  final TextEditingController _adminCodeController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  String _firstNameError = '';
  String _lastNameError = '';
  String _contactNoError = '';
  String _adminCodeError = '';
  String _emailError = '';
  String _passwordError = '';
  String _confirmPasswordError = '';

  bool _validateFields() {
    final firstName = _firstNameController.text.trim();
    final lastName = _lastNameController.text.trim();
    final contactNo = _contactNoController.text.trim();
    final adminCode = _adminCodeController.text.trim();
    final email = _emailController.text.trim();
    final password = _passwordController.text.trim();
    final confirmPassword = _confirmPasswordController.text.trim();

    bool isValid = true;

    if (firstName.isEmpty) {
      setState(() {
        _firstNameError = 'Please enter your first name.';
      });
      isValid = false;
    } else {
      setState(() {
        _firstNameError = '';
      });
    }

    if (lastName.isEmpty) {
      setState(() {
        _lastNameError = 'Please enter your last name.';
      });
      isValid = false;
    } else {
      setState(() {
        _lastNameError = '';
      });
    }

    if (contactNo.isEmpty) {
      setState(() {
        _contactNoError = 'Please enter your contact number.';
      });
      isValid = false;
    } else {
      setState(() {
        _contactNoError = '';
      });
    }

    if (adminCode.isEmpty) {
      setState(() {
        _adminCodeError = 'Please enter the admin code.';
      });
      isValid = false;
    } else {
      setState(() {
        _adminCodeError = '';
      });
    }

    if (email.isEmpty) {
      setState(() {
        _emailError = 'Please enter your email.';
      });
      isValid = false;
    } else {
      setState(() {
        _emailError = '';
      });
    }

    if (password.isEmpty) {
      setState(() {
        _passwordError = 'Please enter your password.';
      });
      isValid = false;
    } else if (password.length < 8) {
      setState(() {
        _passwordError = 'Password should be at least 8 characters long.';
      });
      isValid = false;
    } else {
      setState(() {
        _passwordError = '';
      });
    }

    if (confirmPassword.isEmpty) {
      setState(() {
        _confirmPasswordError = 'Please re-enter your password.';
      });
      isValid = false;
    } else if (confirmPassword != password) {
      setState(() {
        _confirmPasswordError = 'Passwords do not match.';
      });
      isValid = false;
    } else {
      setState(() {
        _confirmPasswordError = '';
      });
    }

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: Padding(
            padding: const EdgeInsets.all(20.0),
            child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  SizedBox(
                    height: 150,
                    child: Image.asset(
                      'assets/images/logo2.png',
                      height: 150,
                    ),
                  ),
                  const Text(
                    'Sign Up',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 29,
                      color: Colors.black,
                    ),
                  ),
                  const SizedBox(height: 30),
                  Expanded(
                      child: SingleChildScrollView(
                    child: Column(children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                  //         const Text(
                  //   'Sign Up',
                  //   style: TextStyle(
                  //     fontWeight: FontWeight.bold,
                  //     fontSize: 29,
                  //     color: Colors.black,
                  //   ),
                  //   textAlign: TextAlign.center,
                  // ),
                  // const SizedBox(height: 30),
                          const Text(
                            'First Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: _firstNameController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 12.0,
                              ),
                              hintText: 'Enter your first name',
                              errorText: _firstNameError.isNotEmpty
                                  ? _firstNameError
                                  : null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Last Name',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: _lastNameController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 12.0,
                              ),
                              hintText: 'Enter your last name',
                              errorText: _lastNameError.isNotEmpty
                                  ? _lastNameError
                                  : null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Contact No.',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: _contactNoController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 12.0,
                              ),
                              hintText: 'Enter your contact number',
                              errorText: _contactNoError.isNotEmpty
                                  ? _contactNoError
                                  : null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Admin Code',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: _adminCodeController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 12.0,
                              ),
                              hintText: 'Enter the admin code',
                              errorText: _adminCodeError.isNotEmpty
                                  ? _adminCodeError
                                  : null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Email',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: _emailController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 12.0,
                              ),
                              hintText: 'Enter your email',
                              errorText:
                                  _emailError.isNotEmpty ? _emailError : null,
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: _passwordController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 12.0,
                              ),
                              hintText: 'Enter your password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isPasswordVisible = !_isPasswordVisible;
                                  });
                                },
                              ),
                              errorText: _passwordError.isNotEmpty
                                  ? _passwordError
                                  : null,
                            ),
                            obscureText: !_isPasswordVisible,
                          ),
                        ],
                      ),
                      const SizedBox(height: 12),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          const Text(
                            'Confirm Password',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: _confirmPasswordController,
                            decoration: InputDecoration(
                              filled: true,
                              fillColor: Colors.white,
                              border: OutlineInputBorder(
                                borderSide: BorderSide.none,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              contentPadding: const EdgeInsets.symmetric(
                                horizontal: 16.0,
                                vertical: 12.0,
                              ),
                              hintText: 'Re-enter your password',
                              suffixIcon: IconButton(
                                icon: Icon(
                                  _isConfirmPasswordVisible
                                      ? Icons.visibility_off
                                      : Icons.visibility,
                                  color: Colors.grey,
                                ),
                                onPressed: () {
                                  setState(() {
                                    _isConfirmPasswordVisible =
                                        !_isConfirmPasswordVisible;
                                  });
                                },
                              ),
                              errorText: _confirmPasswordError.isNotEmpty
                                  ? _confirmPasswordError
                                  : null,
                            ),
                            obscureText: !_isConfirmPasswordVisible,
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      SizedBox(
                        width: 150,
                        height: 48,
                        child: ElevatedButton(
                          onPressed: () {
                            if (_validateFields()) {
                              // Perform sign up logic
                              Navigator.pushReplacementNamed(
                                  context, dashboardRoute);
                            }
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEA7B0C),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8.0),
                            ),
                          ),
                          child: const Text(
                            'Sign Up',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 20),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          const Text("Already have an account? "),
                          InkWell(
                            onTap: () {
                              Navigator.pushNamed(context, loginRoute);
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
                    ]),
                  )),
                ])));
  }
}
