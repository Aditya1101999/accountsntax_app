// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';

import '../widgets/drawer_page.dart';
import '../widgets/notification_page.dart';

class DashboardScreen extends StatelessWidget {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  DashboardScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: EdgeInsets.only(
                top: MediaQuery.of(context).padding.top, left: 16, right: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(
                  icon: const Icon(Icons.menu, color: Color(0xFF663274)),
                  onPressed: () {
                    _scaffoldKey.currentState?.openDrawer();
                  },
                ),
                const SizedBox(width: 200,),
                IconButton(
                   icon: const Icon(Icons.search, color: Color(0xFF663274)),
        onPressed: () {
          // Handle search icon tap
        },
                ),
                IconButton(
                  icon: const Icon(Icons.notifications, color: Color(0xFF663274)),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(
                          builder: (context) =>
                              const NotificationPage()),
                    );
                  },
                ),
              ],
            ),
          ),
          const Padding(
            padding: EdgeInsets.all(16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Welcome,',
                  style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(height: 8),
                Text(
                  'Aditya',
                  style: TextStyle(
                    fontSize: 40,
                    fontWeight: FontWeight.w500,
                  ),
                ),
              ],
            ),
          ),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(8),
              border: Border.all(color: Colors.orange, width: 2),
            ),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Icon(
                      Icons.error_outline,
                      color: Colors.red,
                    ),
                    SizedBox(width: 8),
                    Text(
                      'Update KYC',
                      style: TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.orange,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 16),
                Text(
                  'Update your KYC Documents to access the application.',
                  style: TextStyle(
                    fontSize: 16,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 14),
          Container(
            margin: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Container(
                  height: 40,
                  width: 150, 
                  padding: const EdgeInsets.symmetric(horizontal: 16),
                  decoration: BoxDecoration(
                    color: Colors.white,
                    borderRadius: BorderRadius.circular(
                        8), 
                    border: Border.all(color: Colors.grey, width: 2),
                  ),
                  child: DropdownButtonFormField<String>(
                    decoration: const InputDecoration(
                      border: InputBorder.none,
                      hintText: 'Select Bank',
                    ),
                    items: const [
                      DropdownMenuItem<String>(
                        value: 'Bank 1',
                        child: Text('Bank 1'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Bank 2',
                        child: Text('Bank 2'),
                      ),
                      DropdownMenuItem<String>(
                        value: 'Bank 3',
                        child: Text('Bank 3'),
                      ),
                    ],
                    onChanged: (value) {
                      // Handle dropdown value change
                    },
                  ),
                ),
                const SizedBox(width: 14),
                ElevatedButton(
                  onPressed: () {
                    // Handle button press
                  },
                  style: ElevatedButton.styleFrom(
                    primary: const Color(0xFF663274),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: const Text(
                    'Check Balance',
                    style: TextStyle(color: Colors.white),
                  ),
                ),
                const SizedBox(width: 8),
                Container(
                  width: 40,
                  height: 40,
                  decoration: BoxDecoration(
                    color: const Color(0xFF663274),
                    borderRadius: BorderRadius.circular(
                        8), // Adjust the border radius as needed
                  ),
                  child: const Icon(Icons.download, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(height: 14),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Share Accounting Data',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF663274),
                    child: Icon(Icons.shopping_cart, color: Colors.white),
                  ),
                  Text('Purchase', style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF663274),
                    child: Icon(Icons.local_mall, color: Colors.white),
                  ),
                  Text('Sales', style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF663274),
                    child: Icon(Icons.money, color: Colors.white),
                  ),
                  Text('Expense', style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF663274),
                    child: Icon(Icons.apps, color: Colors.white),
                  ),
                  Text('Others', style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Documents',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
          ),
          const SizedBox(height: 8),
          const Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF663274),
                    child: Icon(Icons.business, color: Colors.white),
                  ),
                  Text('Business', style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF663274),
                    child: Icon(Icons.fingerprint, color: Colors.white),
                  ),
                  Text('KYC', style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF663274),
                    child:
                        Icon(Icons.account_balance_wallet, color: Colors.white),
                  ),
                  Text('Finance', style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
              Column(
                children: [
                  CircleAvatar(
                    backgroundColor: Color(0xFF663274),
                    child: Icon(Icons.receipt, color: Colors.white),
                  ),
                  Text('Returns', style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
            ],
          ),
          const SizedBox(height: 24),
          const Padding(
            padding: EdgeInsets.symmetric(horizontal: 16),
            child: Text(
              'Work Flow',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
          ),
          const SizedBox(height: 8),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Handle due date tap
                    },
                    child: const CircleAvatar(
                      backgroundColor: Color(0xFF663274),
                      child: Icon(Icons.date_range, color: Colors.white),
                    ),
                  ),
                  const Text('Due Date', style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
              Column(
                children: [
                  InkWell(
                    onTap: () {
                      // Handle work status tap
                    },
                    child: const CircleAvatar(
                      backgroundColor: Color(0xFF663274),
                      child: Icon(Icons.work, color: Colors.white),
                    ),
                  ),
                  const Text('Work Status',
                      style: TextStyle(color: Color(0xFF663274))),
                ],
              ),
              ElevatedButton(
                onPressed: () {
                  // Handle create invoice tap
                },
                style: ElevatedButton.styleFrom(
                  primary: const Color(0xFF663274),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(20),
                  ),
                ),
                child: const Row(
                  children: [
                    Icon(Icons.add, color: Colors.white),
                    SizedBox(width: 4),
                    Text('Create Invoice',
                        style: TextStyle(color: Colors.white)),
                  ],
                ),
              ),
            ],
          ),

          // Rest of the code...
        ],
      ),
      drawer: CustomDrawer(), 
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
        onTap: (index) {
          // Handle bottom navigation item tap
        },
        selectedItemColor: const Color(0xFF663274),
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: 'Home'),
          BottomNavigationBarItem(
              icon: Icon(Icons.question_answer), label: 'Queries'),
          BottomNavigationBarItem(
              icon: Icon(Icons.business), label: 'Services'),
        ],
      ),
    );
  }
}
