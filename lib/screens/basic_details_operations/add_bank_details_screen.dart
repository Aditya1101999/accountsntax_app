// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class AddBankDetailsScreen extends StatefulWidget {
  @override
  _AddBankDetailsScreenState createState() => _AddBankDetailsScreenState();
}

class _AddBankDetailsScreenState extends State<AddBankDetailsScreen> {
  late TextEditingController _bankNameController;
  late TextEditingController _accountNumberController;
  late TextEditingController _beneficiaryNameController;
  late TextEditingController _ifscCodeController;
  late TextEditingController _accountTypeController;

  String? _bankNameError;
  String? _accountNumberError;
  String? _beneficiaryNameError;
  String? _ifscCodeError;
  String? _accountTypeError;

  @override
  void initState() {
    super.initState();
    _bankNameController = TextEditingController();
    _accountNumberController = TextEditingController();
    _beneficiaryNameController = TextEditingController();
    _ifscCodeController = TextEditingController();
    _accountTypeController = TextEditingController();
  }

  @override
  void dispose() {
    _bankNameController.dispose();
    _accountNumberController.dispose();
    _beneficiaryNameController.dispose();
    _ifscCodeController.dispose();
    _accountTypeController.dispose();
    super.dispose();
  }

  bool _validateFields() {
    bool isValid = true;

    if (_bankNameController.text.isEmpty) {
      setState(() {
        _bankNameError = 'Please enter the bank name';
      });
      isValid = false;
    }

    if (_accountNumberController.text.isEmpty) {
      setState(() {
        _accountNumberError = 'Please enter the account number';
      });
      isValid = false;
    }

    if (_beneficiaryNameController.text.isEmpty) {
      setState(() {
        _beneficiaryNameError = 'Please enter the beneficiary name';
      });
      isValid = false;
    }

    if (_ifscCodeController.text.isEmpty) {
      setState(() {
        _ifscCodeError = 'Please enter the IFSC code';
      });
      isValid = false;
    }

    if (_accountTypeController.text.isEmpty) {
      setState(() {
        _accountTypeError = 'Please enter the account type';
      });
      isValid = false;
    }

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
                alignment: Alignment.centerLeft,
              ),
            ),
            const SizedBox(height: 20),
            const Text(
              'Add Bank Details',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFF663274),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Bank Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _bankNameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                     enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Color(0xFF663274)), 
    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    hintText: 'Enter Bank Name',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _bankNameError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Account Number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _accountNumberController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                     enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Color(0xFF663274)), 
    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    hintText: 'Enter Account Number',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _accountNumberError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Beneficiary Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _beneficiaryNameController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Color(0xFF663274)), 
    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    hintText: 'Enter Beneficiary Name',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _beneficiaryNameError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'IFSC Code',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _ifscCodeController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                     enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Color(0xFF663274)), 
    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    hintText: 'Enter IFSC Code',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _ifscCodeError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Type of Account',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _accountTypeController,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                     enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Color(0xFF663274)), 
    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    hintText: 'Enter Type of Account',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _accountTypeError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_validateFields()) {
                    // Perform the save operation
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Bank Details Added Successfully'),
                      ),
                    );
                  }
                },
                style: ElevatedButton.styleFrom(
                  fixedSize: const Size(170, 60),
                  backgroundColor: const Color(0xFFEA7B0C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Text(
                  'Add',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 30,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
