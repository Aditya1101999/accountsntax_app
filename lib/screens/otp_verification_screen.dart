// ignore_for_file: library_private_types_in_public_api

import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

class OTPVerificationScreen extends StatefulWidget {
  const OTPVerificationScreen({Key? key}) : super(key: key);

  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final List<TextEditingController> _otpControllers = List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  String _otpError = '';

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    super.dispose();
  }

  bool _validateFields() {
    bool isValid = true;
    for (var i = 0; i < 4; i++) {
      final otp = _otpControllers[i].text.trim();
      if (otp.isEmpty || otp.length != 1 || int.tryParse(otp) == null) {
        setState(() {
          _otpError = 'Invalid OTP. Please enter a 4-digit OTP.';
        });
        isValid = false;
        break;
      }
    }
    if (isValid) {
      setState(() {
        _otpError = '';
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
                  'Enter OTP',
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
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: List.generate(4, (index) => _buildOTPDigitField(index)),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    _otpError,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 150,
                    height: 48,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_validateFields()) {
                          // Dummy condition for OTP verification
                          if (_otpControllers[0].text == '1' &&
                              _otpControllers[1].text == '2' &&
                              _otpControllers[2].text == '3' &&
                              _otpControllers[3].text == '4') {
                            // OTP matched
                            Navigator.pushReplacementNamed(context, dashboardRoute);
                          } else {
                            // OTP didn't match
                            setState(() {
                              _otpError = 'Invalid OTP. Please try again.';
                            });
                          }
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEA7B0C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'Verify OTP',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 22,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: () {
                      // Implement resend OTP logic
                    },
                    child: const Text(
                      'Resend OTP',
                      style: TextStyle(
                        color: Color(0xFFEA7A40),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildOTPDigitField(int index) {
    return SizedBox(
      width: 48,
      height: 48,
      child: TextFormField(
        controller: _otpControllers[index],
        focusNode: _focusNodes[index],
        keyboardType: TextInputType.number,
        maxLength: 1,
        decoration: InputDecoration(
          counterText: '',
          filled: true,
          fillColor: Colors.white,
          border: OutlineInputBorder(
            borderSide: BorderSide.none,
            borderRadius: BorderRadius.circular(8.0),
          ),
          contentPadding: const EdgeInsets.all(16.0),
        ),
        onChanged: (value) {
          if (value.isNotEmpty && int.tryParse(value) != null && index < 3) {
            _focusNodes[index + 1].requestFocus();
          }
          if (value.isEmpty) {
            _focusNodes[index].previousFocus();
          }
        },
      ),
    );
  }
}
