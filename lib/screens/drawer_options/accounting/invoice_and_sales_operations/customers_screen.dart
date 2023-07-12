import 'package:flutter/material.dart';

import '../../../../utils/routes.dart';

class CustomerScreen extends StatefulWidget {
  const CustomerScreen({super.key});

  @override
  State<CustomerScreen> createState() => _CustomerScreenState();
}

class _CustomerScreenState extends State<CustomerScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(top: 40.0, left: 10.0, right: 10.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(height: 10),
            Row(
              children: [
                IconButton(
                  icon: const Icon(Icons.arrow_back, color: Color(0xFF663274)),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                ),
                const SizedBox(width: 45),
                const Text(
                  'Customers',
                  style: TextStyle(
                    color: Color(0xFF663274),
                    fontSize: 30.0,
                    fontWeight: FontWeight.bold,
                  ),
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
              ],
            ),
            GestureDetector(
              onTap: () {
                Navigator.pushNamed(context, addCustomerRoute);
              },
              child: const Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Icon(Icons.add, color: Color(0xFF663274)),
                  Text(
                    "Add Customer",
                    style: TextStyle(color: Color(0xFF663274)),
                  )
                ],
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
            Expanded(
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
                          DataColumn(label: Text('Name')),
                          DataColumn(label: Text('  Mobile')),
                          DataColumn(
                              label: Text(
                            '     Actions',
                          )),
                        ],
                        rows: [
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(
                                Text(
                                  '9876543210',
                                  textAlign: TextAlign.start,
                                ),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, editCustomerRoute);
                                      },
                                      icon: const Icon(Icons.edit_document),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor:
                                                  const Color(0xFFF9E8E3),
                                              title: const Text(
                                                'Do you want to delete this customer ?',
                                                style: TextStyle(
                                                  color: Color(0xFF663274),
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFFEA7B0C),
                                                  ),
                                                  onPressed: () {
                                                    // Implement logic to delete
                                                    Navigator.pop(context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Entry Deleted')),
                                                    );
                                                  },
                                                  child: const Text(
                                                    'YES',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text(
                                                    'NO',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      icon: const Icon(Icons.delete),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(Text('9876543210')),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                            context, editCustomerRoute);
                                        },
                                        icon: const Icon(Icons.edit_document),
                                        color: const Color(0xFFEA7A40)),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor:
                                                    const Color(0xFFF9E8E3),
                                                title: const Text(
                                                  'Do you want to delete this customer ?',
                                                  style: TextStyle(
                                                    color: Color(0xFF663274),
                                                  ),
                                                ),
                                                actions: [
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFEA7B0C),
                                                    ),
                                                    onPressed: () {
                                                      // Implement logic to delete
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Entry Deleted')),
                                                      );
                                                    },
                                                    child: const Text(
                                                      'YES',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'NO',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(Icons.delete),
                                        color: const Color(0xFFEA7A40)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                  textAlign: TextAlign.center,
                                ),
                              )),
                              const DataCell(
                                Text(
                                  '9876543210',
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, editCustomerRoute);
                                      },
                                      icon: const Icon(Icons.edit_document),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor:
                                                  const Color(0xFFF9E8E3),
                                              title: const Text(
                                                'Do you want to delete this customer ?',
                                                style: TextStyle(
                                                  color: Color(0xFF663274),
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFFEA7B0C),
                                                  ),
                                                  onPressed: () {
                                                    // Implement logic to delete
                                                    Navigator.pop(context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Entry Deleted')),
                                                    );
                                                  },
                                                  child: const Text(
                                                    'YES',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text(
                                                    'NO',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      icon: const Icon(Icons.delete),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(Text('9876543210')),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                            context, editCustomerRoute);
                                        },
                                        icon: const Icon(Icons.edit_document),
                                        color: const Color(0xFFEA7A40)),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor:
                                                    const Color(0xFFF9E8E3),
                                                title: const Text(
                                                  'Do you want to delete this customer ?',
                                                  style: TextStyle(
                                                    color: Color(0xFF663274),
                                                  ),
                                                ),
                                                actions: [
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFEA7B0C),
                                                    ),
                                                    onPressed: () {
                                                      // Implement logic to delete
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Entry Deleted')),
                                                      );
                                                    },
                                                    child: const Text(
                                                      'YES',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'NO',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(Icons.delete),
                                        color: const Color(0xFFEA7A40)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(
                                Text(
                                  '9876543210',
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, editCustomerRoute);
                                      },
                                      icon: const Icon(Icons.edit_document),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor:
                                                  const Color(0xFFF9E8E3),
                                              title: const Text(
                                                'Do you want to delete this customer ?',
                                                style: TextStyle(
                                                  color: Color(0xFF663274),
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFFEA7B0C),
                                                  ),
                                                  onPressed: () {
                                                    // Implement logic to delete
                                                    Navigator.pop(context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Entry Deleted')),
                                                    );
                                                  },
                                                  child: const Text(
                                                    'YES',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text(
                                                    'NO',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      icon: const Icon(Icons.delete),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(Text('9876543210')),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                         Navigator.pushNamed(
                                            context, editCustomerRoute);
                                        },
                                        icon: const Icon(Icons.edit_document),
                                        color: const Color(0xFFEA7A40)),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor:
                                                    const Color(0xFFF9E8E3),
                                                title: const Text(
                                                  'Do you want to delete this customer ?',
                                                  style: TextStyle(
                                                    color: Color(0xFF663274),
                                                  ),
                                                ),
                                                actions: [
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFEA7B0C),
                                                    ),
                                                    onPressed: () {
                                                      // Implement logic to delete
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Entry Deleted')),
                                                      );
                                                    },
                                                    child: const Text(
                                                      'YES',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'NO',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(Icons.delete),
                                        color: const Color(0xFFEA7A40)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(
                                Text(
                                  '9876543210',
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                       Navigator.pushNamed(
                                            context, editCustomerRoute);
                                      },
                                      icon: const Icon(Icons.edit_document),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor:
                                                  const Color(0xFFF9E8E3),
                                              title: const Text(
                                                'Do you want to delete this customer ?',
                                                style: TextStyle(
                                                  color: Color(0xFF663274),
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFFEA7B0C),
                                                  ),
                                                  onPressed: () {
                                                    // Implement logic to delete
                                                    Navigator.pop(context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Entry Deleted')),
                                                    );
                                                  },
                                                  child: const Text(
                                                    'YES',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text(
                                                    'NO',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      icon: const Icon(Icons.delete),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(Text('9876543210')),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                         Navigator.pushNamed(
                                            context, editCustomerRoute);
                                        },
                                        icon: const Icon(Icons.edit_document),
                                        color: const Color(0xFFEA7A40)),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor:
                                                    const Color(0xFFF9E8E3),
                                                title: const Text(
                                                  'Do you want to delete this customer ?',
                                                  style: TextStyle(
                                                    color: Color(0xFF663274),
                                                  ),
                                                ),
                                                actions: [
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFEA7B0C),
                                                    ),
                                                    onPressed: () {
                                                      // Implement logic to delete
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Entry Deleted')),
                                                      );
                                                    },
                                                    child: const Text(
                                                      'YES',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'NO',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(Icons.delete),
                                        color: const Color(0xFFEA7A40)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(
                                Text(
                                  '9876543210',
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                        Navigator.pushNamed(
                                            context, editCustomerRoute);
                                      },
                                      icon: const Icon(Icons.edit_document),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor:
                                                  const Color(0xFFF9E8E3),
                                              title: const Text(
                                                'Do you want to delete this customer ?',
                                                style: TextStyle(
                                                  color: Color(0xFF663274),
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFFEA7B0C),
                                                  ),
                                                  onPressed: () {
                                                    // Implement logic to delete
                                                    Navigator.pop(context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Entry Deleted')),
                                                    );
                                                  },
                                                  child: const Text(
                                                    'YES',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text(
                                                    'NO',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      icon: const Icon(Icons.delete),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(Text('9876543210')),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                            context, editCustomerRoute);
                                        },
                                        icon: const Icon(Icons.edit_document),
                                        color: const Color(0xFFEA7A40)),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor:
                                                    const Color(0xFFF9E8E3),
                                                title: const Text(
                                                  'Do you want to delete this customer ?',
                                                  style: TextStyle(
                                                    color: Color(0xFF663274),
                                                  ),
                                                ),
                                                actions: [
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFEA7B0C),
                                                    ),
                                                    onPressed: () {
                                                      // Implement logic to delete
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Entry Deleted')),
                                                      );
                                                    },
                                                    child: const Text(
                                                      'YES',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'NO',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(Icons.delete),
                                        color: const Color(0xFFEA7A40)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(
                                Text(
                                  '9876543210',
                                  textAlign: TextAlign.end,
                                ),
                              ),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                      onPressed: () {
                                       Navigator.pushNamed(
                                            context, editCustomerRoute);
                                      },
                                      icon: const Icon(Icons.edit_document),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                    IconButton(
                                      onPressed: () {
                                        showDialog(
                                          context: context,
                                          builder: (BuildContext context) {
                                            return AlertDialog(
                                              backgroundColor:
                                                  const Color(0xFFF9E8E3),
                                              title: const Text(
                                                'Do you want to delete this customer ?',
                                                style: TextStyle(
                                                  color: Color(0xFF663274),
                                                ),
                                              ),
                                              actions: [
                                                ElevatedButton(
                                                  style:
                                                      ElevatedButton.styleFrom(
                                                    backgroundColor:
                                                        const Color(0xFFEA7B0C),
                                                  ),
                                                  onPressed: () {
                                                    // Implement logic to delete
                                                    Navigator.pop(context);
                                                    ScaffoldMessenger.of(
                                                            context)
                                                        .showSnackBar(
                                                      const SnackBar(
                                                          content: Text(
                                                              'Entry Deleted')),
                                                    );
                                                  },
                                                  child: const Text(
                                                    'YES',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                                ElevatedButton(
                                                  onPressed: () {
                                                    Navigator.pop(context);
                                                  },
                                                  child: const Text(
                                                    'NO',
                                                    style: TextStyle(
                                                      color: Colors.white,
                                                    ),
                                                  ),
                                                ),
                                              ],
                                            );
                                          },
                                        );
                                      },
                                      icon: const Icon(Icons.delete),
                                      color: const Color(0xFFEA7A40),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(Text('9876543210')),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                            context, editCustomerRoute);
                                        },
                                        icon: const Icon(Icons.edit_document),
                                        color: const Color(0xFFEA7A40)),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor:
                                                    const Color(0xFFF9E8E3),
                                                title: const Text(
                                                  'Do you want to delete this customer ?',
                                                  style: TextStyle(
                                                    color: Color(0xFF663274),
                                                  ),
                                                ),
                                                actions: [
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFEA7B0C),
                                                    ),
                                                    onPressed: () {
                                                      // Implement logic to delete
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Entry Deleted')),
                                                      );
                                                    },
                                                    child: const Text(
                                                      'YES',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'NO',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(Icons.delete),
                                        color: const Color(0xFFEA7A40)),
                                  ],
                                ),
                              )
                            ],
                          ),
                          DataRow(
                            color: MaterialStateColor.resolveWith(
                              (states) => Colors.white,
                            ),
                            cells: [
                              const DataCell(Center(
                                child: Text(
                                  'ayratest',
                                ),
                              )),
                              const DataCell(Text('9876543210')),
                              DataCell(
                                Row(
                                  children: [
                                    IconButton(
                                        onPressed: () {
                                          Navigator.pushNamed(
                                            context, editCustomerRoute);
                                        },
                                        icon: const Icon(Icons.edit_document),
                                        color: const Color(0xFFEA7A40)),
                                    IconButton(
                                        onPressed: () {
                                          showDialog(
                                            context: context,
                                            builder: (BuildContext context) {
                                              return AlertDialog(
                                                backgroundColor:
                                                    const Color(0xFFF9E8E3),
                                                title: const Text(
                                                  'Do you want to delete this customer ?',
                                                  style: TextStyle(
                                                    color: Color(0xFF663274),
                                                  ),
                                                ),
                                                actions: [
                                                  ElevatedButton(
                                                    style: ElevatedButton
                                                        .styleFrom(
                                                      backgroundColor:
                                                          const Color(
                                                              0xFFEA7B0C),
                                                    ),
                                                    onPressed: () {
                                                      // Implement logic to delete
                                                      Navigator.pop(context);
                                                      ScaffoldMessenger.of(
                                                              context)
                                                          .showSnackBar(
                                                        const SnackBar(
                                                            content: Text(
                                                                'Entry Deleted')),
                                                      );
                                                    },
                                                    child: const Text(
                                                      'YES',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                  ElevatedButton(
                                                    onPressed: () {
                                                      Navigator.pop(context);
                                                    },
                                                    child: const Text(
                                                      'NO',
                                                      style: TextStyle(
                                                        color: Colors.white,
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              );
                                            },
                                          );
                                        },
                                        icon: const Icon(Icons.delete),
                                        color: const Color(0xFFEA7A40)),
                                  ],
                                ),
                              )
                            ],
                          ),
                        ],
                      ),
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
}
