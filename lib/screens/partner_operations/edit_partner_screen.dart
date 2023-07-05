// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class EditPartnerDetailsScreen extends StatefulWidget {
  const EditPartnerDetailsScreen({Key? key}) : super(key: key);

  @override
  _EditPartnerDetailsScreenState createState() =>
      _EditPartnerDetailsScreenState();
}

class _EditPartnerDetailsScreenState extends State<EditPartnerDetailsScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addoneController = TextEditingController();
  final TextEditingController _addtwoController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();
  final TextEditingController _stateController = TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _contactController = TextEditingController();
  final TextEditingController _pabController = TextEditingController();
  final TextEditingController _dinController = TextEditingController();
  final TextEditingController _aadharController = TextEditingController();
  final TextEditingController _digitalPasswordController =
      TextEditingController();
  final TextEditingController _digitalExpiryController =
      TextEditingController();
  final TextEditingController _panFileController = TextEditingController();
  final TextEditingController _aadharFileController = TextEditingController();

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
    // Set default values for each text field
    _idController.text = '648aefabd99df18c8e4664b4';
    _nameController.text = 'John Doe';
    _addoneController.text = '_';
    _addtwoController.text = '_';
    _pincodeController.text = '_';
    _cityController.text = '_';
    _stateController.text = '_';
    _countryController.text = 'IN';
    _dobController.text = '28-06-2023';
    _emailController.text = 'johndoe@example.com';
    _contactController.text = '+917392783922';
    _pabController.text = '_';
    _dinController.text = 'DIN123456d';
    _aadharController.text = '984656123248';
    _digitalPasswordController.text = '_';
    _digitalExpiryController.text = '_';
    _panFileController.text = '1686881591926.jpg';
    _aadharFileController.text = '1686881591926.jpg';
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
                  icon: const Icon(Icons.arrow_back,color:Color(0xFF663274)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'Edit Partner Details',
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
      ),
    );
  }
}
