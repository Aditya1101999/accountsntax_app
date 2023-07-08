// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class AddItemScreen extends StatefulWidget {
  const AddItemScreen({Key? key}) : super(key: key);

  @override
  _AddItemScreenState createState() => _AddItemScreenState();
}

class _AddItemScreenState extends State<AddItemScreen> {
  late TextEditingController _hsnController;
  late TextEditingController _quantityController;
  late TextEditingController _rateController;
  late TextEditingController _taxController;
  late TextEditingController _discountController;
  String? _selectedItemsOption;
  String? _selectedSalesLedgerOption;
  String? _hsnError = '';
  String? _quantityError = '';
  String? _rateError = '';
  String? _taxError = '';
  String? _discountError = '';
  String? _selectedItemError = '';
  String? _selectedSalesLedgerError = '';

  @override
  void initState() {
    super.initState();
    _hsnController = TextEditingController();
    _quantityController = TextEditingController();
    _rateController = TextEditingController();
    _taxController = TextEditingController();
    _discountController = TextEditingController();
  }

  @override
  void dispose() {
    _hsnController.dispose();
    _quantityController.dispose();
    _rateController.dispose();
    _taxController.dispose();
    _discountController.dispose();
    super.dispose();
  }

  bool _validateFields() {
    bool isValid = true;

    if (_hsnController.text.isEmpty) {
      setState(() {
        _hsnError = 'HSN is required';
      });
      isValid = false;
    } else {
      setState(() {
        _hsnError = '';
      });
    }

    if (_quantityController.text.isEmpty) {
      setState(() {
        _quantityError = 'Quantity is required';
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
        _taxError = 'Tax is required';
      });
      isValid = false;
    } else {
      setState(() {
        _taxError = '';
      });
    }
    if (_discountController.text.isEmpty) {
      setState(() {
        _discountError = 'Discount is required';
      });
      isValid = false;
    } else {
      setState(() {
        _discountError = '';
      });
    }
    if (_selectedItemsOption == null) {
      setState(() {
        _selectedItemError = 'Select Item';
      });
      isValid = false;
    } else {
      setState(() {
        _selectedItemError = null;
      });
      isValid = true;
    }
    if (_selectedSalesLedgerOption == null) {
      setState(() {
        _selectedSalesLedgerError = 'Select Sales Ledger';
      });
      isValid = false;
    } else {
      setState(() {
        _selectedSalesLedgerError = null;
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
              'Items',
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
                  child: Text('Item 1'),
                ),
                DropdownMenuItem<String>(
                  value: 'item2',
                  child: Text('Item 2'),
                ),
                DropdownMenuItem<String>(
                  value: 'item3',
                  child: Text('Item 3'),
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
              'Sales Ledger',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
            const SizedBox(height: 5),
            DropdownButtonFormField<String>(
              value: _selectedSalesLedgerOption,
              onChanged: (String? newValue) {
                setState(() {
                  _selectedSalesLedgerOption = newValue;
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
                  value: 'ledger1',
                  child: Text('Ledger 1'),
                ),
                DropdownMenuItem<String>(
                  value: 'ledger2',
                  child: Text('Ledger 2'),
                ),
                DropdownMenuItem<String>(
                  value: 'ledger3',
                  child: Text('Ledger 3'),
                ),
              ],
            ),
            if (_selectedSalesLedgerError != null)
              Row(children: [
                const SizedBox(width: 15),
                Padding(
                  padding: const EdgeInsets.only(top: 5.0),
                  child: Text(
                    _selectedSalesLedgerError!,
                    style: const TextStyle(
                      color: Colors.red,
                      fontSize: 12.0,
                    ),
                  ),
                ),
              ]),
            const SizedBox(height: 5),
            const Text(
              'HSN',
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
                hintText: 'Enter HSN',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _hsnError,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Quantity',
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
                hintText: 'Enter Quantity',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _quantityError,
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
              'Tax',
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
                hintText: 'Enter Tax',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _taxError,
              ),
            ),
            const SizedBox(height: 5),
            const Text(
              'Discount',
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
                hintText: 'Enter Discount',
                hintStyle: const TextStyle(
                  color: Colors.grey,
                ),
                errorText: _discountError,
              ),
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
