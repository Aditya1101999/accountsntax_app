// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class EditBusinessDetailsScreen extends StatefulWidget {
  const EditBusinessDetailsScreen({Key? key}) : super(key: key);

  @override
  _EditBusinessDetailsScreenState createState() => _EditBusinessDetailsScreenState();
}

class _EditBusinessDetailsScreenState extends State<EditBusinessDetailsScreen> {
  final TextEditingController _panController = TextEditingController();
  final TextEditingController _nameAsPerPanController = TextEditingController();
  final TextEditingController _fatherNameController = TextEditingController();
  final TextEditingController _dobController = TextEditingController();
  final TextEditingController _linkedWithAadharController = TextEditingController();
  final TextEditingController _panFileController = TextEditingController();

  String? _panError;
  String? _nameAsPerPanError;
  String? _fatherNameError;
  String? _dobError;
  String? _linkedWithAadharError;
  String? _panFileError;

  @override
  void initState() {
    super.initState();
    // Set default values for each text field
    _panController.text = 'FIXRK1522Q';
    _nameAsPerPanController.text = 'Abhi nandan JAIN';
    _fatherNameController.text = 'Abhi nandan JAIN';
    _dobController.text = '2023-06-08';
    _linkedWithAadharController.text = 'TRUE';
    _panFileController.text = '1686881591926.jpg';
  }

  bool _validateFields() {
    bool isValid = true;

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

    if (_nameAsPerPanController.text.isEmpty) {
      setState(() {
        _nameAsPerPanError = 'Name as Per PAN is required';
      });
      isValid = false;
    } else {
      setState(() {
        _nameAsPerPanError = null;
      });
    }

    if (_fatherNameController.text.isEmpty) {
      setState(() {
        _fatherNameError = 'Father Name is required';
      });
      isValid = false;
    } else {
      setState(() {
        _fatherNameError = null;
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

    if (_linkedWithAadharController.text.isEmpty) {
      setState(() {
        _linkedWithAadharError = 'Linked With Aadhar is required';
      });
      isValid = false;
    } else {
      setState(() {
        _linkedWithAadharError = null;
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
                icon: const Icon(Icons.arrow_back,color:Color(0xFF663274)),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const SizedBox(height: 20),
            const Center(
              child: Text(
                'Edit Business Details',
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
                  'Name as Per PAN',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _nameAsPerPanController,
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
                    hintText: 'Enter Name as per PAN',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _nameAsPerPanError,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Father Name',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _fatherNameController,
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
                    hintText: 'Enter Father Name',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _fatherNameError,
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
                  'Linked With Aadhar',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _linkedWithAadharController,
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
                    hintText: 'Enter Linked With Aadhar',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorText: _linkedWithAadharError,
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

