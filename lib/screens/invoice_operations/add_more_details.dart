import 'package:flutter/material.dart';

class AddMoreDetailsScreen extends StatelessWidget {
  const AddMoreDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: SingleChildScrollView(
            child:
                Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
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
        padding: const EdgeInsets.all(16.0),
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
                      Icons.delivery_dining,
                      color: Color(0xFFEA7A40),
                    ),
                    onPressed: () {
                      // Handle items button tap
                    },
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text('Dispatch Order Details'),
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
                      Icons.import_export,
                      color: Color(0xFFEA7A40),
                    ),
                    onPressed: () {
                      // Handle party button tap
                    },
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text('Export Details'),
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
            const SizedBox(),
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
                      // Handle collections button tap
                    },
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text('E-way Bill Details'),
              ],
            ),
            const SizedBox(),
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
                      // Handle collections button tap
                    },
                  ),
                ),
                const SizedBox(height: 8.0),
                const Text('E-invoice Details'),
              ],
            ),
          ],
        ),
        
      ),
    ])));
  }
}
