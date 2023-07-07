// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class ViewInvoiceScreen extends StatefulWidget {
  const ViewInvoiceScreen({Key? key}) : super(key: key);

  @override
  _ViewInvoiceScreenState createState() => _ViewInvoiceScreenState();
}

class _ViewInvoiceScreenState extends State<ViewInvoiceScreen> {
  late TextEditingController _frequencyController;
  String? invoiceStatus;
  late TextEditingController _startDateController;
  late TextEditingController _endDateController;
  late TextEditingController _dueDateController;
  late TextEditingController _salesOrderNoController;
  late TextEditingController _salesQuotationNoController;
  bool _showSetRecurrenceFields = false;

  @override
  void initState() {
    super.initState();
    _frequencyController = TextEditingController();
    invoiceStatus = '';
    _startDateController = TextEditingController();
    _endDateController = TextEditingController();
    _dueDateController = TextEditingController();
    _salesOrderNoController = TextEditingController(text: '123456');
    _salesQuotationNoController = TextEditingController(text: '7890');
  }

  @override
  void dispose() {
    _frequencyController.dispose();
    _startDateController.dispose();
    _endDateController.dispose();
    _dueDateController.dispose();
    _salesOrderNoController.dispose();
    _salesQuotationNoController.dispose();
    super.dispose();
  }

  void _toggleSetRecurrenceFields() {
    setState(() {
      _showSetRecurrenceFields = !_showSetRecurrenceFields;
    });
  }

  bool _isDateValid(String input) {
    final dateFormat = RegExp(r'^\d{2}-\d{2}-\d{4}$');
    if (!dateFormat.hasMatch(input)) {
      return false;
    }
    final parts = input.split('-');
    final day = int.tryParse(parts[0]);
    final month = int.tryParse(parts[1]);
    final year = int.tryParse(parts[2]);
    if (day == null || month == null || year == null) {
      return false;
    }
    if (day < 1 || day > 31 || month < 1 || month > 12 || year < 1900) {
      return false;
    }
    return true;
  }

  String? _validateDate(String? input) {
    if (input != null && input.isNotEmpty && !_isDateValid(input)) {
      return 'Invalid date format (dd-mm-yyyy)';
    }
    return null;
  }

  String? _validateRequired(String? input) {
    if (input == null || input.isEmpty) {
      return 'This Field is Mandatory.';
    }
    return null;
  }

  bool _validateFields() {
    if (_showSetRecurrenceFields) {
      if (!_isDateValid(_startDateController.text)) {
        return false;
      }
      if (!_isDateValid(_endDateController.text)) {
        return false;
      }
    }
    if (!_isDateValid(_dueDateController.text)) {
      return false;
    }
    return true;
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
              const SizedBox(height: 24),
              SizedBox(
                height: 50,
                width: 50,
                child: IconButton(
                  icon: const Icon(Icons.arrow_back, color: Color(0xFF663274)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
              ),
              const SizedBox(height: 20),
              const Center(
                child: Text(
                  'View Invoice',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 28,
                    color: Color(0xFF663274),
                  ),
                ),
              ),
              const SizedBox(height: 20),
              TextButton(
                onPressed: _toggleSetRecurrenceFields,
                child: const Text(
                  'Set Recurrence',
                  style: TextStyle(
                    color: Color(0xFF663274),
                  ),
                ),
              ),
              if (_showSetRecurrenceFields) ...[
                const SizedBox(height: 20),
                const Text(
                  'Frequency',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: _frequencyController,
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
                    hintText: 'Enter Frequency',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                    errorStyle: const TextStyle(
                      color: Colors.red,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'New Invoice Status',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                DropdownButtonFormField<String>(
                  hint: const Text('Select Mode of Invoice'),
                  onChanged: (value) {
                    setState(() {
                      invoiceStatus = value!;
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
                      value: 'option1',
                      child: Text('Option 1'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'option2',
                      child: Text('Option 2'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'option3',
                      child: Text('Option 3'),
                    ),
                    DropdownMenuItem<String>(
                      value: 'option4',
                      child: Text('Option 4'),
                    ),
                  ],
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Start Date',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
                            controller: _startDateController,
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
                              hintText: 'dd-mm-yyyy',
                              suffixIcon: const Icon(
                                Icons.calendar_today,
                                color: Color(0xFF663274),
                              ),
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                              errorStyle: const TextStyle(
                                color: Colors.red,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(width: 10),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'End Date',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color.fromRGBO(102, 50, 116, 1),
                            ),
                          ),
                          const SizedBox(height: 5),
                          TextFormField(
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
                              hintText: 'dd-mm-yyyy',
                              suffixIcon: const Icon(
                                Icons.calendar_today,
                                color: Color(0xFF663274),
                              ),
                              hintStyle: const TextStyle(
                                color: Colors.grey,
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ],
              const SizedBox(height: 20),
              const Text(
                'Due Date',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF663274),
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _dueDateController,
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
                  hintText: 'dd-mm-yyyy',
                  suffixIcon: const Icon(
                    Icons.calendar_today,
                    color: Color(0xFF663274),
                  ),
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  errorStyle: const TextStyle(
                    color: Colors.red,
                  ),
                  errorText: _validateDate(_dueDateController.text),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Sales Order No.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF663274),
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _salesOrderNoController,
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
                  hintText: 'Enter Sales Order No.',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  errorText: _validateRequired(_salesOrderNoController.text),
                  errorStyle: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 10),
              const Text(
                'Sales Quotation No.',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: Color(0xFF663274),
                ),
              ),
              const SizedBox(height: 5),
              TextFormField(
                controller: _salesQuotationNoController,
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
                  hintText: 'Enter Sales Quotation No.',
                  hintStyle: const TextStyle(
                    color: Colors.grey,
                  ),
                  errorText:
                      _validateRequired(_salesQuotationNoController.text),
                  errorStyle: const TextStyle(
                    color: Colors.red,
                  ),
                ),
              ),
              const SizedBox(height: 30),
              Center(
                child: ElevatedButton(
                  onPressed: () {
                    if (_validateFields()) {
                      Navigator.pop(context);
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(content: Text('Invoice Details Saved')),
                      );
                    }
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEA7B0C),
                    padding: const EdgeInsets.symmetric(
                      horizontal: 40,
                      vertical: 12,
                    ),
                  ),
                  child: const Text(
                    'Save',
                    style: TextStyle(fontSize: 18),
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
