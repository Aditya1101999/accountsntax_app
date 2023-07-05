// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class AddPartnerDetailsScreen extends StatefulWidget {
  const AddPartnerDetailsScreen({Key? key}) : super(key: key);

  @override
  _AddPartnerDetailsScreenState createState() =>
      _AddPartnerDetailsScreenState();
}

class _AddPartnerDetailsScreenState extends State<AddPartnerDetailsScreen> {
  late  TextEditingController _idController;
  late TextEditingController _nameController;
  late TextEditingController _addoneController;
  late  TextEditingController _addtwoController;
  late  TextEditingController _pincodeController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;
  late TextEditingController _countryController;
  late TextEditingController _dobController;
  late TextEditingController _emailController;
  late TextEditingController _contactController;
  late TextEditingController _pabController;
  late TextEditingController _dinController;
  late TextEditingController _aadharController;
  late TextEditingController _digitalPasswordController;
  late TextEditingController _digitalExpiryController;
  late TextEditingController _panFileController;
  late TextEditingController _aadharFileController;

  String? _idError;
  String? _nameError;
  String? _addoneError;
  String? _addtwoError;
  String? _pincodeError;
  String? _cityError;
  String? _stateError;
  String? _countryError;
  String? _dobError;
  String? _emailError;
  String? _contactError;
  String? _pabError;
  String? _dinError;
  String? _aadharError;
  String? _digPassError;
  String? _digExpiryError;
  String? _panFileError;
  String? _aadharFileError;

  @override
  void initState() {
    super.initState();
   _idController = TextEditingController();
   _nameController = TextEditingController();
   _addoneController = TextEditingController();
   _addtwoController = TextEditingController();
   _pincodeController = TextEditingController();
   _cityController = TextEditingController();
   _stateController = TextEditingController();
   _countryController = TextEditingController();
   _dobController = TextEditingController();
   _emailController = TextEditingController();
   _contactController = TextEditingController();
   _pabController = TextEditingController();
   _dinController = TextEditingController();
   _aadharController = TextEditingController();
   _digitalPasswordController =TextEditingController();
   _digitalExpiryController =TextEditingController();
   _panFileController = TextEditingController();
   _aadharFileController = TextEditingController();
  }
  @override
  void dispose() {
   _idController.dispose();
   _nameController.dispose();
   _addoneController.dispose();
   _addtwoController.dispose();
   _pincodeController.dispose();
   _cityController.dispose();
   _stateController.dispose();
   _countryController.dispose();
   _dobController.dispose();
   _emailController.dispose();
   _contactController.dispose();
   _pabController.dispose();
   _dinController.dispose();
   _aadharController.dispose();
   _digitalPasswordController.dispose();
   _digitalExpiryController.dispose();
   _panFileController.dispose();
   _aadharFileController.dispose();
   super.dispose();
  }

