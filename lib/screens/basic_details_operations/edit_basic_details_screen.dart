// ignore_for_file: library_private_types_in_public_api

import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

class EditBasicDetailsScreen extends StatefulWidget {
  const EditBasicDetailsScreen({Key? key}) : super(key: key);

  @override
  _EditBasicDetailsScreenState createState() => _EditBasicDetailsScreenState();
}

class _EditBasicDetailsScreenState extends State<EditBasicDetailsScreen> {
  final TextEditingController _companyNameController = TextEditingController();
  final TextEditingController _typeController = TextEditingController();
  final TextEditingController _panController = TextEditingController();
  final TextEditingController _tanController = TextEditingController();
  final TextEditingController _contactNumberController =
      TextEditingController();
  final TextEditingController _emailController = TextEditingController();

  String? _companyNameError;
  String? _typeError;
  String? _panError;
  String? _tanError;
  String? _contactNumberError;
  String? _emailError;

  @override
  void initState() {
    super.initState();
    // Set default values for each text field
    _companyNameController.text = 'SHIROM';
    _typeController.text = 'professional';
    _panController.text = 'FIXRK1522Q';
    _tanController.text = 'ABCD1234E2';
    _contactNumberController.text = '+918963909096';
    _emailController.text = 'arya@gmail.com';
  }

  bool _validateFields() {
    bool isValid = true;

    if (_companyNameController.text.isEmpty) {
      setState(() {
        _companyNameError = 'Company Name is required';
      });
      isValid = false;
    } else {
      setState(() {
        _companyNameError = null;
      });
    }

    if (_typeController.text.isEmpty) {
      setState(() {
        _typeError = 'Type is required';
      });
      isValid = false;
    } else {
      setState(() {
        _typeError = null;
      });
    }

    if (_panController.text.isEmpty) {
      setState(() {
        _panError = 'PAN is required';
      });
      isValid = false;
    } else {
      setState(() {
        _panError = null;
      });
    }

    if (_tanController.text.isEmpty) {
      setState(() {
        _tanError = 'TAN is required';
      });
      isValid = false;
    } else {
      setState(() {
        _tanError = null;
      });
    }

    if (_contactNumberController.text.isEmpty) {
      setState(() {
        _contactNumberError = 'Contact Number is required';
      });
      isValid = false;
    } else {
      setState(() {
        _contactNumberError = null;
      });
    }

    if (_emailController.text.isEmpty) {
      setState(() {
        _emailError = 'Email is required';
      });
      isValid = false;
    } else {
      setState(() {
        _emailError = null;
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
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
              width: 50,
            ),
            SizedBox(
              height: 50,
              child: IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                  
                },
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Edit Basic Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF663274),
                ),
              ),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Company Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _companyNameController,
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
                    hintText: 'Enter your company name',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _companyNameError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
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
                    hintText: 'Enter the type',
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
                  'PAN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _panController,
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
                    hintText: 'Enter PAN number',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _panError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'TAN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _tanController,
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
                    hintText: 'Enter TAN number',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _tanError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Contact Number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _contactNumberController,
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
                    hintText: 'Enter your contact number',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _contactNumberError,
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
                     enabledBorder: OutlineInputBorder(
      borderRadius: BorderRadius.circular(8.0),
      borderSide: const BorderSide(color: Color(0xFF663274)), 
    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                    hintText: 'Enter your email',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _emailError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 30),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  if (_validateFields()) {
                    Navigator.pushNamed(context, companyProfileRoute);
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
