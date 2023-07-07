// ignore_for_file: no_leading_underscores_for_local_identifiers, library_private_types_in_public_api

import 'package:flutter/material.dart';

class AddMoreDetailsScreen extends StatefulWidget {
  const AddMoreDetailsScreen({Key? key}) : super(key: key);

  @override
  _AddMoreDetailsScreenState createState() => _AddMoreDetailsScreenState();
}

class _AddMoreDetailsScreenState extends State<AddMoreDetailsScreen> {
  bool isDispatchOrderDetailsVisible = false;
  bool isExportDetailsVisible = false;
  bool isEBillDetailsVisible = false;
  bool isEinvoiceDetailsVisible = false;
  final TextEditingController _referenceNoController = TextEditingController();
  final TextEditingController _referenceDateController =
      TextEditingController();
  final TextEditingController _otherReferenceController =
      TextEditingController();
  final TextEditingController _purchaseOrderNoController =
      TextEditingController();
  final TextEditingController _purchaseOrderDateController =
      TextEditingController();
  final TextEditingController _termsOfPaymentController =
      TextEditingController();
  final TextEditingController _deliveryDocNoController =
      TextEditingController();
  final TextEditingController _dispatchDocDateController =
      TextEditingController();
  final TextEditingController _dispatchedDocNoController =
      TextEditingController();
  final TextEditingController _dispatchedThroughController =
      TextEditingController();
  final TextEditingController _destinationController = TextEditingController();
  final TextEditingController _termsOfDeliveryController =
      TextEditingController();
  final TextEditingController _eGMNoController = TextEditingController();
  final TextEditingController _shippingBillNoController =
      TextEditingController();
  final TextEditingController _shippingBillDateController =
      TextEditingController();
  final TextEditingController _portCodeController = TextEditingController();
  final TextEditingController _portLoadingController = TextEditingController();
  final TextEditingController _portDischargeController =
      TextEditingController();
  final TextEditingController _countryController = TextEditingController();
  final TextEditingController _placeOfRecieptController =
      TextEditingController();
  final TextEditingController _eBillController = TextEditingController();
  final TextEditingController _dateController = TextEditingController();
  final TextEditingController _distanceController = TextEditingController();
  final TextEditingController _dispatchFromController = TextEditingController();
  final TextEditingController _shipToController = TextEditingController();
  final TextEditingController _modeController = TextEditingController();
  final TextEditingController _transporterController = TextEditingController();
  final TextEditingController _transporterIDController =
      TextEditingController();
  final TextEditingController _vehicleController = TextEditingController();
  final TextEditingController _airwayController = TextEditingController();
  final TextEditingController _dispatchController = TextEditingController();
  final TextEditingController _shipController = TextEditingController();
  String? _referenceDateError;
  String? _purchaseOrderDateError;
  String? _dispatchDocDateError;
  String? _shippingBillDateError;
  String? _dateError;

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    _referenceNoController.dispose();
    _referenceDateController.dispose();
    _otherReferenceController.dispose();
    _purchaseOrderNoController.dispose();
    _purchaseOrderDateController.dispose();
    _termsOfPaymentController.dispose();
    _deliveryDocNoController.dispose();
    _dispatchDocDateController.dispose();
    _dispatchedDocNoController.dispose();
    _dispatchedThroughController.dispose();
    _destinationController.dispose();
    _termsOfDeliveryController.dispose();
    _eGMNoController.dispose();
    _shippingBillNoController.dispose();
    _shippingBillDateController.dispose();
    _portCodeController.dispose();
    _portLoadingController.dispose();
    _portDischargeController.dispose();
    _countryController.dispose();
    _placeOfRecieptController.dispose();
    _eBillController.dispose();
    _dateController.dispose();
    _distanceController.dispose();
    _dispatchFromController.dispose();
    _shipToController.dispose();
    _modeController.dispose();
    _transporterController.dispose();
    _transporterIDController.dispose();
    _vehicleController.dispose();
    _airwayController.dispose();
    _dispatchController.dispose();
    _shipController.dispose();
    super.dispose();
  }

  void toggleSetDisptachOrderFields() {
    setState(() {
      isDispatchOrderDetailsVisible = !isDispatchOrderDetailsVisible;
    });
  }

  void toggleSetExportFields() {
    setState(() {
      isExportDetailsVisible = !isExportDetailsVisible;
    });
  }

  void toggleSetEBillFields() {
    setState(() {
      isEBillDetailsVisible = !isEBillDetailsVisible;
    });
  }

  void toggleSetEInvoiceFields() {
    setState(() {
      isEinvoiceDetailsVisible = !isEinvoiceDetailsVisible;
    });
  }

  bool _isDateValid(String input) {
    final validFormat = RegExp(r'^\d{2}/\d{2}/\d{4}$');
    return validFormat.hasMatch(input) || input.isEmpty;
  }

  bool _validateFields() {
    bool isValid = true;

    if (!_isDateValid(_referenceDateController.text)) {
      setState(() {
        _referenceDateError = 'Invalid date format';
        isValid = false;
      });
    }
    if (!_isDateValid(_dispatchDocDateController.text)) {
      setState(() {
        _dispatchDocDateError = 'Invalid date format';
        isValid = false;
      });
    }
    if (!_isDateValid(_purchaseOrderDateController.text)) {
      setState(() {
        _purchaseOrderDateError = 'Invalid date format.';
        isValid = false;
      });
    }
    if (!_isDateValid(_shippingBillDateController.text)) {
      setState(() {
        _shippingBillDateError = 'Invalid date format';
        isValid = false;
      });
    }
    if (!_isDateValid(_dateController.text)) {
      setState(() {
        _dateError = 'Invalid date format';
        isValid = false;
      });
    }

    return isValid;
  }

  @override
  Widget build(BuildContext context) {
    void _showTermsAndConditionsDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            backgroundColor: const Color(0xFFF9E8E3),
            title: const Text(
              'Enter Terms and Conditions',
              style: TextStyle(color: Color(0xFF663274)),
            ),
            content: SizedBox(
              width: double.maxFinite,
              child: TextFormField(
                maxLines: null,
                decoration: const InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Terms and Conditions',
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEA7B0C),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Terms and Conditions updated'),
                    ),
                  );
                },
                child: const Text('Save'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    void _showNarrationDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Enter Narration',
                style: TextStyle(color: Color(0xFF663274))),
            backgroundColor: const Color(0xFFF9E8E3),
            content: SizedBox(
              width: double.maxFinite,
              child: TextFormField(
                maxLines: null,
                decoration: const InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    hintText: 'Narration'),
              ),
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEA7B0C),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Narration updated'),
                    ),
                  );
                },
                child: const Text('Save'),
              ),
              ElevatedButton(
                onPressed: () {
                  Navigator.pop(context);
                },
                child: const Text(
                  'Back',
                  style: TextStyle(
                    color: Colors.white,
                  ),
                ),
              ),
            ],
          );
        },
      );
    }

    return Scaffold(
        body: SingleChildScrollView(
            child: Padding(
      padding: const EdgeInsets.all(10),
      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.import_export_sharp,
                        color: Color(0xFFEA7A40),
                      ),
                      onPressed: () {
                        toggleSetDisptachOrderFields();
                      },
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text('Dispatch Order \n      Details'),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.travel_explore,
                        color: Color(0xFFEA7A40),
                      ),
                      onPressed: () {
                        toggleSetExportFields();
                      },
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text('Export \nDetails'),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.terminal_sharp,
                        color: Color(0xFFEA7A40),
                      ),
                      onPressed: () {
                        _showTermsAndConditionsDialog(context);
                      },
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text('Terms and \nConditions'),
                ],
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.receipt,
                        color: Color(0xFFEA7A40),
                      ),
                      onPressed: () {
                        toggleSetEBillFields();
                      },
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text('E-way Bill\nDetails'),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.document_scanner,
                        color: Color(0xFFEA7A40),
                      ),
                      onPressed: () {
                        toggleSetEInvoiceFields();
                      },
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text('E-invoice\n  Details'),
                ],
              ),
              Column(
                children: [
                  Container(
                    width: 100,
                    decoration: BoxDecoration(
                      color: Colors.white,
                      shape: BoxShape.rectangle,
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                    padding: const EdgeInsets.all(12.0),
                    child: IconButton(
                      icon: const Icon(
                        Icons.book,
                        color: Color(0xFFEA7A40),
                      ),
                      onPressed: () {
                        _showNarrationDialog(context);
                      },
                    ),
                  ),
                  const SizedBox(height: 8.0),
                  const Text('Narration\n'),
                ],
              ),
            ],
          ),
        ),
        if (isDispatchOrderDetailsVisible) ...[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Center(
                    child: Text(
                      'Dispatch Order Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color(0xFF663274),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Reference No.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _referenceNoController,
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
                      hintText: 'Enter Reference No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Reference Date',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _referenceDateController,
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
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Color(0xFF663274),
                        ),
                        onPressed: () {
                          // Handle date selection
                        },
                      ),
                      errorText: _referenceDateError,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Other Reference',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _otherReferenceController,
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
                      hintText: 'Enter Other Reference',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Purchase Order No.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _purchaseOrderNoController,
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
                      hintText: 'Enter Purchase Order No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Purchase Order Date',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _purchaseOrderDateController,
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
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Color(0xFF663274),
                        ),
                        onPressed: () {
                          // Handle date selection
                        },
                      ),
                      errorText: _purchaseOrderDateError,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Terms of Payment',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _termsOfPaymentController,
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
                      hintText: 'Enter Terms of Payment',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Delivery Doc No.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _deliveryDocNoController,
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
                      hintText: 'Enter Delivery Doc No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Dispatch Doc Date',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _dispatchDocDateController,
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
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Color(0xFF663274),
                        ),
                        onPressed: () {
                          // Handle date selection
                        },
                      ),
                      errorText: _dispatchDocDateError,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Dispatched Doc No.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _dispatchedDocNoController,
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
                      hintText: 'Enter Dispatched Doc No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Dispatched Through',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _dispatchedThroughController,
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
                      hintText: 'Enter Dispatched Through',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Destination',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _destinationController,
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
                      hintText: 'Enter Destination',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Terms of Delivery',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _termsOfDeliveryController,
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
                      hintText: 'Enter Terms of Delivery',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_validateFields()) {
                          toggleSetDisptachOrderFields();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Submitted Successfully'),
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
                        'Submit',
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
        ],
        if (isExportDetailsVisible) ...[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Center(
                    child: Text(
                      'Export Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color(0xFF663274),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'EGM No.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _eGMNoController,
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
                      hintText: 'Enter EGM No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Shipping Bill No.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _shippingBillNoController,
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
                      hintText: 'Enter Shipping Bill No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Shipping Bill Date',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _shippingBillDateController,
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
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Color(0xFF663274),
                        ),
                        onPressed: () {
                          // Handle date selection
                        },
                      ),
                      errorText: _shippingBillDateError,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Port Code',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _portCodeController,
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
                      hintText: 'Enter Port Code',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Port of Loading',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _portLoadingController,
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
                      hintText: 'Enter Port of Loading',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Post of Discharge',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _portDischargeController,
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
                      hintText: 'Enter Port of Discharge',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Country To',
                    style: TextStyle(
                      fontSize: 16,
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
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Place of Reciept by Shipper',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _placeOfRecieptController,
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
                      hintText: 'Enter place of Reciept',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_validateFields()) {
                          toggleSetExportFields();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Submitted Successfully'),
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
                        'Submit',
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
        ],
        if (isEBillDetailsVisible) ...[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Center(
                    child: Text(
                      'E-way Bill Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color(0xFF663274),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'e-Way Bill No.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _eBillController,
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
                      hintText: 'Enter e-Way Bill No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Date',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _dateController,
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
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                      suffixIcon: IconButton(
                        icon: const Icon(
                          Icons.calendar_today,
                          color: Color(0xFF663274),
                        ),
                        onPressed: () {
                          // Handle date selection
                        },
                      ),
                      errorText: _dateError,
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Distance(in KM)',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _distanceController,
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
                      hintText: 'Enter distance',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Dispatch From',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _dispatchFromController,
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
                      hintText: 'Enter Dispatch From',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Ship To',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _shipToController,
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
                      hintText: 'Enter Ship To',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Mode',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _modeController,
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
                      hintText: 'Enter Mode',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Transporter Name',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _transporterController,
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
                      hintText: 'Enter Transporter Name',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Transporter ID',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _transporterIDController,
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
                      hintText: 'Enter Transporter ID',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Vehicle No.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _vehicleController,
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
                      hintText: 'Enter Vehicle No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Doc/Lading/RR/AirWay No.',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _airwayController,
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
                      hintText: 'Enter Doc/Lading/RR/AirWay No.',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_validateFields()) {
                          toggleSetEBillFields();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Submitted Successfully'),
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
                        'Submit',
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
        ],
        if (isEinvoiceDetailsVisible) ...[
          SingleChildScrollView(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(height: 50),
                  const Center(
                    child: Text(
                      'E-Invoice Details',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 28,
                        color: Color(0xFF663274),
                      ),
                    ),
                  ),
                  const SizedBox(height: 20),
                  const Text(
                    'Dispatch From',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _dispatchController,
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
                      hintText: 'Enter Dispatch From',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 12),
                  const Text(
                    'Ship To',
                    style: TextStyle(
                      fontSize: 16,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                  const SizedBox(height: 5),
                  TextFormField(
                    controller: _shipController,
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
                      hintText: 'Enter Ship To',
                      hintStyle: const TextStyle(
                        color: Colors.grey,
                      ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  Center(
                    child: ElevatedButton(
                      onPressed: () {
                        if (_validateFields()) {
                          toggleSetEInvoiceFields();
                          ScaffoldMessenger.of(context).showSnackBar(
                            const SnackBar(
                              content: Text('Submitted Successfully'),
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
                        'Submit',
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
        ]
      ]),
    )));
  }
}
