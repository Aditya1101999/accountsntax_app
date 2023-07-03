import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

class MISScreen extends StatelessWidget {
  const MISScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Expanded(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SizedBox(
                    height: 10,
                  ),
                  const Text('John Doe'),
                  const SizedBox(width: 8.0),
                  const Icon(Icons.arrow_drop_down),
                  const SizedBox(width: 8.0),
                  IconButton(
                    icon: const Icon(Icons.help_outline),
                    onPressed: () {
                      // Handle FAQs button tap
                    },
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
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
                            Icons.account_box,
                            color: Color(0xFFEA7A40),
                          ),
                          onPressed: () {
                            // Handle items button tap
                          },
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text('Items'),
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
                            Icons.people,
                            color: Color(0xFFEA7A40),
                          ),
                          onPressed: () {
                            // Handle party button tap
                          },
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text('Party'),
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
                            Icons.money_off_csred_sharp,
                            color: Color(0xFFEA7A40),
                          ),
                          onPressed: () {
                            // Handle collections button tap
                          },
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text('Collections'),
                    ],
                  ),
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.fromLTRB(16.0, 0, 16.0, 8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconButton(
                    icon:
                        const Icon(Icons.arrow_left, color: Color(0xFF663274)),
                    onPressed: () {
                      // Handle left arrow button tap
                    },
                  ),
                  const SizedBox(width: 8.0),
                  const Icon(
                    Icons.calendar_today,
                    color: Color(0xFFEA7A40),
                  ),
                  const SizedBox(width: 8.0),
                  const Text('01 Aug 22 to 01 Dec 22',
                      textAlign: TextAlign.center),
                  const SizedBox(width: 8.0),
                  IconButton(
                    icon: const Icon(
                      Icons.arrow_right,
                      color: Color(0xFFEA7A40),
                    ),
                    onPressed: () {
                      // Handle right arrow button tap
                    },
                  ),
                ],
              ),
            ),
            const Divider(color: Color(0xFFEA7A40)),
            ListTile(
              leading: const Icon(
                Icons.query_stats,
                color: Color(0xFFEA7A40),
              ),
              title: const Text(
                'Rs. 36,13,239.64',
                style: TextStyle(fontSize: 16.0),
              ),
              subtitle: const Text(
                'Sales - Credit Note (Gross)',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () {
                Navigator.pushNamed(context, salesPerformanceRoute);
              },
            ),
            const Divider(color: Color(0xFFEA7A40)),
            ListTile(
              leading: const Icon(Icons.production_quantity_limits,
                  color: Color(0xFFEA7A40)),
              title: const Text(
                'Rs. 82,67,756.93',
                style: TextStyle(fontSize: 16.0),
              ),
              subtitle: const Text(
                'Purchase - Debit Note (Gross)',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () {
                // Handle list item tap
              },
            ),
            const Divider(color: Color(0xFFEA7A40)),
            ListTile(
              leading: const Icon(
                Icons.receipt,
                color: Color(0xFFEA7A40),
              ),
              title: const Text(
                'Rs. 39,30,647.25',
                style: TextStyle(fontSize: 16.0),
              ),
              subtitle: const Text(
                'Receipt',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () {
                // Handle list item tap
              },
            ),
            const Divider(color: Color(0xFFEA7A40)),
            ListTile(
              leading: const Icon(
                Icons.payment,
                color: Color(0xFFEA7A40),
              ),
              title: const Text(
                'Rs. 38,91,400.25',
                style: TextStyle(fontSize: 16.0),
              ),
              subtitle: const Text(
                'Payment',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () {
                // Handle list item tap
              },
            ),
            const Divider(color: Color(0xFFEA7A40)),
            ListTile(
              leading: const Icon(
                Icons.handshake_sharp,
                color: Color(0xFFEA7A40),
              ),
              title: const Text(
                'Rs. 27,38,894.78',
                style: TextStyle(fontSize: 16.0),
              ),
              subtitle: const Text(
                'Outstanding Receivable',
                style: TextStyle(fontSize: 14.0),
              ),
              onTap: () {
                // Handle list item tap
              },
            ),
            const Divider(color: Color(0xFFEA7A40)),
          ],
        ),
      ),
      floatingActionButton: 
      Padding(
        padding: const EdgeInsets.all(1.0),
        child: FloatingActionButton.extended(
          onPressed: () {
            // Handle create entry button tap
          },
          backgroundColor: const Color(0xFFEA7A40),
          icon: const Icon(Icons.add),
          label: const Text(
            'Create Entry',
            style: TextStyle(fontSize: 17),
          ),
        ),
      ),
    );
  }
}
