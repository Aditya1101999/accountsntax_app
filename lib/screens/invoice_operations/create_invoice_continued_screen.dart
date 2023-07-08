// ignore_for_file: library_private_types_in_public_api

import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

class InvoiceContinuedScreen extends StatefulWidget {
  final String? voucherType;

  const InvoiceContinuedScreen({super.key, required this.voucherType});

  @override
  _InvoiceContinuedScreenState createState() => _InvoiceContinuedScreenState();
}

class _InvoiceContinuedScreenState extends State<InvoiceContinuedScreen> {
  String? selectedCustomer;
  String? invoiceStatus;
  final TextEditingController _invoiceNoController = TextEditingController();
  bool _showTaxLedgerFields = false;
  bool _showAdditionalChargesFields = false;

  void _toggleTaxLedgerFields() {
    setState(() {
      _showTaxLedgerFields = !_showTaxLedgerFields;
    });
  }

  void _toggleAdditionalChargesFields() {
    setState(() {
      _showAdditionalChargesFields = !_showAdditionalChargesFields;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(height: 24),
              Row(
                children: [
                  IconButton(
                    icon: const Icon(Icons.arrow_back),
                    color: const Color(0xFF663274),
                    onPressed: () {
                      Navigator.pop(context);
                    },
                  ),
                  const SizedBox(width: 20),
                  Text(
                    'Create ${widget.voucherType}',
                    style: const TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274),
                    ),
                  ),
                ],
              ),
              Center(
                child: Text(
                  _getCurrentDate(),
                  style: const TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                      color: Color(0xFF663274)),
                ),
              ),
              const SizedBox(height: 16),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('  Is it an optional voucher?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(width: 10),
                    OptionalVoucherCheckbox(),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Align(
                alignment: Alignment.centerLeft,
                child: Row(
                  children: [
                    const Text(
                      'Customer Name',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        color: Color(0xFF663274),
                      ),
                    ),
                    const Spacer(),
                    GestureDetector(
                      onTap: () {
                        setState(() {
                          Navigator.pushNamed(context, addCustomerRoute);
                        });
                      },
                      child: const Row(
                        children: [
                          Icon(
                            Icons.add,
                            color: Color(0xFFEA7B0C),
                          ),
                          Text(
                            'Add New',
                            style: TextStyle(
                                color: Color(0xFFEA7B0C),
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      hint: const Text("Select Customer"),
                      value: selectedCustomer,
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'Option 1',
                          child: Text('Option 1'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Option 2',
                          child: Text('Option 2'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Option 3',
                          child: Text('Option 3'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Option 4',
                          child: Text('Option 4'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedCustomer = value!;
                        });
                      },
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                      ),
                    ),
                  ),
                  Container(
                    height: 46,
                    width: 40,
                    decoration: const BoxDecoration(color: Color(0xFFEA7B0C)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, editCustomerRoute);
                      },
                      child: const Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Text(
                    'Consignee Name',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFF663274)),
                  ),
                ]),
              ),
              const SizedBox(height: 5),
              Row(
                children: [
                  Expanded(
                    child: DropdownButtonFormField<String>(
                      hint: const Text("Select Consignee"),
                      value: selectedCustomer,
                      items: const [
                        DropdownMenuItem<String>(
                          value: 'Option 1',
                          child: Text('Option 1'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Option 2',
                          child: Text('Option 2'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Option 3',
                          child: Text('Option 3'),
                        ),
                        DropdownMenuItem<String>(
                          value: 'Option 4',
                          child: Text('Option 4'),
                        ),
                      ],
                      onChanged: (value) {
                        setState(() {
                          selectedCustomer = value!;
                        });
                      },
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                            horizontal: 16.0, vertical: 12.0),
                      ),
                    ),
                  ),
                  Container(
                    height: 46,
                    width: 40,
                    decoration: const BoxDecoration(color: Color(0xFFEA7B0C)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, editCustomerRoute);
                      },
                      child: const Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              const Align(
                alignment: Alignment.centerLeft,
                child: Row(children: [
                  Text(
                    'Invoice Number',
                    style: TextStyle(
                        fontWeight: FontWeight.bold, color: Color(0xFF663274)),
                  ),
                ]),
              ),
              const SizedBox(height: 5),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Expanded(
                    child: TextFormField(
                      controller: _invoiceNoController,
                      decoration: const InputDecoration(
                        filled: true,
                        fillColor: Colors.white,
                        contentPadding: EdgeInsets.symmetric(
                          horizontal: 16.0,
                          vertical: 12.0,
                        ),
                        hintText: 'Enter invoice number',
                        hintStyle: TextStyle(
                          color: Colors.grey,
                        ),
                      ),
                    ),
                  ),
                  Container(
                    height: 46,
                    width: 40,
                    decoration: const BoxDecoration(color: Color(0xFFEA7B0C)),
                    child: InkWell(
                      onTap: () {
                        Navigator.pushNamed(context, viewInvoiceRoute);
                      },
                      child: const Icon(
                        Icons.visibility,
                        color: Colors.white,
                      ),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Container(
                        color: const Color(0xFFF9E8E3),
                        child: Row(
                          children: [
                            const Text(
                              'Items',
                              style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Color(0xFF663274),
                              ),
                            ),
                            const SizedBox(width: 230),
                            GestureDetector(
                              onTap: () {
                                setState(() {
                                  Navigator.pushNamed(context, addItemRoute);
                                });
                              },
                              child: const Row(
                                children: [
                                  Icon(
                                    Icons.add,
                                    color: Color(0xFFEA7B0C),
                                  ),
                                  Text(
                                    'Add Item',
                                    style: TextStyle(
                                        color: Color(0xFFEA7B0C),
                                        fontWeight: FontWeight.bold),
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                  ListView(
                    padding: const EdgeInsets.all(8.0),
                    shrinkWrap: true,
                    physics: const NeverScrollableScrollPhysics(),
                    children: [
                      ListTile(
                        onTap: () {
                          // handle item tap
                        },
                        title: const Text(
                          'SNS00042 / 360 - \nBlue & White - White                      25000',
                        ),
                        subtitle: const Text('Qty 25@125'),
                      ),
                      const Divider(color: Color(0xFFEA7A40)),
                      ListTile(
                        onTap: () {
                          // handle item tap
                        },
                        title: const Text(
                          'SNS00042 / 360 - \nBlue & White - White                      25000',
                        ),
                        subtitle: const Text('Qty 25@125'),
                      ),
                      const Divider(color: Color(0xFFEA7A40)),
                      ListTile(
                        onTap: () {
                          // handle item tap
                        },
                        title: const Text(
                          'SNS00042 / 360 - \nBlue & White - White                      25000',
                        ),
                        subtitle: const Text('Qty 25@125'),
                      ),
                    ],
                  ),
                ],
              ),
              Row(children: [
                TextButton(
                  onPressed: _toggleTaxLedgerFields,
                  child: const Text(
                    'Tax Ledgers',
                    style: TextStyle(
                        color: Color(0xFFEA7B0C), fontWeight: FontWeight.bold),
                  ),
                ),
                const SizedBox(width: 100),
                TextButton(
                  onPressed: _toggleAdditionalChargesFields,
                  child: const Text('Additional Charges',
                      style: TextStyle(
                          color: Color(0xFFEA7B0C),
                          fontWeight: FontWeight.bold)),
                ),
              ]),
              if (_showTaxLedgerFields) ...[
                const SizedBox(height: 20),
                const Text(
                  'Type of Charge',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
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
                    hintText: 'Charge Type',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Select Ledger',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                DropdownButtonFormField<String>(
                  hint: const Text('Select Ledgers'),
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
                const Text(
                  'Rate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
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
                    hintText: 'Enter Rate',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                Row(
                  children: [
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            'Amount',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
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
                              hintText: 'Enter Amount',
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
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      _toggleTaxLedgerFields();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Tax Ledger Details Saved')),
                      );
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
              if (_showAdditionalChargesFields) ...[
                const SizedBox(height: 20),
                const Text(
                  'Type of Charge',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
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
                    hintText: 'Charge Type',
                    hintStyle: const TextStyle(
                      color: Colors.grey,
                    ),
                  ),
                ),
                const SizedBox(height: 10),
                const Text(
                  'Select Ledgers',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                DropdownButtonFormField<String>(
                  hint: const Text('Select Ledgers'),
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
                    hintText: 'Select Ledger',
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
                            'Amount',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: Color(0xFF663274),
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
                              hintText: 'Enter Amount',
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
                const SizedBox(height: 30),
                Center(
                  child: ElevatedButton(
                    onPressed: () {
                      _toggleAdditionalChargesFields();
                      ScaffoldMessenger.of(context).showSnackBar(
                        const SnackBar(
                            content: Text('Additonal Charges Saved')),
                      );
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
              const SizedBox(height: 20),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                      'Do you want to generate E-way Bill ?',
                      style:
                          TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
                    ),
                    SizedBox(
                      width: 10,
                    ),
                    OptionalVoucherCheckbox(),
                  ],
                ),
              ),
              const SizedBox(height: 5),
              const Center(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text('Do you want to generate E-Invoice ?',
                        style: TextStyle(
                            fontSize: 16, fontWeight: FontWeight.bold)),
                    SizedBox(
                      width: 10,
                    ),
                    OptionalVoucherCheckbox(),
                  ],
                ),
              ),
              const SizedBox(height: 12),
              Row(children: [
                ElevatedButton(
                  onPressed: () {
                    Navigator.pushNamed(context, addMoreDetailsRoute);
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
                      'Add More',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
                const SizedBox(width: 20),
                SizedBox(
                  width: 165,
                  child: ElevatedButton(
                    onPressed: () {
                      // Perform save logic
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
              ]),
              const SizedBox(height: 16),
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {
                    // Perform save logic
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFF663274),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Padding(
                    padding: EdgeInsets.all(16.0),
                    child: Text(
                      'Submit & Share',
                      style: TextStyle(
                        fontSize: 22,
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  String _getCurrentDate() {
    return DateTime.now().toString().split(' ')[0];
  }
}

class OptionalVoucherCheckbox extends StatefulWidget {
  const OptionalVoucherCheckbox({super.key});

  @override
  _OptionalVoucherCheckboxState createState() =>
      _OptionalVoucherCheckboxState();
}

class _OptionalVoucherCheckboxState extends State<OptionalVoucherCheckbox> {
  bool _isChecked = false;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        setState(() {
          _isChecked = !_isChecked;
        });
      },
      child: Container(
        height: 24,
        width: 24,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(4.0),
          border: Border.all(color: Colors.grey),
          color: _isChecked ? const Color(0xFFEA7B0C) : Colors.white,
        ),
        child: _isChecked
            ? const Icon(
                Icons.check,
                color: Colors.white,
              )
            : null,
      ),
    );
  }
}
