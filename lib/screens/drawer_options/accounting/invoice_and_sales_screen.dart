// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

class InvoiceAndSalesScreen extends StatefulWidget {
  const InvoiceAndSalesScreen({super.key});

  @override
  State<InvoiceAndSalesScreen> createState() => _InvoiceAndSalesScreenState();
}

class _InvoiceAndSalesScreenState extends State<InvoiceAndSalesScreen> {
  @override
  Widget build(BuildContext context) {
    void _showCommentDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Add Comments',
                style: TextStyle(color: Color(0xFF663274))),
            backgroundColor: const Color(0xFFF9E8E3),
            content: SizedBox(
              width: double.maxFinite,
              child: TextFormField(
                maxLines: null,
                decoration: const InputDecoration(
                    filled: true, fillColor: Colors.white, hintText: 'Comment'),
              ),
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEA7B0C),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Comments updated'),
                    ),
                  );
                },
                child: const Text('Save'),
              ),
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

    void _showVoiceDialog(BuildContext context) {
      showDialog(
        context: context,
        builder: (BuildContext context) {
          return AlertDialog(
            title: const Text('Upload Voice Note',
                style: TextStyle(color: Color(0xFF663274))),
            backgroundColor: const Color(0xFFF9E8E3),
            content: SizedBox(
              width: double.maxFinite,
              child: TextFormField(
                maxLines: null,
                decoration: InputDecoration(
                  filled: true,
                  fillColor: Colors.white,
                  hintText: 'Voice Note',
                  suffixIcon: IconButton(
                    icon: const Icon(Icons.mic, color: Color(0xFF663274)),
                    onPressed: () {
                      // Handle voice note recording here
                    },
                  ),
                ),
              ),
            ),
            actions: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: const Color(0xFFEA7B0C),
                ),
                onPressed: () {
                  Navigator.pop(context);
                  ScaffoldMessenger.of(context).showSnackBar(
                    const SnackBar(
                      content: Text('Note updated'),
                    ),
                  );
                },
                child: const Text('Save'),
              ),
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

    return Scaffold(
      appBar: AppBar(title: const Text('Invoicing/Sales')),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                            Icons.handshake_sharp,
                            color: Color(0xFFEA7A40),
                          ),
                          onPressed: () {
                            // Handle receivable button tap
                          },
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text('Receivable'),
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
                            Navigator.pushNamed(context, customerRoute);
                          },
                        ),
                      ),
                      const SizedBox(height: 8.0),
                      const Text('Customers'),
                    ],
                  ),
                ],
              ),
            ),
            const SizedBox(height: 10),
            Row(children: [
              const Text(
                '   Invoicing Data',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF663274),
                ),
              ),
              const SizedBox(width: 28.0),
              const Icon(
                Icons.file_upload,
                size: 32,
                color: Color(0xFFEA7A40),
              ),
              const SizedBox(width: 18.0),
              IconButton(
                icon: const Icon(
                  Icons.add_circle_outline,
                  size: 32,
                  color: Color(0xFFEA7A40),
                ),
                onPressed: () {
                  // Handle add button
                },
              ),
            ]),
            const SizedBox(height: 10),
            SizedBox(
              width: MediaQuery.of(context).size.width * 0.99,
              child: SingleChildScrollView(
                child: Theme(
                  data: Theme.of(context).copyWith(
                    dividerColor: const Color(0xFFEA7B0C),
                  ),
                  child: DataTable(
                    dividerThickness: 1.0,
                    columns: const [
                      DataColumn(label: Text('  Date')),
                      DataColumn(label: Text('Type')),
                      DataColumn(
                          label: Text(
                        '        Actions',
                      )),
                    ],
                    rows: [
                      DataRow(
                        color: MaterialStateColor.resolveWith(
                          (states) => Colors.white,
                        ),
                        cells: [
                          const DataCell(Center(
                            child: Expanded(
                              child: Text(
                                '28Janall',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                          const DataCell(
                            Text(
                              'Sales',
                              textAlign: TextAlign.end,
                            ),
                          ),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _showCommentDialog(context);
                                  },
                                  icon: const Icon(Icons.comment),
                                  color: const Color(0xFFEA7A40),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _showVoiceDialog(context);
                                  },
                                  icon: const Icon(Icons.mic_none),
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
                                            'Do you want to delete this entry ?',
                                            style: TextStyle(
                                              color: Color(0xFF663274),
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFEA7B0C),
                                              ),
                                              onPressed: () {
                                                // Implement logic to delete
                                                Navigator.pop(context);
                                                ScaffoldMessenger.of(context)
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
                          const DataCell(Text(
                            '28Janall',
                          )),
                          const DataCell(Text('Invoice')),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _showCommentDialog(context);
                                    },
                                    icon: const Icon(Icons.comment),
                                    color: const Color(0xFFEA7A40)),
                                IconButton(
                                    onPressed: () {
                                      _showVoiceDialog(context);
                                    },
                                    icon: const Icon(Icons.mic_none),
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
                                              'Do you want to delete this entry ?',
                                              style: TextStyle(
                                                color: Color(0xFF663274),
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFFEA7B0C),
                                                ),
                                                onPressed: () {
                                                  // Implement logic to delete
                                                  Navigator.pop(context);
                                                  ScaffoldMessenger.of(context)
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
                            child: Expanded(
                              child: Text(
                                '28Janall',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                          const DataCell(
                            Text(
                              'Sales',
                              textAlign: TextAlign.end,
                            ),
                          ),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _showCommentDialog(context);
                                  },
                                  icon: const Icon(Icons.comment),
                                  color: const Color(0xFFEA7A40),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _showVoiceDialog(context);
                                  },
                                  icon: const Icon(Icons.mic_none),
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
                                            'Do you want to delete this entry ?',
                                            style: TextStyle(
                                              color: Color(0xFF663274),
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFEA7B0C),
                                              ),
                                              onPressed: () {
                                                // Implement logic to delete
                                                Navigator.pop(context);
                                                ScaffoldMessenger.of(context)
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
                          const DataCell(Text(
                            '28Janall',
                          )),
                          const DataCell(Text('Invoice')),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _showCommentDialog(context);
                                    },
                                    icon: const Icon(Icons.comment),
                                    color: const Color(0xFFEA7A40)),
                                IconButton(
                                    onPressed: () {
                                      _showVoiceDialog(context);
                                    },
                                    icon: const Icon(Icons.mic_none),
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
                                              'Do you want to delete this entry ?',
                                              style: TextStyle(
                                                color: Color(0xFF663274),
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFFEA7B0C),
                                                ),
                                                onPressed: () {
                                                  // Implement logic to delete
                                                  Navigator.pop(context);
                                                  ScaffoldMessenger.of(context)
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
                            child: Expanded(
                              child: Text(
                                '28Janall',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                          const DataCell(
                            Text(
                              'Sales',
                              textAlign: TextAlign.end,
                            ),
                          ),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _showCommentDialog(context);
                                  },
                                  icon: const Icon(Icons.comment),
                                  color: const Color(0xFFEA7A40),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _showVoiceDialog(context);
                                  },
                                  icon: const Icon(Icons.mic_none),
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
                                            'Do you want to delete this entry ?',
                                            style: TextStyle(
                                              color: Color(0xFF663274),
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFEA7B0C),
                                              ),
                                              onPressed: () {
                                                // Implement logic to delete
                                                Navigator.pop(context);
                                                ScaffoldMessenger.of(context)
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
                          const DataCell(Text(
                            '28Janall',
                          )),
                          const DataCell(Text('Invoice')),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _showCommentDialog(context);
                                    },
                                    icon: const Icon(Icons.comment),
                                    color: const Color(0xFFEA7A40)),
                                IconButton(
                                    onPressed: () {
                                      _showVoiceDialog(context);
                                    },
                                    icon: const Icon(Icons.mic_none),
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
                                              'Do you want to delete this entry ?',
                                              style: TextStyle(
                                                color: Color(0xFF663274),
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFFEA7B0C),
                                                ),
                                                onPressed: () {
                                                  // Implement logic to delete
                                                  Navigator.pop(context);
                                                  ScaffoldMessenger.of(context)
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
                            child: Expanded(
                              child: Text(
                                '28Janall',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                          const DataCell(
                            Text(
                              'Sales',
                              textAlign: TextAlign.end,
                            ),
                          ),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _showCommentDialog(context);
                                  },
                                  icon: const Icon(Icons.comment),
                                  color: const Color(0xFFEA7A40),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _showVoiceDialog(context);
                                  },
                                  icon: const Icon(Icons.mic_none),
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
                                            'Do you want to delete this entry ?',
                                            style: TextStyle(
                                              color: Color(0xFF663274),
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFEA7B0C),
                                              ),
                                              onPressed: () {
                                                // Implement logic to delete
                                                Navigator.pop(context);
                                                ScaffoldMessenger.of(context)
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
                          const DataCell(Text(
                            '28Janall',
                          )),
                          const DataCell(Text('Invoice')),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _showCommentDialog(context);
                                    },
                                    icon: const Icon(Icons.comment),
                                    color: const Color(0xFFEA7A40)),
                                IconButton(
                                    onPressed: () {
                                      _showVoiceDialog(context);
                                    },
                                    icon: const Icon(Icons.mic_none),
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
                                              'Do you want to delete this entry ?',
                                              style: TextStyle(
                                                color: Color(0xFF663274),
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFFEA7B0C),
                                                ),
                                                onPressed: () {
                                                  // Implement logic to delete
                                                  Navigator.pop(context);
                                                  ScaffoldMessenger.of(context)
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
                            child: Expanded(
                              child: Text(
                                '28Janall',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                          const DataCell(
                            Text(
                              'Sales',
                              textAlign: TextAlign.end,
                            ),
                          ),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _showCommentDialog(context);
                                  },
                                  icon: const Icon(Icons.comment),
                                  color: const Color(0xFFEA7A40),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _showVoiceDialog(context);
                                  },
                                  icon: const Icon(Icons.mic_none),
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
                                            'Do you want to delete this entry ?',
                                            style: TextStyle(
                                              color: Color(0xFF663274),
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFEA7B0C),
                                              ),
                                              onPressed: () {
                                                // Implement logic to delete
                                                Navigator.pop(context);
                                                ScaffoldMessenger.of(context)
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
                          const DataCell(Text(
                            '28Janall',
                          )),
                          const DataCell(Text('Invoice')),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _showCommentDialog(context);
                                    },
                                    icon: const Icon(Icons.comment),
                                    color: const Color(0xFFEA7A40)),
                                IconButton(
                                    onPressed: () {
                                      _showVoiceDialog(context);
                                    },
                                    icon: const Icon(Icons.mic_none),
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
                                              'Do you want to delete this entry ?',
                                              style: TextStyle(
                                                color: Color(0xFF663274),
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFFEA7B0C),
                                                ),
                                                onPressed: () {
                                                  // Implement logic to delete
                                                  Navigator.pop(context);
                                                  ScaffoldMessenger.of(context)
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
                            child: Expanded(
                              child: Text(
                                '28Janall',
                                textAlign: TextAlign.center,
                              ),
                            ),
                          )),
                          const DataCell(
                            Text(
                              'Sales',
                              textAlign: TextAlign.end,
                            ),
                          ),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                  onPressed: () {
                                    _showCommentDialog(context);
                                  },
                                  icon: const Icon(Icons.comment),
                                  color: const Color(0xFFEA7A40),
                                ),
                                IconButton(
                                  onPressed: () {
                                    _showVoiceDialog(context);
                                  },
                                  icon: const Icon(Icons.mic_none),
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
                                            'Do you want to delete this entry ?',
                                            style: TextStyle(
                                              color: Color(0xFF663274),
                                            ),
                                          ),
                                          actions: [
                                            ElevatedButton(
                                              style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    const Color(0xFFEA7B0C),
                                              ),
                                              onPressed: () {
                                                // Implement logic to delete
                                                Navigator.pop(context);
                                                ScaffoldMessenger.of(context)
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
                          const DataCell(Text(
                            '28Janall',
                          )),
                          const DataCell(Text('Invoice')),
                          DataCell(
                            Row(
                              children: [
                                IconButton(
                                    onPressed: () {
                                      _showCommentDialog(context);
                                    },
                                    icon: const Icon(Icons.comment),
                                    color: const Color(0xFFEA7A40)),
                                IconButton(
                                    onPressed: () {
                                      _showVoiceDialog(context);
                                    },
                                    icon: const Icon(Icons.mic_none),
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
                                              'Do you want to delete this entry ?',
                                              style: TextStyle(
                                                color: Color(0xFF663274),
                                              ),
                                            ),
                                            actions: [
                                              ElevatedButton(
                                                style: ElevatedButton.styleFrom(
                                                  backgroundColor:
                                                      const Color(0xFFEA7B0C),
                                                ),
                                                onPressed: () {
                                                  // Implement logic to delete
                                                  Navigator.pop(context);
                                                  ScaffoldMessenger.of(context)
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
          ],
        ),
      ),
    );
  }
}
