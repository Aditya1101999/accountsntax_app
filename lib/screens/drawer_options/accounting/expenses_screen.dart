// ignore_for_file: library_private_types_in_public_api
import 'package:flutter/material.dart';

class ExpensesDescription extends StatefulWidget {
  const ExpensesDescription({Key? key}) : super(key: key);

  @override
  _ExpensesDescriptionState createState() => _ExpensesDescriptionState();
}

class _ExpensesDescriptionState extends State<ExpensesDescription> {
  String _selectedOption = 'Option 1';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 16.0, right: 16.0),
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
                const Text(
                  'Expenses',
                  style: TextStyle(
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
            SizedBox(
              height: 50,
              child: DropdownButtonFormField(
                decoration: const InputDecoration(
                  hintText: 'Expenses Type',
                ),
                value: _selectedOption,
                items: const [
                  DropdownMenuItem(
                    value: 'Option 1',
                    child: Text('                               Monthly',
                        style: TextStyle(
                          color: Color(0xFFEA7A40),
                        )),
                  ),
                  DropdownMenuItem(
                    value: 'Option 2',
                    child: Text('                               Supplier',
                        style: TextStyle(
                          color: Color(0xFFEA7A40),
                        )),
                  ),
                  DropdownMenuItem(
                    value: 'Option 3',
                    child: Text('                               Category',
                        style: TextStyle(
                          color: Color(0xFFEA7A40),
                        )),
                  ),
                  DropdownMenuItem(
                    value: 'Option 4',
                    child: Text('                               Register',
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
            _buildDataTable(),
          ],
        ),
      ),
    );
  }

  Widget _buildDataTable() {
    switch (_selectedOption) {
      case 'Option 1':
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
                      DataColumn(label: Text('Month')),
                      DataColumn(label: Text('Expenses')),
                      DataColumn(label: Text('     Count')),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle month tap
                            },
                            child: const Text(
                              '  Jan',
                              style: TextStyle(color: Color(0xFFEA7A40)),
                            ),
                          )),
                          const DataCell(Text(' 1527641.77')),
                          const DataCell(
                            Text(
                              "        74",
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
                              //handle month tap
                            },
                            child: const Text('  Feb',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('   133179.61')),
                          const DataCell(
                            Text(
                              "        64",
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
                              //handle month tap
                            },
                            child: const Text('  Mar',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('1924268.26')),
                          const DataCell(
                            Text(
                              "        67",
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
                              //handle month tap
                            },
                            child: const Text('  Apr',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('    21500.00')),
                          const DataCell(
                            Text(
                              "        16",
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
                              //handle month tap
                            },
                            child: const Text('  May',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text(' 423550.00')),
                          const DataCell(
                            Text(
                              "        83",
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
                              //handle month tap
                            },
                            child: const Text('  Jun',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('1527641.77')),
                          const DataCell(
                            Text(
                              "        104",
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
                              //handle month tap
                            },
                            child: const Text('  Jul',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('  133179.61')),
                          const DataCell(
                            Text(
                              "        31",
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
                              //handle month tap
                            },
                            child: const Text('  Aug',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text(' 122468.26')),
                          const DataCell(
                            Text(
                              "        69",
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
                              //handle month tap
                            },
                            child: const Text('  Sep',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('   21500.00')),
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle tap for sep orders
                            },
                            child: const Text(
                              "        51",
                            ),
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle month tap
                            },
                            child: const Text('  Oct',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('   15450.00')),
                          const DataCell(Text(
                            "        43",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle month tap
                            },
                            child: const Text('  Nov',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('    5450.00')),
                          const DataCell(Text(
                            "         4",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle month tap
                            },
                            child: const Text('  Dec',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('    5450.00')),
                          const DataCell(
                            Text(
                              "         4",
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
        );
      case 'Option 2':
        return Expanded(
          child: SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: SizedBox(
              width: MediaQuery.of(context).size.width * 0.97,
              child: SingleChildScrollView(
                child: Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: const Color(0xFFEA7B0C),
                  ),
                  child: DataTable(
                    dividerThickness: 1.0,
                    columns: const [
                      DataColumn(label: Text('Expense')),
                      DataColumn(label: Text('Amount')),
                      DataColumn(label: Text('Orders')),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(
                            GestureDetector(
                              onTap: () {
                                //handle Purchase tap
                              },
                              child: const Text(
                                'Purchase 1',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                ),
                              ),
                            ),
                          ),
                          const DataCell(Text('1527641.77')),
                          const DataCell(
                            Text(
                              "  -400",
                            ),
                          ),
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(
                            GestureDetector(
                              onTap: () {
                                //handle Purchase tap
                              },
                              child: const Text(
                                'Purchase 2',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                ),
                              ),
                            ),
                          ),
                          const DataCell(Text('  133179.61')),
                          const DataCell(
                            Text(
                              "      0",
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
                              //handle Purchase tap
                            },
                            child: const Text('Purchase 3',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text('192428.26')),
                          const DataCell(
                            Text(" -1200"),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle Purchase tap
                            },
                            child: const Text('Purchase 4',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text('   21500.00')),
                          const DataCell(
                            Text(
                              "  -800",
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
                              //handle Purchase tap
                            },
                            child: const Text('Purchase 5',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text('423550.00')),
                          const DataCell(
                            Text(
                              "  -200",
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
                              //handle Purchase tap
                            },
                            child: const Text('Purchase 6',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text('152741.77')),
                          const DataCell(
                            Text("  -300"),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle Purchase tap
                            },
                            child: const Text('Purchase 7',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text(' 133179.61')),
                          const DataCell(
                            Text(" -1200"),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle Purchase tap
                            },
                            child: const Text('Purchase 8',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text('122468.26')),
                          const DataCell(
                            Text(" -1300"),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle Purchase tap
                            },
                            child: const Text('Purchase 9',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text('  21500.00')),
                          const DataCell(
                            Text(" -1600"),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle Purchase tap
                            },
                            child: const Text('Purchase 10',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text('  15450.00')),
                          const DataCell(
                            Text(
                              "     0",
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
                              //handle item tap
                            },
                            child: const Text('Purchase 11',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text('    5450.00')),
                          const DataCell(
                            Text(
                              "  -500",
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
                              //handle Purchase tap
                            },
                            child: const Text('Purchase 12',
                                style: TextStyle(
                                  color: Color(0xFFEA7A40),
                                )),
                          )),
                          const DataCell(Text('    5450.00')),
                          const DataCell(
                            Text("-2400"),
                          ),
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
        );
      case 'Option 3':
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
                      DataColumn(label: Text('Orders')),
                      DataColumn(label: Text('Vch. Date')),
                      DataColumn(label: Text('Amount')),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(
                            GestureDetector(
                              onTap: () {
                              //handle order tap
                            },
                              child: const Text('    58',
                                  style: TextStyle(color: Color(0xFFEA7A40))),
                            ),
                          ),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(
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
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('     1',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(
                            Text(
                              "13319.61",
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
                              //handle order tap
                            },
                            child: const Text('    45',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(Text(
                            "11928.26",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('   145',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(Text(
                            " 9500.00",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('    23',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(Text(
                            "13551.00",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('    76',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(Text(
                            "15241.77",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('   104',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(Text(
                            "13379.61",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('    33',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(Text(
                            "12148.26",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('    21',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(Text(
                            "21501.00",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('   156',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(Text(
                            "15150.00",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('    19',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(Text(
                            " 5450.00",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle order tap
                            },
                            child: const Text('     3',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text("29-09-2022")),
                          const DataCell(
                            Text(
                              " 5450.00",
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
                              '  Total',
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
        );
      case 'Option 4':
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
                      DataColumn(label: Text('Party Name')),
                      DataColumn(label: Text('Amount')),
                      DataColumn(label: Text('Ledger')),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(
                            GestureDetector(
                              onTap: () {
                                //handle party tap
                              },
                              child: const Text(' Filigree JW',
                                  style: TextStyle(color: Color(0xFFEA7A40))),
                            ),
                          ),
                          const DataCell(Text('1527641.77')),
                          const DataCell(Text(
                            "Purch.",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Kushal JW',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('133179.61')),
                          const DataCell(Text(
                            "Purch.",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' La Modish',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('1924268.26')),
                          const DataCell(Text(
                            "Purch.",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Gupta Store',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('21500.00')),
                          const DataCell(Text(
                            "Purch.",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Go Fashion',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('423550.00')),
                          const DataCell(Text(
                            "Purch.",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Shagun JW',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('1527641.77')),
                          const DataCell(Text("Purch."))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Radhika JW',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('133179.61')),
                          const DataCell(Text("Purch."))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Basant JW',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('122468.26')),
                          const DataCell(Text("Purch."))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Mani JW',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('21500.00')),
                          const DataCell(Text(
                            "Purch.",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Radhe JW',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('15450.00')),
                          const DataCell(Text(
                            "Purch.",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Goyal Stores',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('5450.00')),
                          const DataCell(Text(
                            "Purch.",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle party tap
                            },
                            child: const Text(' Gun Fashion',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('5450.00')),
                          const DataCell(
                            Text("Purch."),
                          )
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => const Color(0xFFEA7A40)),
                        cells: const [
                          DataCell(
                            Text(
                              '  Total',
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
                      DataColumn(label: Text('Month')),
                      DataColumn(label: Text('Total Sales')),
                      DataColumn(label: Text('No. of Orders')),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle month tap
                            },
                            child: const Text(
                              '  Jan',
                              style: TextStyle(color: Color(0xFFEA7A40)),
                            ),
                          )),
                          const DataCell(Text(' 1527641.77')),
                          const DataCell(
                            Text(
                              "        74",
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
                              //handle month tap
                            },
                            child: const Text('  Feb',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('   133179.61')),
                          const DataCell(
                            Text(
                              "        64",
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
                              //handle month tap
                            },
                            child: const Text('  Mar',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('1924268.26')),
                          const DataCell(
                            Text(
                              "        67",
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
                              //handle month tap
                            },
                            child: const Text('  Apr',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('    21500.00')),
                          const DataCell(
                            Text(
                              "        16",
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
                              //handle month tap
                            },
                            child: const Text('  May',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text(' 423550.00')),
                          const DataCell(
                            Text(
                              "        83",
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
                              //handle month tap
                            },
                            child: const Text('  Jun',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('1527641.77')),
                          const DataCell(
                            Text(
                              "        104",
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
                              //handle month tap
                            },
                            child: const Text('  Jul',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('  133179.61')),
                          const DataCell(
                            Text(
                              "        31",
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
                              //handle month tap
                            },
                            child: const Text('  Aug',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text(' 122468.26')),
                          const DataCell(
                            Text(
                              "        69",
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
                              //handle month tap
                            },
                            child: const Text('  Sep',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('   21500.00')),
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle tap for sep orders
                            },
                            child: const Text(
                              "        51",
                            ),
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle month tap
                            },
                            child: const Text('  Oct',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('   15450.00')),
                          const DataCell(Text(
                            "        43",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle month tap
                            },
                            child: const Text('  Nov',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('    5450.00')),
                          const DataCell(Text(
                            "         4",
                          ))
                        ],
                      ),
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                            (states) => Colors.white),
                        cells: [
                          DataCell(GestureDetector(
                            onTap: () {
                              //handle month tap
                            },
                            child: const Text('  Dec',
                                style: TextStyle(color: Color(0xFFEA7A40))),
                          )),
                          const DataCell(Text('    5450.00')),
                          const DataCell(
                            Text(
                              "         4",
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
        );
    }
  }
}