  bool _validateFields() {
    bool isValid = true;

    if (_idController.text.isEmpty) {
      setState(() {
        _idError = 'ID is required';
      });
      isValid = false;
    } else {
      setState(() {
        _idError = null;
      });
    }

    if (_nameController.text.isEmpty) {
      setState(() {
        _nameError = 'Name is required';
      });
      isValid = false;
    } else {
      setState(() {
        _nameError = null;
      });
    }

    if (_addoneController.text.isEmpty) {
      setState(() {
        _addoneError = 'Address Line 1 is required';
      });
      isValid = false;
    } else {
      setState(() {
        _addoneError = null;
      });
    }

    if (_addtwoController.text.isEmpty) {
      setState(() {
        _addtwoError = 'Address Line 2 is required';
      });
      isValid = false;
    } else {
      setState(() {
        _addtwoError = null;
      });
    }

    if (_pincodeController.text.isEmpty) {
      setState(() {
        _pincodeError = 'Pincode is required';
      });
      isValid = false;
    } else {
      setState(() {
        _pincodeError = null;
      });
    }

    if (_cityController.text.isEmpty) {
      setState(() {
        _cityError = 'City is required';
      });
      isValid = false;
    } else {
      setState(() {
        _cityError = null;
      });
    }
    if (_stateController.text.isEmpty) {
      setState(() {
        _stateError = 'State is required';
      });
      isValid = false;
    } else {
      setState(() {
        _stateError = null;
      });
    }

    if (_countryController.text.isEmpty) {
      setState(() {
        _countryError = 'Country is required';
      });
      isValid = false;
    } else {
      setState(() {
        _countryError = null;
      });
    }

    if (_dobController.text.isEmpty) {
      setState(() {
        _dobError = 'DOB is required';
      });
      isValid = false;
    } else {
      setState(() {
        _dobError = null;
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

    if (_contactController.text.isEmpty) {
      setState(() {
        _contactError = 'Contact No. is required';
      });
      isValid = false;
    } else {
      setState(() {
        _contactError = null;
      });
    }

    if (_pabController.text.isEmpty) {
      setState(() {
        _pabError = 'PAB is required';
      });
      isValid = false;
    } else {
      setState(() {
        _pabError = null;
      });
    }
    if (_dinController.text.isEmpty) {
      setState(() {
        _dinError = 'DIN is required';
      });
      isValid = false;
    } else {
      setState(() {
        _dinError = null;
      });
    }

    if (_aadharController.text.isEmpty) {
      setState(() {
        _aadharError = 'Aadhar is required';
      });
      isValid = false;
    } else {
      setState(() {
        _aadharError = null;
      });
    }

    if (_digitalPasswordController.text.isEmpty) {
      setState(() {
        _digPassError = 'Digital Paaword is required';
      });
      isValid = false;
    } else {
      setState(() {
        _digPassError = null;
      });
    }

    if (_digitalExpiryController.text.isEmpty) {
      setState(() {
        _digExpiryError = 'Digital Expiry Date is required';
      });
      isValid = false;
    } else {
      setState(() {
        _digExpiryError = null;
      });
    }

    if (_panFileController.text.isEmpty) {
      setState(() {
        _panFileError = 'PAN File is required';
      });
      isValid = false;
    } else {
      setState(() {
        _panFileError = null;
      });
    }
    if (_aadharFileController.text.isEmpty) {
      setState(() {
        _aadharFileError = 'Aadhar File is required';
      });
      isValid = false;
    } else {
      setState(() {
        _aadharFileError = null;
      });
    }

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: SingleChildScrollView(
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
              const Center(
                child: Text(
                  'Add a Partner',
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
                    '_id',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _idController,
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
                      hintText: 'Enter ID',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _idError,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Name',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _nameController,
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
                      hintText: 'Enter Name',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _nameError,
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
                    controller: _addoneController,
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
                      errorText: _addoneError,
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
                    controller: _addtwoController,
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
                      errorText: _addtwoError,
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
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'DOB',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _dobController,
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
                      hintText: 'Enter DOB',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _dobError,
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
                      hintText: 'Enter Email',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _emailError,
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
                    controller: _contactController,
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
                      hintText: 'Enter Contact No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _contactError,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'PAB ',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _pabController,
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
                      hintText: 'Enter PAB',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _pabError,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'DIN',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _dinController,
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
                      hintText: 'Enter DIN',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _dinError,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Aadhar',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _aadharController,
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
                      hintText: 'Enter Aadhar No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _aadharError,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Digital Signature Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _digitalPasswordController,
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
                      hintText: 'Enter Digital Signature Password',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _digPassError,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Digital Signature Expiry Date',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _digitalExpiryController,
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
                      hintText: 'Enter Digital Signature Expiry Date',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _digExpiryError,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'PAN File',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _panFileController,
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
                      hintText: 'Enter PAN File',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _panFileError,
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 12),
              Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  const Text(
                    'Aadhar File',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _aadharFileController,
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
                      hintText: 'Enter Aadhar File',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _aadharFileError,
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
      ),
    );
  }
}
