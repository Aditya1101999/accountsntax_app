// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class EditAddressDetailsScreen extends StatefulWidget {
  const EditAddressDetailsScreen({super.key});

  @override
  _EditAddressDetailsScreenState createState() =>
      _EditAddressDetailsScreenState();
}

class _EditAddressDetailsScreenState extends State<EditAddressDetailsScreen> {
  late TextEditingController _typeController;
  late TextEditingController _addressLine1Controller;
  late TextEditingController _addressLine2Controller;
  late TextEditingController _pincodeController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;
  late TextEditingController _countryController;

  String? _typeError;
  String? _addressLine1Error;
  String? _addressLine2Error;
  String? _pincodeError;
  String? _cityError;
  String? _stateError;
  String? _countryError;

  @override
  void initState() {
    super.initState();
    _typeController = TextEditingController(text: 'registered');
    _addressLine1Controller = TextEditingController(text: 'H.NO.1');
    _addressLine2Controller = TextEditingController(text: 'H.NO.1');
    _pincodeController = TextEditingController(text: '302001');
    _cityController = TextEditingController(text: 'Ahiri');
    _stateController = TextEditingController(text: 'Maharashtra');
    _countryController = TextEditingController(text: 'IN');
  }

  @override
  void dispose() {
    _typeController.dispose();
    _addressLine1Controller.dispose();
    _addressLine2Controller.dispose();
    _pincodeController.dispose();
    _cityController.dispose();
    _stateController.dispose();
    _countryController.dispose();
    super.dispose();
  }

  bool _validateFields() {
    bool isValid = true;

    if (_typeController.text.isEmpty) {
      setState(() {
        _typeError = 'Please enter the type';
      });
      isValid = false;
    }

    if (_addressLine1Controller.text.isEmpty) {
      setState(() {
        _addressLine1Error = 'Please enter Address Line 1';
      });
      isValid = false;
    }

    if (_addressLine2Controller.text.isEmpty) {
      setState(() {
        _addressLine2Error = 'Please enter Address Line 2';
      });
      isValid = false;
    }

    if (_pincodeController.text.isEmpty) {
      setState(() {
        _pincodeError = 'Please enter the pincode';
      });
      isValid = false;
    }

    if (_cityController.text.isEmpty) {
      setState(() {
        _cityError = 'Please enter the city';
      });
      isValid = false;
    }

    if (_stateController.text.isEmpty) {
      setState(() {
        _stateError = 'Please enter the state';
      });
      isValid = false;
    }

    if (_countryController.text.isEmpty) {
      setState(() {
        _countryError = 'Please enter the country';
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
                icon: const Icon(Icons.arrow_back,color: Color(0xFF663274),),
                onPressed: () {
                  Navigator.pop(context);
                },
                alignment: Alignment.centerLeft,
              ),
            ),
            const SizedBox(height: 20),
            Container(
              child: const Text(
                'Edit Address Details',
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
                  'Type',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _typeController,
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
                    hintText: 'Enter Type',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _typeError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Address Line 1',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _addressLine1Controller,
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
                    hintText: 'Enter Address Line 1',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _addressLine1Error,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Address Line 2',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _addressLine2Controller,
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
                    hintText: 'Enter Address Line 2',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _addressLine2Error,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Pincode',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _pincodeController,
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
                    hintText: 'Enter Pincode',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _pincodeError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'City',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _cityController,
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
                    hintText: 'Enter City',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _cityError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'State',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _stateController,
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
                    hintText: 'Enter State',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _stateError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Country',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _countryController,
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
                    hintText: 'Enter Country',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _countryError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 20),
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
