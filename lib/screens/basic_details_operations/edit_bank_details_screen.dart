// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class EditBankDetailsScreen extends StatefulWidget {
  const EditBankDetailsScreen({super.key});

  @override
  _EditBankDetailsScreenState createState() => _EditBankDetailsScreenState();
}

class _EditBankDetailsScreenState extends State<EditBankDetailsScreen> {
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
    _bankNameController = TextEditingController(text: 'HDFC Bank');
    _accountNumberController = TextEditingController(text: '12545856512');
    _beneficiaryNameController = TextEditingController(text: 'ram');
    _ifscCodeController = TextEditingController(text: 'HDFC0008767');
    _accountTypeController = TextEditingController(text: 'current');
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
 RegExp pattern = RegExp(r'^\d{2}[A-Za-z0-9]{10}[1-9A-Za-z]$');
    if (_ifscCodeController.text.isEmpty) {
      setState(() {
        _ifscCodeError = 'Please enter the IFSC code';
      });
      isValid = false;
    }
    else if (pattern.hasMatch(_ifscCodeController.text)) {
      setState(() {
        _ifscCodeError = 'Please enter valid IFSC code';
      });
      isValid = false;
    }
    if (_accountTypeController.text.isEmpty) {
      setState(() {
        _accountTypeError = 'Please enter the type of account';
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
                icon: const Icon(Icons.arrow_back,color:Color(0xFF663274)),
                onPressed: () {
                  Navigator.pop(context);
                },
                alignment: Alignment.centerLeft,
              ),
            ),
            Container(
              child: const Text(
                'Edit Bank Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF663274),
                ),
                textAlign: TextAlign.center,
              ),
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
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_validateFields()) {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Updated Successfully'),
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
                  'Save',
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
