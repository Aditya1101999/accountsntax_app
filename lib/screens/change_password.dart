import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

class ChangePasswordScreen extends StatefulWidget {
  const ChangePasswordScreen({Key? key}) : super(key: key);

  @override
  State<ChangePasswordScreen> createState() => _ChangePasswordScreenState();
}class _ChangePasswordScreenState extends State<ChangePasswordScreen> {
  final TextEditingController _newPasswordController = TextEditingController();
  final TextEditingController _confirmPasswordController =
      TextEditingController();
  bool _isObscureNewPassword = true;
  bool _isObscureConfirmPassword = true;
  String _newPasswordError = '';
  String _confirmPasswordError = '';

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
                  'Change Password',
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
                  _buildPasswordTextField(
                    _newPasswordController,
                    'New Password',
                    _isObscureNewPassword,
                    (value) {
                      setState(() {
                        _newPasswordError = '';
                      });
                    },
                    _newPasswordError,
                  ),
                  const SizedBox(height: 20),
                  _buildPasswordTextField(
                    _confirmPasswordController,
                    'Confirm New Password',
                    _isObscureConfirmPassword,
                    (value) {
                      setState(() {
                        _confirmPasswordError = '';
                      });
                    },
                    _confirmPasswordError,
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    width: 200,
                    height: 50,
                    child: ElevatedButton(
                      onPressed: () {
                        if (_validatePasswordFields()) {
                          // Add logic to change the password
                          Navigator.pushReplacementNamed(context, loginRoute);
                        }
                      },
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFEA7B0C),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(8.0),
                        ),
                      ),
                      child: const Text(
                        'Change Password',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 18,
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

  Widget _buildPasswordTextField(
      TextEditingController controller,
      String hintText,
      bool isObscure,
      Function(String) onChanged,
      String errorText) {
    return TextFormField(
      controller: controller,
      obscureText: isObscure,
      onChanged: onChanged,
      decoration: InputDecoration(
        filled: true,
        fillColor: Colors.white,
         enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Color(0xFF663274)), 
    ),
        contentPadding:
            const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
        hintText: hintText,
        hintStyle: const TextStyle(
          color: Colors.grey,
        ),
        suffixIcon: IconButton(
          onPressed: () {
            setState(() {
              if (controller == _newPasswordController) {
                _isObscureNewPassword = !_isObscureNewPassword;
              } else if (controller == _confirmPasswordController) {
                _isObscureConfirmPassword = !_isObscureConfirmPassword;
              }
            });
          },
          icon: Icon(
            isObscure ? Icons.visibility : Icons.visibility_off,
            color: const Color(0xFF663274),
          ),
        ),
        errorText: errorText.isNotEmpty ? errorText : null,
      ),
    );
  }

  bool _validatePasswordFields() {
    final newPassword = _newPasswordController.text;
    final confirmPassword = _confirmPasswordController.text;
    bool isValid = true;

    if (newPassword.isEmpty) {
      setState(() {
        _newPasswordError = 'New password field cannot be empty.';
      });
      isValid = false;
    } else if (newPassword.length < 8) {
      setState(() {
        _newPasswordError =
            'New password should be at least 8 characters long.';
      });
      isValid = false;
    }

    if (confirmPassword.isEmpty) {
      setState(() {
        _confirmPasswordError = 'Confirm password field cannot be empty.';
      });
      isValid = false;
    } else if (newPassword != confirmPassword) {
      setState(() {
        _confirmPasswordError = 'Passwords do not match.';
      });
      isValid = false;
    }

    return isValid;
  }
}
