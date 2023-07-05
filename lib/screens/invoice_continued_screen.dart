import 'package:flutter/material.dart';

class InvoiceContinuedScreen extends StatelessWidget {
  final String? voucherType;

  InvoiceContinuedScreen({required this.voucherType});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Invoice Continued'),
      ),
      body: Column(
        children: [
          Text(
            'Selected Voucher Type: $voucherType',
            style: TextStyle(
              color: Color(0xFF663274),
              fontSize: 24,
              fontWeight: FontWeight.bold,
            ),
          ),
          // Rest of the page content
        ],
      ),
    );
  }
}
