// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class EditVaultDetailsScreen extends StatefulWidget {
  const EditVaultDetailsScreen({Key? key}) : super(key: key);

  @override
  _EditVaultDetailsScreenState createState() =>
      _EditVaultDetailsScreenState();
}

class _EditVaultDetailsScreenState extends State<EditVaultDetailsScreen> {
  final TextEditingController _idController = TextEditingController();
  final TextEditingController _nameController = TextEditingController();
  final TextEditingController _addoneController = TextEditingController();
  final TextEditingController _addtwoController = TextEditingController();
  final TextEditingController _pincodeController = TextEditingController();
  final TextEditingController _cityController = TextEditingController();

  String? _idError;
  String? _nameError;
  String? _addoneError;
  String? _addtwoError;
  String? _pincodeError;
  String? _cityError;

  @override
  void initState() {
    super.initState();
    // Set default values for each text field
    _idController.text = 'Income Tax';
    _nameController.text = 'ITR0012348';
    _addoneController.text = 'john06@gmail.com';
    _addtwoController.text = 'password';
    _pincodeController.text = 'Invalid Date';
    _cityController.text = '1687872035821.png';
  }
bool _validateFields() {
    bool isValid = true;

    if (_idController.text.isEmpty) {
      setState(() {
        _idError = 'Registration Type is required';
      });
      isValid = false;
    } else {
      setState(() {
        _idError = null;
      });
    }

    if (_nameController.text.isEmpty) {
      setState(() {
        _nameError = 'Registration No. is required';
      });
      isValid = false;
    } else {
      setState(() {
        _nameError = null;
      });
    }

    if (_addoneController.text.isEmpty) {
      setState(() {
        _addoneError = 'Username is required';
      });
      isValid = false;
    } else {
      setState(() {
        _addoneError = null;
      });
    }

    if (_addtwoController.text.isEmpty) {
      setState(() {
        _addtwoError = 'Password is required';
      });
      isValid = false;
    } else {
      setState(() {
        _addtwoError = null;
      });
    }

    if (_pincodeController.text.isEmpty) {
      setState(() {
        _pincodeError = 'Expriry Date is required';
      });
      isValid = false;
    } else {
      setState(() {
        _pincodeError = null;
      });
    }

    if (_cityController.text.isEmpty) {
      setState(() {
        _cityError = 'Certificate is required';
      });
      isValid = false;
    } else {
      setState(() {
        _cityError = null;
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
              const Center(
                child: Text(
                  'Edit Vault',
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
                    'Type of Registration',
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
                      hintText: 'Enter Registration Type',
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
                    'Regsitration Number',
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
                      hintText: 'Enter Registration No.',
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
                    'Username',
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
                      hintText: 'Enter Username',
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
                    'Password',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _addtwoController,
                    obscureText: true,
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
                      hintText: 'Enter Password',
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
                    'Expiry Date',
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
                      hintText: 'Enter Expiry Date',
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
                    'Certificate',
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
                      hintText: 'Upload Certificate',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _cityError,
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