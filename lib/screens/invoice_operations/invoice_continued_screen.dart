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
  final TextEditingController _invoiceNoController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                  OptionalVoucherCheckbox(),
                  Text('  Is it an optional voucher?'),
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
                      // Handle view consignee list logic
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
                InkWell(
                  onTap: () {
                    //handle view item
                  },
                  child: Stack(
                    children: [
                      Container(
                        height: 125,
                        width: double.maxFinite,
                        margin: const EdgeInsets.all(5),
                        padding: const EdgeInsets.all(33),
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.circular(10),
                          boxShadow: [
                            BoxShadow(
                              color: Colors.grey.withOpacity(0.5),
                              spreadRadius: 2,
                              blurRadius: 5,
                              offset: const Offset(0, 3),
                            ),
                          ],
                        ),
                        child: const Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Item Name',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF663274),
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  'Amount',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xFF663274),
                                  ),
                                ),
                                SizedBox(width: 43),
                              ],
                            ),
                            SizedBox(height: 8),
                            Row(
                              children: [
                                Text(
                                  'Qty 25@125',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                Spacer(),
                                Text(
                                  '30000',
                                  style: TextStyle(
                                    fontSize: 18,
                                    fontWeight: FontWeight.normal,
                                    color: Colors.black,
                                  ),
                                ),
                                SizedBox(width: 55),
                              ],
                            ),
                          ],
                        ),
                      ),
                      Positioned(
                        top: 16,
                        right: 16,
                        child: InkWell(
                          onTap: () {
                            //handle item edit
                          },
                          child: const Icon(
                            Icons.edit,
                            color: Color(0xFF663274),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const SizedBox(height: 25),
            Row(children: [
              ElevatedButton(
                onPressed: () {
                  // Perform add more logic
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
