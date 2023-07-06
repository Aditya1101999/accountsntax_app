// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class AddCustomerDetailsScreen extends StatefulWidget {
  const AddCustomerDetailsScreen({Key? key}) : super(key: key);

  @override
  _AddCustomerDetailsScreenState createState() =>
      _AddCustomerDetailsScreenState();
}

class _AddCustomerDetailsScreenState extends State<AddCustomerDetailsScreen> {
  late TextEditingController _idController;
  late TextEditingController _nameController;
  late TextEditingController _addoneController;
  late TextEditingController _addtwoController;
  late TextEditingController _pincodeController;
  late TextEditingController _cityController;
  late TextEditingController _stateController;
  late TextEditingController _countryController;
  late TextEditingController _dobController;
  late TextEditingController emailController;
  late TextEditingController _contactController;
  late TextEditingController _pabController;

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
  String? _selectedOption;

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
    emailController = TextEditingController();
    _contactController = TextEditingController();
    _pabController = TextEditingController();
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
    emailController.dispose();
    _contactController.dispose();
    _pabController.dispose();
    super.dispose();
  }

  bool _validateFields() {
    bool isValid = true;

    if (_idController.text.isEmpty) {
      setState(() {
        _idError = 'Party Name is required';
      });
      isValid = false;
    } else {
      setState(() {
        _idError = null;
      });
    }

    if (_nameController.text.isEmpty) {
      setState(() {
        _nameError = 'GSTIN is required';
      });
      isValid = false;
    } else {
      setState(() {
        _nameError = null;
      });
    }

    if (_addoneController.text.isEmpty) {
      setState(() {
        _addoneError = 'Name is required';
      });
      isValid = false;
    } else {
      setState(() {
        _addoneError = null;
      });
    }

    if (_addtwoController.text.isEmpty) {
      setState(() {
        _addtwoError = 'Address Line 1 is required';
      });
      isValid = false;
    } else {
      setState(() {
        _addtwoError = null;
      });
    }

    if (_pincodeController.text.isEmpty) {
      setState(() {
        _pincodeError = 'Address Line 2 is required';
      });
      isValid = false;
    } else {
      setState(() {
        _pincodeError = null;
      });
    }

    if (_cityController.text.isEmpty) {
      setState(() {
        _cityError = 'ZipCode is required';
      });
      isValid = false;
    } else {
      setState(() {
        _cityError = null;
      });
    }
    if (_stateController.text.isEmpty) {
      setState(() {
        _stateError = 'Country is required';
      });
      isValid = false;
    } else {
      setState(() {
        _stateError = null;
      });
    }

    if (_countryController.text.isEmpty) {
      setState(() {
        _countryError = 'State is required';
      });
      isValid = false;
    } else {
      setState(() {
        _countryError = null;
      });
    }

    if (_dobController.text.isEmpty) {
      setState(() {
        _dobError = 'City is required';
      });
      isValid = false;
    } else {
      setState(() {
        _dobError = null;
      });
    }

    if (_selectedOption == null) {
      setState(() {
        _emailError = 'Select Ledger Group';
      });
      isValid = false;
    } else {
      setState(() {
        _emailError = null;
      });
      isValid = true;
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
        _pabError = 'E-mail is required';
      });
      isValid = false;
    } else {
      setState(() {
        _pabError = null;
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
                  'Add Customer',
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
                    'Party Name',
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
                      hintText: 'Basic Usage',
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
                    'GSTIN',
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
                      hintText: 'GSTIN',
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
                    'Name as Per GSTIN',
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
                      hintText: 'Name as Per GSTIN',
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
                    'Address Line 1',
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
                      hintText: 'Address Line 1',
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
                    'Address Line 2',
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
                      hintText: 'Address Line 2',
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
                    'Zip Code',
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
                      hintText: 'Enter Zip Code',
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
                    'Country',
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
                      hintText: 'Enter Country',
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
                    'State',
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
                      hintText: 'Enter State',
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
                    'City',
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
                      hintText: 'Enter city',
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
                    'Ledger Group',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      DropdownButtonFormField<String>(
                        value: _selectedOption,
                        onChanged: (String? newValue) {
                          setState(() {
                            _selectedOption = newValue;
                          });
                        },
                        decoration: InputDecoration(
                          filled: true,
                          fillColor: Colors.white,
                          enabledBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.0),
                            borderSide:
                                const BorderSide(color: Color(0xFF663274)),
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 16.0,
                            vertical: 12.0,
                          ),
                          hintText: 'Select an option',
                          hintStyle: const TextStyle(
                            color: Colors.grey,
                          ),
                        ),
                        items: const [
                          DropdownMenuItem<String>(
                            value: 'current',
                            child: Text('Current'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'liability',
                            child: Text('Liability'),
                          ),
                          DropdownMenuItem<String>(
                            value: 'assets',
                            child: Text('Assets'),
                          ),
                        ],
                      ),
                      if (_emailError != null)
                        Row(children: [
                          const SizedBox(width: 15),
                          Padding(
                            padding: const EdgeInsets.only(top: 5.0),
                            child: Text(
                              _emailError!,
                              style: const TextStyle(
                                color: Colors.red,
                                fontSize: 12.0,
                              ),
                            ),
                          ),
                        ]),
                    ],
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
                    'E-mail Address',
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
                      hintText: 'Enter E-mail',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      errorText: _pabError,
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
                          content: Text('Added Successfully'),
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
