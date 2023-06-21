import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

class OTPScreen extends StatefulWidget {
  const OTPScreen({super.key});

  @override
  State<OTPScreen> createState() => _OTPScreenState();
}

class _OTPScreenState extends State<OTPScreen> {
  final TextEditingController _phoneController = TextEditingController();
  String _phoneError = '';

  bool _validateFields() {
    final phone = _phoneController.text.trim();
    bool isValid = true;
    if (phone.isEmpty) {
      setState(() {
        _phoneError = 'Please enter your Number.';
      });
      isValid = false;
    } else if (phone.length < 10) {
      setState(() {
        _phoneError = 'Password should be at least 10 characters long.';
      });
      isValid = false;
    }else {
      setState(() {
        _phoneError = '';
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
          children: [
            Column(
              children: [
                Image.asset(
                  'assets/images/logo2.png',
                  height: 200,
                ),
                const Text(
                  'Verify Mobile',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                    color: Color(0xFF663274),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 40),
            Expanded(
              child: Column(
                children: [
                  const Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Contact No.',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF663274)
                      ),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      filled: true,
                      fillColor: Colors.white,
                      border: OutlineInputBorder(
                        borderSide: BorderSide.none,
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16.0, vertical: 12.0),
                      hintText: 'Enter your Number',
                      hintStyle: const TextStyle(
      color: Colors.grey, 
    ),
                      errorText: _phoneError.isNotEmpty ? _phoneError : null,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 150,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_validateFields()) {
                          Navigator.pushNamed(context, otpVerificationRoute);

                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEA7B0C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'Send OTP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  Align(
                    alignment: Alignment.center,
                    child: TextButton(
                      onPressed: () {
                        Navigator.pushReplacementNamed(context, loginRoute);
                      },
                      child: const Text(
                        'Back to Login',
                        style: TextStyle(
                          color: Color(0xFFEA7A40),
                        ),
                      ),
                    ),
                  ),
                   const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}


