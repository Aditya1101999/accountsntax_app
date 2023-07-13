import 'package:flutter/material.dart';

class CustomerWiseScreen extends StatefulWidget {
  final String textValue;

  const CustomerWiseScreen({Key? key, required this.textValue})
      : super(key: key);

  @override
  State<CustomerWiseScreen> createState() => _CustomerWiseScreenState();
}

class _CustomerWiseScreenState extends State<CustomerWiseScreen> {
  String _selectedOption = 'Option 1';

  @override
  void initState() {
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Color(0xFF663274)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(
                  width: 50,
                ),
                Text(
                  widget.textValue,
                  style: const TextStyle(
                    color: Color(0xFF663274),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                IconButton(
                  icon: const Icon(Icons.calendar_today,
                      color: Color(0xFF663274)),
                  onPressed: () {
                    // Handle calendar icon tap
                  },
                ),
              ],
            ),
            const SizedBox(height: 5),
            SizedBox(
              height: 50,
              child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  hintText: 'Categories',
                ),
                value: _selectedOption,
                items: const [
                  DropdownMenuItem(
                    value: 'Option 1',
                    child: Text('                                   Sales',
                        style: TextStyle(
                          color: Color(0xFFEA7A40),
                        )),
                  ),
                  DropdownMenuItem(
                    value: 'Option 2',
                    child: Text('                                  Reciept',
                        style: TextStyle(
                          color: Color(0xFFEA7A40),
                        )),
                  ),
                  DropdownMenuItem(
                    value: 'Option 3',
                    child: Text('                            Ageing by Tally',
                        style: TextStyle(
                          color: Color(0xFFEA7A40),
                        )),
                  ),
                  DropdownMenuItem(
                    value: 'Option 4',
                    child: Text('                            Ageing by FIFO',
                        style: TextStyle(
                          color: Color(0xFFEA7A40),
                        )),
                  ),
                  DropdownMenuItem(
                    value: 'Option 5',
                    child: Text('                                  Ledger',
                        style: TextStyle(
                          color: Color(0xFFEA7A40),
                        )),
                  ),
                ],
                onChanged: (value) {
                  setState(() {
                    _selectedOption = value.toString();
                  });
                },
              ),
            ),
            const SizedBox(height: 16.0),
            Container(
              height: 40,
              color: Colors.white,
              child: const Row(
                children: [
                  SizedBox(
                    width: 10,
                  ),
                  Icon(
                    Icons.search,
                    color: Color(0xFF663274),
                  ),
                  SizedBox(width: 8.0),
                  Expanded(
                    child: TextField(
                      decoration: InputDecoration(
                        hintText: 'Search',
                        border: InputBorder.none,
                      ),
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 16.0),
            _buildWidget()
          ],
        ),
      ),
    );
  }

  void showExpenseDetailsDialog(BuildContext context) {
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return AlertDialog(
          backgroundColor: const Color(0xFFF9E8E3),
          title: const Text(
            'Sales Details',
            style: TextStyle(
              color: Color(0xFF663274),
            ),
          ),
          content: const SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ListTile(
                  title: Text('Agst Ref-68                  2688'),
                ),
                Divider(color: Color(0xFFEA7A40)),
                ListTile(
                  title: Text('Agst Ref                        35848'),
                ),
                Divider(color: Color(0xFFEA7A40)),
                ListTile(
                  title: Text('On Account-61            9072'),
                ),
                Divider(color: Color(0xFFEA7A40)),
              ],
            ),
          ),
          actions: [
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

  Widget _buildWidget() {
    switch (_selectedOption) {
      case 'Option 1':
        return Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.98,
              child: SingleChildScrollView(
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: const Color(0xFFEA7B0C)),
                  child: DataTable(
                    dividerThickness: 1.0,
                    columns: const [
                      DataColumn(label: Text('Invoice No.')),
                      DataColumn(label: Text('   Date')),
                      DataColumn(label: Text('Amount')),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text(
                              '       4',
                              style: TextStyle(color: Color(0xFFEA7A40)),
                            ),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-2197.50",
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      90',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 4328.00",
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      17',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 2688.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      48',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 8032.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      14',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-4134.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      64',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 9315.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      66',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-4134.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      42',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-3210.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      53',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 4921.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('     120',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(Text(
                            " 3921.00",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      42',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(Text(
                            " 2319.00",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      62',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-4019.00",
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
                              '36129.61',
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
        );
      case 'Option 2':
        return Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.98,
              child: SingleChildScrollView(
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: const Color(0xFFEA7B0C)),
                  child: DataTable(
                    dividerThickness: 1.0,
                    columns: const [
                      DataColumn(label: Text('Vch No.')),
                      DataColumn(label: Text('Amount')),
                      DataColumn(label: Text('  Bills')),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text(
                              '       4',
                              style: TextStyle(color: Color(0xFFEA7A40)),
                            ),
                          )),
                          const DataCell(
                            Text(
                              "-2197.50",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      90',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(
                            Text(
                              " 4328.00",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      17',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(
                            Text(
                              " 2688.00",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      48',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(
                            Text(
                              " 8032.00",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      14',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(
                            Text(
                              "-4134.00",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      64',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(
                            Text(
                              " 9315.00",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      66',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(
                            Text(
                              "-4134.00",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      42',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(
                            Text(
                              "-3210.00",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      53',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(
                            Text(
                              " 4921.00",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('     120',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text(
                            " 3921.00",
                          )),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      42',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text(
                            " 2319.00",
                          )),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle voucher tap
                            },
                            child: const Text('      62',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(
                            Text(
                              "-4019.00",
                            ),
                          ),
                          DataCell(IconButton(
                            icon: const Icon(Icons.visibility,
                                color: Color(0xFF663274)),
                            onPressed: () {
                              showExpenseDetailsDialog(context);
                            },
                          )),
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
                              '361294.61',
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
        );
      case 'Option 3':
        return Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const ListTile(
                title:
                    Text('  New Ref-61                                160064'),
                subtitle: Text('  08-12-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              const ListTile(
                title:
                    Text('  New Ref-46                                25000'),
                subtitle: Text(' 08-12-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              const ListTile(
                title: Text('On Account-61                             25000'),
                subtitle: Text('  08-12-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              const ListTile(
                title:
                    Text(' New Ref-96                                  5376'),
                subtitle: Text('  09-01-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              Container(
                color: const Color(0xFFEA7A40),
                child: const ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 20),
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
                      SizedBox(width: 30)
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      case 'Option 4':
        return Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const ListTile(
                title:
                    Text('  New Ref-11                                160064'),
                subtitle: Text('  08-01-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              const ListTile(
                title:
                    Text('  New Ref-46                                15000'),
                subtitle: Text(' 28-12-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              const ListTile(
                title: Text('On Account-31                             35000'),
                subtitle: Text('  18-12-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              const ListTile(
                title:
                    Text(' New Ref-56                                  8376'),
                subtitle: Text('  19-01-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              Container(
                color: const Color(0xFFEA7A40),
                child: const ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      SizedBox(width: 20),
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
                      SizedBox(width: 30)
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      case 'Option 5':
        return Expanded(
          child: ListView(
            padding: const EdgeInsets.all(8.0),
            children: [
              const ListTile(
                title:
                    Text('Sales-21                                   25000 CR'),
                subtitle: Text('28-09-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              const ListTile(
                title:
                    Text('Reciept-46                               25000 DR'),
                subtitle: Text(' 17-09-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              const ListTile(
                title:
                    Text('Sales-61                                   25000 DR'),
                subtitle: Text('19-09-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              const ListTile(
                title:
                    Text('Reciept-46                               25000 DR'),
                subtitle: Text(' 28-09-2022'),
              ),
              const Divider(color: Color(0xFFEA7A40)),
              Container(
                color: const Color(0xFFEA7A40),
                child: const ListTile(
                  title: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Align(
                        child: Text(
                          'Closing Balance',
                          style: TextStyle(color: Colors.white),
                        ),
                      ),
                      SizedBox(width: 80),
                      Text(
                        '50000 DR',
                        style: TextStyle(color: Colors.white),
                      ),
                      SizedBox(width: 4)
                    ],
                  ),
                ),
              ),
            ],
          ),
        );
      default:
        return Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.97,
              child: SingleChildScrollView(
                child: Theme(
                  data: Theme.of(context)
                      .copyWith(dividerColor: const Color(0xFFEA7B0C)),
                  child: DataTable(
                    dividerThickness: 1.0,
                    columns: const [
                      DataColumn(label: Text('Invoice No.')),
                      DataColumn(label: Text('   Date')),
                      DataColumn(label: Text('Amount')),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text(
                              '       4',
                              style: TextStyle(color: Color(0xFFEA7A40)),
                            ),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-2197.50",
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      90',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 4328.00",
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      17',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 2688.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      48',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 8032.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      14',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-4134.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      64',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 9315.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      66',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-4134.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      42',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-3210.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      53',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              " 4921.00",
                            ),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('     120',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(Text(
                            " 3921.00",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      42',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(Text(
                            " 2319.00",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle invoice tap
                            },
                            child: const Text('      62',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('05-10-2022')),
                          const DataCell(
                            Text(
                              "-4019.00",
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
                              '36129.61',
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
        );
    }
  }
}
