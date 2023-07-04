// ignore_for_file: library_private_types_in_public_api

import 'package:flutter/material.dart';

class SalesPerformanceScreen extends StatefulWidget {
  const SalesPerformanceScreen({Key? key}) : super(key: key);

  @override
  _SalesPerformanceScreenState createState() => _SalesPerformanceScreenState();
}

class _SalesPerformanceScreenState extends State<SalesPerformanceScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 4, vsync: this);
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
          Container(
            padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
            child: Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 8.0),
              ],
            ),
          ),
          const SizedBox(
            height: 30,
            width: 50,
          ),
          const SizedBox(
            child: Text(
              'Sales Performance',
              style: TextStyle(
                color: Color(0xFF663274),
                fontSize: 30.0,
                fontWeight: FontWeight.bold,
              ),
              textAlign: TextAlign.center,
            ),
          ),
          const SizedBox(
            height: 30,
            width: 50,
          ),
          SizedBox(
            height: 50.0,
            child: TabBar(
              controller: _tabController,
              indicatorColor: const Color(0xFF663274),
              labelColor: const Color(0xFF663274),
              unselectedLabelColor: Colors.black,
              tabs: const [
                Tab(text: 'Monthly'),
                Tab(text: 'Item-wise'),
                Tab(text: 'By Invoice'),
                Tab(text: 'Customer-wise'),
              ],
            ),
          ),
          const Row(
            children: [
              SizedBox(
                height: 25,
              )
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: [
                // First Tab: Sales Monthly
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Today',
                              border: InputBorder.none,
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'Today', child: Text('Today')),
                              DropdownMenuItem(
                                  value: 'Current Month',
                                  child: Text('Current Month')),
                              DropdownMenuItem(
                                  value: 'Current Quarter',
                                  child: Text('Current Quarter')),
                              DropdownMenuItem(
                                  value: 'Current FY',
                                  child: Text('Current FY')),
                              DropdownMenuItem(
                                  value: 'Previous FY',
                                  child: Text('Previous FY')),
                              DropdownMenuItem(
                                  value: 'Custom Range',
                                  child: Text('Custom Range')),
                            ],
                            onChanged: (value) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () {
                            // Handle calendar icon tap
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.97,
                          child: SingleChildScrollView(
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                  dividerColor: const Color(0xFFEA7B0C)),
                              child: DataTable(
                                dividerThickness: 1.0,
                                columns: const [
                                  DataColumn(label: Text('Month')),
                                  DataColumn(label: Text('Total Sales')),
                                  DataColumn(label: Text('No. of Orders')),
                                ],
                                rows: [
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(
                                        Text('  Jan'),
                                      ),
                                      const DataCell(Text(' 1527641.77')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for jan orders
                                        },
                                        child: const Text(
                                          "        74",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Feb')),
                                      const DataCell(Text('   133179.61')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for feb orders
                                        },
                                        child: const Text(
                                          "        64",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Mar')),
                                      const DataCell(Text('1924268.26')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for mar orders
                                        },
                                        child: const Text(
                                          "        67",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Apr')),
                                      const DataCell(Text('    21500.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for apr orders
                                        },
                                        child: const Text(
                                          "        16",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  May')),
                                      const DataCell(Text(' 423550.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for may orders
                                        },
                                        child: const Text(
                                          "        83",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Jun')),
                                      const DataCell(Text('1527641.77')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for jun orders
                                        },
                                        child: const Text(
                                          "        104",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Jul')),
                                      const DataCell(Text('  133179.61')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for jul orders
                                        },
                                        child: const Text(
                                          "        31",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Aug')),
                                      const DataCell(Text(' 122468.26')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for aug orders
                                        },
                                        child: const Text(
                                          "        69",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Sep')),
                                      const DataCell(Text('   21500.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for sep orders
                                        },
                                        child: const Text(
                                          "        51",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Oct')),
                                      const DataCell(Text('   15450.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for oct orders
                                        },
                                        child: const Text(
                                          "        43",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Nov')),
                                      const DataCell(Text('    5450.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for nov orders
                                        },
                                        child: const Text(
                                          "         4",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('  Dec')),
                                      const DataCell(Text('    5450.00')),
                                      DataCell(
                                        GestureDetector(
                                          onTap: () {
                                            //handle tap for dec orders
                                          },
                                          child: const Text(
                                            "         4",
                                            style: TextStyle(
                                              color: Color(0xFFEA7A40),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => const Color(0xFFEA7A40)),
                                    cells: const [
                                      DataCell(
                                        Text(
                                          'Total',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '3612039.64',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
                // Second Tab: Sales Item-wise
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Today',
                              border: InputBorder.none,
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'Today', child: Text('Today')),
                              DropdownMenuItem(
                                  value: 'Current Month',
                                  child: Text('Current Month')),
                              DropdownMenuItem(
                                  value: 'Current Quarter',
                                  child: Text('Current Quarter')),
                              DropdownMenuItem(
                                  value: 'Current FY',
                                  child: Text('Current FY')),
                              DropdownMenuItem(
                                  value: 'Previous FY',
                                  child: Text('Previous FY')),
                              DropdownMenuItem(
                                  value: 'Custom Range',
                                  child: Text('Custom Range')),
                            ],
                            onChanged: (value) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () {
                            // Handle calendar icon tap
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.97,
                          child: SingleChildScrollView(
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                  dividerColor: const Color(0xFFEA7B0C)),
                              child: DataTable(
                                dividerThickness: 1.0,
                                columns: const [
                                  DataColumn(label: Text('Item')),
                                  DataColumn(label: Text('Total Sales')),
                                  DataColumn(label: Text('Quantity')),
                                ],
                                rows: [
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(
                                        GestureDetector(
                                          onTap: () {
                                            //handle item tap
                                          },
                                          child: const Text('Item 1',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),
                                            ),),
                                        ),
                                      ),
                                      const DataCell(Text('1527641.77')),
                                      const DataCell(Text(
                                          "  -400",
                                        ),
                                      )
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      DataCell(GestureDetector(
                                        onTap: ()
                                        {
                                          //handle item tap
                                        },
                                        child: const Text('Item 2'
                                        ,
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),)),
                                      )),
                                      const DataCell(Text('  133179.61')),
                                      const DataCell( Text(
                                          "      0",
                                        ),
                                      )
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 3',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text('192428.26')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for mar orders
                                        },
                                        child: const Text(
                                          " -1200"
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 4',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text('   21500.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for apr orders
                                        },
                                        child: const Text(
                                          "  -800",
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 5',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text('423550.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for may orders
                                        },
                                        child: const Text(
                                          "  -200",
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 6',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text('152741.77')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for jan orders
                                        },
                                        child: const Text(
                                          "  -300"
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 7',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text(' 133179.61')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for jul orders
                                        },
                                        child: const Text(
                                          " -1200"
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 8',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text('122468.26')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for aug orders
                                        },
                                        child: const Text(
                                          " -1300"
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 9',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text('  21500.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for sep orders
                                        },
                                        child: const Text(
                                          " -1600"
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 10',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text('  15450.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for oct orders
                                        },
                                        child: const Text(
                                          "     0",
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 11',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text('    5450.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for nov orders
                                        },
                                        child: const Text(
                                          "  -500",
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('Item 12',
                                          style: TextStyle(
                                              color: Color(0xFFEA7A40),))),
                                      const DataCell(Text('    5450.00')),
                                      DataCell(
                                        GestureDetector(
                                          onTap: () {
                                            //handle tap for dec orders
                                          },
                                          child: const Text(
                                            "-2400"
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => const Color(0xFFEA7A40)),
                                    cells: const [
                                      DataCell(
                                        Text(
                                          'Total',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '3612039.64',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
                // Third Tab: Sales By Invoice
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Today',
                              border: InputBorder.none,
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'Today', child: Text('Today')),
                              DropdownMenuItem(
                                  value: 'Current Month',
                                  child: Text('Current Month')),
                              DropdownMenuItem(
                                  value: 'Current Quarter',
                                  child: Text('Current Quarter')),
                              DropdownMenuItem(
                                  value: 'Current FY',
                                  child: Text('Current FY')),
                              DropdownMenuItem(
                                  value: 'Previous FY',
                                  child: Text('Previous FY')),
                              DropdownMenuItem(
                                  value: 'Custom Range',
                                  child: Text('Custom Range')),
                            ],
                            onChanged: (value) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () {
                            // Handle calendar icon tap
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.97,
                          child: SingleChildScrollView(
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                  dividerColor: const Color(0xFFEA7B0C)),
                              child: DataTable(
                                dividerThickness: 1.0,
                                columns: const [
                                  DataColumn(label: Text('Invoice No.')),
                                  DataColumn(label: Text('Party Name')),
                                  DataColumn(label: Text('  Sales')),
                                ],
                                rows: [
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: const [
                                      DataCell(
                                        Text('    58'),
                                      ),
                                      DataCell(Text('   Style Co.')),
                                      DataCell(
                                        Text(
                                          "15271.77",
                                        ),
                                      )
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('     1')),
                                      const DataCell(Text('   Filigree')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for feb orders
                                        },
                                        child: const Text(
                                          "13319.61",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('    45')),
                                      const DataCell(Text('Khushal JW')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for mar orders
                                        },
                                        child: const Text(
                                          "11928.26",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('   145')),
                                      const DataCell(Text('Gupta Store')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for apr orders
                                        },
                                        child: const Text(
                                          " 9500.00",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('    23')),
                                      const DataCell(Text('Go Fashion')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for may orders
                                        },
                                        child: const Text(
                                          "13551.00",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('    76')),
                                      const DataCell(Text('Shri Ganesh')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for jan orders
                                        },
                                        child: const Text(
                                          "15241.77",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('   104')),
                                      const DataCell(Text('La Modish')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for jul orders
                                        },
                                        child: const Text(
                                          "13379.61",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('    33')),
                                      const DataCell(Text('Riddhi JW')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for aug orders
                                        },
                                        child: const Text(
                                          "12148.26",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('    21')),
                                      const DataCell(Text('Basant JW')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for sep orders
                                        },
                                        child: const Text(
                                          "21501.00",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('   156')),
                                      const DataCell(Text('Radhika JW')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for oct orders
                                        },
                                        child: const Text(
                                          "15150.00",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('    19')),
                                      const DataCell(Text('La Modish')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for nov orders
                                        },
                                        child: const Text(
                                          " 5450.00",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text('     3')),
                                      const DataCell(Text('Go Gloriya')),
                                      DataCell(
                                        GestureDetector(
                                          onTap: () {
                                            //handle tap for dec orders
                                          },
                                          child: const Text(
                                            " 5450.00",
                                            style: TextStyle(
                                              color: Color(0xFFEA7A40),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => const Color(0xFFEA7A40)),
                                    cells: const [
                                      DataCell(
                                        Text(
                                          'Total',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '98111.64',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
                  ],
                ),
                // Fourth Tab: Sales Customer-wise
                Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        Expanded(
                          child: FractionallySizedBox(
                            widthFactor: 0.9,
                            child: Container(
                              padding:
                                  const EdgeInsets.symmetric(horizontal: 8.0),
                              decoration: BoxDecoration(
                                color: Colors.white,
                                borderRadius: BorderRadius.circular(8.0),
                              ),
                              child: const TextField(
                                decoration: InputDecoration(
                                  hintText: 'Search',
                                  border: InputBorder.none,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        Container(
                          width: 160.0,
                          padding: const EdgeInsets.symmetric(horizontal: 8.0),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(8.0),
                          ),
                          child: DropdownButtonFormField(
                            decoration: const InputDecoration(
                              hintText: 'Today',
                              border: InputBorder.none,
                            ),
                            items: const [
                              DropdownMenuItem(
                                  value: 'Today', child: Text('Today')),
                              DropdownMenuItem(
                                  value: 'Current Month',
                                  child: Text('Current Month')),
                              DropdownMenuItem(
                                  value: 'Current Quarter',
                                  child: Text('Current Quarter')),
                              DropdownMenuItem(
                                  value: 'Current FY',
                                  child: Text('Current FY')),
                              DropdownMenuItem(
                                  value: 'Previous FY',
                                  child: Text('Previous FY')),
                              DropdownMenuItem(
                                  value: 'Custom Range',
                                  child: Text('Custom Range')),
                            ],
                            onChanged: (value) {
                              // Handle dropdown value change
                            },
                          ),
                        ),
                        const SizedBox(width: 8.0),
                        IconButton(
                          icon: const Icon(Icons.calendar_today),
                          onPressed: () {
                            // Handle calendar icon tap
                          },
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 16,
                    ),
                    Expanded(
                      child: SingleChildScrollView(
                        scrollDirection: Axis.horizontal,
                        child: SizedBox(
                          width: MediaQuery.of(context).size.width * 0.97,
                          child: SingleChildScrollView(
                            child: Theme(
                              data: Theme.of(context).copyWith(
                                  dividerColor: const Color(0xFFEA7B0C)),
                              child: DataTable(
                                dividerThickness: 1.0,
                                columns: const [
                                  DataColumn(label: Text('Party Name')),
                                  DataColumn(label: Text('   Amount')),
                                  DataColumn(label: Text('Orders')),
                                ],
                                rows: [
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(
                                        Text(' Filigree JW'),
                                      ),
                                      const DataCell(Text(' 1527641.77')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "    74",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Kushal JW')),
                                      const DataCell(Text('   133179.61')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "    64",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' La Modish')),
                                      const DataCell(Text('1924268.26')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "    67",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Gupta Store')),
                                      const DataCell(Text('    21500.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "    16",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Go Fashion')),
                                      const DataCell(Text(' 423550.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "    83",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Shagun JW')),
                                      const DataCell(Text('1527641.77')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "   104",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Radhika JW')),
                                      const DataCell(Text('  133179.61')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "    31",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Basant JW')),
                                      const DataCell(Text(' 122468.26')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "    69",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Mani JW')),
                                      const DataCell(Text('   21500.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "    51",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Radhe JW')),
                                      const DataCell(Text('   15450.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "    43",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Goyal Stores')),
                                      const DataCell(Text('    5450.00')),
                                      DataCell(GestureDetector(
                                        onTap: () {
                                          //handle tap for orders
                                        },
                                        child: const Text(
                                          "     4",
                                          style: TextStyle(
                                            color: Color(0xFFEA7A40),
                                          ),
                                        ),
                                      ))
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => Colors.white),
                                    cells: [
                                      const DataCell(Text(' Gun Fashion')),
                                      const DataCell(Text('    5450.00')),
                                      DataCell(
                                        GestureDetector(
                                          onTap: () {
                                            //handle tap for orders
                                          },
                                          child: const Text(
                                            "    34",
                                            style: TextStyle(
                                              color: Color(0xFFEA7A40),
                                            ),
                                          ),
                                        ),
                                      )
                                    ],
                                  ),
                                  DataRow(
                                    color: MaterialStateColor.resolveWith(
                                        (states) => const Color(0xFFEA7A40)),
                                    cells: const [
                                      DataCell(
                                        Text(
                                          'Total',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '3612039.64',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                      DataCell(
                                        Text(
                                          '',
                                          style: TextStyle(color: Colors.white),
                                        ),
                                      ),
                                    ],
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(height: 16.0),
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
