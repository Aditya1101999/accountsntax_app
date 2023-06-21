// ignore_for_file: library_private_types_in_public_api

import 'dart:async';

import 'package:flutter/material.dart';
import 'package:accountsntax/utils/routes.dart';

class OTPVerificationScreen extends StatefulWidget {
  final int sourceFlag; // Flag indicating the source route: 1 for sign-up, 2 for OTP screen

  const OTPVerificationScreen({Key? key, required this.sourceFlag}) : super(key: key);

  @override
  _OTPVerificationScreenState createState() => _OTPVerificationScreenState();
}

class _OTPVerificationScreenState extends State<OTPVerificationScreen> {
  final List<TextEditingController> _otpControllers =
      List.generate(4, (_) => TextEditingController());
  final List<FocusNode> _focusNodes = List.generate(4, (_) => FocusNode());
  String _otpError = '';
  int _resendTimer = 59;
  Timer? _timer;

  @override
  void initState() {
    super.initState();
    _startResendTimer();
  }

  @override
  void dispose() {
    for (var controller in _otpControllers) {
      controller.dispose();
    }
    for (var focusNode in _focusNodes) {
      focusNode.dispose();
    }
    _timer?.cancel();
    super.dispose();
  }

  void _startResendTimer() {
    _timer = Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() {
        if (_resendTimer > 0) {
          _resendTimer--;
        } else {
          _timer?.cancel();
        }
      });
    });
  }

  void _resetResendTimer() {
    setState(() {
      _resendTimer = 59;
    });
    _startResendTimer();
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
    return isValid; // Return the actual validation result
  }

  void _navigateToNextScreen() {
    if (widget.sourceFlag == 1) {
      Navigator.pushReplacementNamed(context, loginRoute); // Route to login route if sourceFlag is 1 (sign-up route)
    } else if (widget.sourceFlag == 2) {
      Navigator.pushReplacementNamed(context, changePasswordRoute); // Route to change password route if sourceFlag is 2 (OTP screen route)
    }
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
                    children: List.generate(
                      4,
                      (index) => _buildOTPDigitField(index),
                    ),
                  ),
                  const SizedBox(height: 20),
                  Text(
                    _otpError,
                    style: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                  const SizedBox(height: 20),
                  ElevatedButton(
                    onPressed: () {
                      if (_validateFields()) {
                        final enteredOTP = _otpControllers.map((controller) => controller.text).join();
                        const correctOTP = '1234'; // Replace with the correct OTP

                        if (enteredOTP == correctOTP) {
                          _navigateToNextScreen();
                        } else {
                          setState(() {
                            _otpError = 'Invalid OTP. Please try again.';
                          });
                        }
                      }
                    },
                    style: ElevatedButton.styleFrom(
                      backgroundColor: Colors.orange,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(8.0),
                      ),
                      elevation: 2,
                      minimumSize: const Size(150, 48),
                    ),
                    child: const Text(
                      'Verify OTP',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 22,
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  TextButton(
                    onPressed: _resendTimer == 0
                        ? () {
                      _resetResendTimer();
                    }
                        : null,
                    child: Text(
                      _resendTimer == 0
                          ? 'Resend OTP'
                          : 'Resend OTP ($_resendTimer s)',
                      style: TextStyle(
                        color: _resendTimer == 0
                            ? const Color(0xFF663274)
                            : Colors.grey,
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
          hintStyle: const TextStyle(color: Colors.grey),
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

