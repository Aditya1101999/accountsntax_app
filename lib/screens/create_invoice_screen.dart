// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

import 'invoice_continued_screen.dart';

class CreateInvoiceScreen extends StatefulWidget {
  const CreateInvoiceScreen({super.key});

  @override
  _CreateInvoiceScreenState createState() => _CreateInvoiceScreenState();
}

class _CreateInvoiceScreenState extends State<CreateInvoiceScreen> {
  String selectedVoucherType = 'Option 1';
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController(text: _getCurrentDate());
  }

  String _getCurrentDate() {
    // Logic to get the current date in the desired format
    DateTime currentDate = DateTime.now();
    String formattedDate = currentDate
        .toString()
        .split(' ')[0]; // Format the date as per your requirement
    return formattedDate;
  }

  @override
  void dispose() {
    _dateController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF663274),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFFF9E8E3),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Create Invoice',
                style: TextStyle(
                  color: Color(0xFF663274),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 44),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Voucher Type',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF663274)),
              ),
            ),
            const SizedBox(height: 5),
            DropdownButtonFormField<String>(
              value: selectedVoucherType,
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
                  selectedVoucherType = value!;
                });
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                hintText: 'Voucher Type',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Date',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF663274)),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              readOnly: true,
              controller: _dateController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                hintText: _getCurrentDate(),
                hintStyle: const TextStyle(color: Colors.grey),
                suffixIcon: InkWell(
                  onTap: () {
                    // Calendar icon click logic
                  },
                  child: const Icon(
                    Icons.calendar_today,
                    color: Color(0xFF663274),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Party Name',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF663274)),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16.0, vertical: 12.0),
                labelText: 'Party Name',
                hintText: 'Enter party name',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 43),
            Center(
              child: SizedBox(
                width: 150,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                     Navigator.pushReplacement(
        context,
        MaterialPageRoute(
          builder: (context) => InvoiceContinuedScreen(voucherType: selectedVoucherType),
        ),
      );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEA7B0C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Next',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
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
