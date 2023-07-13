// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AddInvoiceItemScreen extends StatefulWidget {
  const AddInvoiceItemScreen({Key? key}) : super(key: key);

  @override
  _AddInvoiceItemScreenState createState() => _AddInvoiceItemScreenState();
}

class _AddInvoiceItemScreenState extends State<AddInvoiceItemScreen> {
  late TextEditingController _hsnController;
  late TextEditingController _quantityController;
  late TextEditingController _rateController;
  late TextEditingController _taxController;
  late TextEditingController _discountController;
  late TextEditingController _openingRateController;
  late TextEditingController _descriptionController;
  String? _selectedItemsOption;
  String? _hsnError = '';
  String? _quantityError = '';
  String? _rateError = '';
  String? _taxError = '';
  String? _discountError = '';
  String? _selectedItemError = '';
  String? _openingRateError = '';

  @override
  void initState() {
    super.initState();
    _hsnController = TextEditingController();
    _quantityController = TextEditingController();
    _rateController = TextEditingController();
    _taxController = TextEditingController();
    _discountController = TextEditingController();
    _openingRateController = TextEditingController();
    _descriptionController = TextEditingController();
  }

  @override
  void dispose() {
    _hsnController.dispose();
    _quantityController.dispose();
    _rateController.dispose();
    _taxController.dispose();
    _discountController.dispose();
    _openingRateController.dispose();
    _descriptionController.dispose();
    super.dispose();
  }

  bool _validateFields() {
    bool isValid = true;

    if (_hsnController.text.isEmpty) {
      setState(() {
        _hsnError = 'Name is required';
      });
      isValid = false;
    } else {
      setState(() {
        _hsnError = '';
      });
    }

    if (_quantityController.text.isEmpty) {
      setState(() {
        _quantityError = 'HSN/SAC is required';
      });
      isValid = false;
    } else {
      setState(() {
        _quantityError = '';
      });
    }

    if (_rateController.text.isEmpty) {
      setState(() {
        _rateError = 'Rate is required';
      });
      isValid = false;
    } else {
      setState(() {
        _rateError = '';
      });
    }

    if (_taxController.text.isEmpty) {
      setState(() {
        _taxError = 'Unit is required';
      });
      isValid = false;
    } else {
      setState(() {
        _taxError = '';
      });
    }
    if (_discountController.text.isEmpty) {
      setState(() {
        _discountError = 'Opening Quantity is required';
      });
      isValid = false;
    } else {
      setState(() {
        _discountError = '';
      });
    }
    if (_openingRateController.text.isEmpty) {
      setState(() {
        _openingRateError = 'Opening Rate is required';
      });
      isValid = false;
    } else {
      setState(() {
        _openingRateError = '';
      });
    }
    if (_selectedItemsOption == null) {
      setState(() {
        _selectedItemError = 'Select UOM';
      });
      isValid = false;
    } else {
      setState(() {
        _selectedItemError = null;
      });
      isValid = true;
    }

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16.0),
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
                icon: const Icon(
                  Icons.arrow_back,
                  color: Color(0xFF663274),
                ),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
            ),
            const Center(
              child: Text(
                'Add Item',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF663274),
                ),
              ),
            ),
            const SizedBox(height: 30),
            const Text(
              'Name',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _hsnController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                hintText: 'Enter Item Name',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _hsnError,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'HSN/SAC',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _quantityController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                hintText: 'Enter HSN/SAC',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _quantityError,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Unit',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _taxController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                hintText: 'Enter Unit',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _taxError,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Rate',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _rateController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                hintText: 'Enter Rate',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _rateError,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Opening Quantity',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _discountController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                hintText: 'Enter Opening Quantity',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _discountError,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Opening Rate',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _openingRateController,
              decoration: InputDecoration(
                filled: true,
                fillColor: Colors.white,
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                errorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                focusedErrorBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 16.0,
                  vertical: 12.0,
                ),
                hintText: 'Enter Opening Rate',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _openingRateError,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'UOM',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
            const SizedBox(height: 5),
            DropdownButtonFormField<String>(
              value: _selectedItemsOption,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedItemsOption = newValue;
                });
              },
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
                hintText: 'Select an option',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorStyle: const TextStyle(
                  color: Colors.red,
                ),
              ),
              items: const [
                DropdownMenuItem<String>(
                  value: 'item1',
                  child: Text('NOS'),
                ),
                DropdownMenuItem<String>(
                  value: 'item2',
                  child: Text('PCS'),
                ),
                DropdownMenuItem<String>(
                  value: 'item3',
                  child: Text('PRS'),
                ),
              ],
            ),
            if (_selectedItemError != null)
              Row(children: [
                const SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    _selectedItemError!,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ]),
            const SizedBox(height: 5),
            const Text(
              'Description',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _descriptionController,
              decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  enabledBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xFF663274)),
                  ),
                  errorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xFF663274)),
                  ),
                  focusedErrorBorder: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(8.0),
                    borderSide: const BorderSide(color: Color(0xFF663274)),
                  ),
                  contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0,
                    vertical: 12.0,
                  ),
                  hintText: 'Enter Description',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  )),
            ),
            const SizedBox(height: 20),
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
                  backgroundColor: const Color(0xFFEA7B0C),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(8.0),
                  ),
                ),
                child: const Padding(
                  padding: EdgeInsets.all(16.0),
                  child: Text(
                    'Save',
                    style: TextStyle(
                      fontSize: 22,
                    ),
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
