// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class InvoiceScreen extends StatefulWidget {
  final String textValue;

  const InvoiceScreen({Key? key, required this.textValue}) : super(key: key);
  @override
  _InvoiceScreenState createState() => _InvoiceScreenState();
}

class _InvoiceScreenState extends State<InvoiceScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          const SizedBox(
            height: 50,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(
                icon: const Icon(Icons.arrow_back),
                onPressed: () {
                  Navigator.pop(context);
                },
              ),
              Expanded(
                child: Center(
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text(
                      'Vch No. ${widget.textValue}',
                      style: const TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 30,
                        color: Color(0xFF663274),
                      ),
                    ),
                  ),
                ),
              ),
              const SizedBox(width: 48),
            ],
          ),
          const Padding(
            padding: EdgeInsets.all(8.0),
            child: Text(
              '03-10-2022',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 20,
                  color: Color(0xFF663274)),
              textAlign: TextAlign.center,
            ),
          ),
          TabBar(
            controller: _tabController,
            indicatorColor: const Color(0xFF663274),
            labelColor: const Color(0xFF663274),
            unselectedLabelColor: Colors.grey,
            tabs: const [
              Tab(
                text: 'Accounting',
              ),
              Tab(text: 'Inventory'),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                ListView(
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    const ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Filigre'),
                          ),
                          Text('50000'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Dr'),
                        ],
                      ),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    const ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Sales'),
                          ),
                          Text('50000',
                              style: TextStyle(color: Color(0xFFEA7A40))),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cr',
                            style: TextStyle(color: Color(0xFFEA7A40)),
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    const ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Filigre'),
                          ),
                          Text('50000'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Dr'),
                        ],
                      ),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    const ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Sales'),
                          ),
                          Text('50000',
                              style: TextStyle(color: Color(0xFFEA7A40))),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cr',
                            style: TextStyle(color: Color(0xFFEA7A40)),
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    const ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Filigre'),
                          ),
                          Text('50000'),
                          SizedBox(
                            width: 10,
                          ),
                          Text('Dr'),
                        ],
                      ),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    const ListTile(
                      title: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Expanded(
                            child: Text('Sales'),
                          ),
                          Text('50000',
                              style: TextStyle(color: Color(0xFFEA7A40))),
                          SizedBox(
                            width: 10,
                          ),
                          Text(
                            'Cr',
                            style: TextStyle(color: Color(0xFFEA7A40)),
                          ),
                        ],
                      ),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    const Padding(
                      padding:
                          EdgeInsets.only(left: 4.0, top: 8.0, bottom: 8.0),
                      child: Text(
                        'Narration',
                        style: TextStyle(fontSize: 18),
                      ),
                    ),
                    Container(
                      height: 70,
                      padding: const EdgeInsets.all(8.0),
                      color: Colors.white,
                      child: TextFormField(
                        decoration: const InputDecoration.collapsed(
                          hintText: 'being....',
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.53,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFFEA7A40),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Share Details',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                ListView(
                  padding: const EdgeInsets.all(8.0),
                  children: [
                    const ListTile(
                      title: Text(
                          'SNS00042 / 360 - \nBlue & White - White                             25000'),
                      subtitle: Text('Qty 25@125'),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    const ListTile(
                      title: Text(
                          'SNS00042 / 360 - \nBlue & White - White                             25000'),
                      subtitle: Text('Qty 25@125'),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    const ListTile(
                      title: Text(
                          'SNS00042 / 360 - \nBlue & White - White                             25000'),
                      subtitle: Text('Qty 25@125'),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    const ListTile(
                      title: Text(
                          'SNS00042 / 360 - \nBlue & White - White                             25000'),
                      subtitle: Text('Qty 25@125'),
                    ),
                    const Divider(color: Color(0xFFEA7A40)),
                    Container(
                      color: const Color(0xFFEA7A40),
                      child: const ListTile(
                        title: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Expanded(
                              child: Text(
                                'Total',
                                style: TextStyle(color: Colors.white),
                              ),
                            ),
                            Text(
                              '50000',
                              style: TextStyle(color: Colors.white),
                            ),
                            SizedBox(width: 4)
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 20),
                    Center(
                      child: SizedBox(
                        width: MediaQuery.of(context).size.width * 0.53,
                        child: ElevatedButton(
                          onPressed: () {
                            // Handle button press
                          },
                          style: ElevatedButton.styleFrom(
                            backgroundColor: const Color(0xFF663274),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                          ),
                          child: const Text(
                            'Share Details',
                            style: TextStyle(color: Colors.white, fontSize: 18),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
