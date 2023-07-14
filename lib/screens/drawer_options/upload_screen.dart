// ignore_for_file: no_leading_underscores_for_local_identifiers

import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

class UploadScreen extends StatefulWidget {
  const UploadScreen({Key? key}) : super(key: key);

  @override
  State<UploadScreen> createState() => _UploadScreenState();
}

class _UploadScreenState extends State<UploadScreen> {
  String selectedVoucherType = 'Option 1';
  late TextEditingController _dateController;

  @override
  void initState() {
    super.initState();
    _dateController = TextEditingController();
  }

  String _getCurrentDate() {
    DateTime currentDate = DateTime.now();
    String formattedDate = currentDate.toString().split(' ')[0];
    return formattedDate;
  }

  @override
  void dispose() {
    super.dispose();
  }

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
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Color(0xFF663274),
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        backgroundColor: const Color(0xFFF9E8E3),
        elevation: 0,
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Center(
              child: Text(
                'Bulk Upload',
                style: TextStyle(
                  color: Color(0xFF663274),
                  fontSize: 30,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(height: 28),
            Row(
              children: [
                const Spacer(),
                GestureDetector(
                  onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, createInvoiceRoute);
                    });
                  },
                  child: const Row(
                    children: [
                      Icon(
                        Icons.add,
                        color: Color(0xFF663274),
                      ),
                      Text(
                        'Create New',
                        style: TextStyle(
                            color: Color(0xFF663274),
                            fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                ),
              ],
            ),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Type',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF663274)),
              ),
            ),
            const SizedBox(height: 5),
            DropdownButtonFormField<String>(
              value: selectedVoucherType,
              items: const [
                DropdownMenuItem<String>(
                  value: 'Option 1',
                  child: Text('Option 1'),
                ),
                DropdownMenuItem<String>(
                  value: 'Option 2',
                  child: Text('Option 2'),
                ),
                DropdownMenuItem<String>(
                  value: 'Option 3',
                  child: Text('Option 3'),
                ),
                DropdownMenuItem<String>(
                  value: 'Option 4',
                  child: Text('Option 4'),
                ),
              ],
              onChanged: (value) {
                setState(() {
                  selectedVoucherType = value!;
                });
              },
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                hintText: 'Voucher Type',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Select Duration',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF663274)),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              controller: _dateController,
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                hintText: "${_getCurrentDate()} to ${_getCurrentDate()}",
                hintStyle: const TextStyle(color: Colors.grey),
                suffixIcon: InkWell(
                  onTap: () {
                    // Calendar icon click logic
                  },
                  child: const Icon(
                    Icons.calendar_today,
                    color: Color(0xFF663274),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 16),
            const Align(
              alignment: Alignment.centerLeft,
              child: Text(
                'Upload Document',
                style: TextStyle(
                    fontWeight: FontWeight.bold, color: Color(0xFF663274)),
              ),
            ),
            const SizedBox(height: 5),
            TextFormField(
              decoration: InputDecoration(
                enabledBorder: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8.0),
                  borderSide: const BorderSide(color: Color(0xFF663274)),
                ),
                filled: true,
                fillColor: Colors.white,
                contentPadding: const EdgeInsets.symmetric(
                    horizontal: 16.0, vertical: 12.0),
                hintText: 'Upload Document',
                hintStyle: const TextStyle(color: Colors.grey),
              ),
            ),
            const SizedBox(height: 10),
            Expanded(
              child: SafeArea(
                child: SizedBox(
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
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showCommentDialog(context);
                                        },
                                        icon: const Icon(Icons.comment),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showVoiceDialog(context);
                                        },
                                        icon: const Icon(Icons.mic_none),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
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
                                        color: const Color(0xFFEA7A40),
                                      ),
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
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showCommentDialog(context);
                                        },
                                        icon: const Icon(Icons.comment),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showVoiceDialog(context);
                                        },
                                        icon: const Icon(Icons.mic_none),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
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
                                        color: const Color(0xFFEA7A40),
                                      ),
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
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showCommentDialog(context);
                                        },
                                        icon: const Icon(Icons.comment),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showVoiceDialog(context);
                                        },
                                        icon: const Icon(Icons.mic_none),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
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
                                        color: const Color(0xFFEA7A40),
                                      ),
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
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showCommentDialog(context);
                                        },
                                        icon: const Icon(Icons.comment),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showVoiceDialog(context);
                                        },
                                        icon: const Icon(Icons.mic_none),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
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
                                        color: const Color(0xFFEA7A40),
                                      ),
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
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showCommentDialog(context);
                                        },
                                        icon: const Icon(Icons.comment),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
                                        onPressed: () {
                                          _showVoiceDialog(context);
                                        },
                                        icon: const Icon(Icons.mic_none),
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                    SizedBox(
                                      width: 35,
                                      child: IconButton(
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
                                        color: const Color(0xFFEA7A40),
                                      ),
                                    ),
                                  ],
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
            const SizedBox(height: 33),
            Center(
              child: SizedBox(
                width: 150,
                height: 48,
                child: ElevatedButton(
                  onPressed: () {
                    Navigator.pop(context);
                    ScaffoldMessenger.of(context).showSnackBar(
                      const SnackBar(
                        content: Text('Uploaded Successfully'),
                      ),
                    );
                  },
                  style: ElevatedButton.styleFrom(
                    backgroundColor: const Color(0xFFEA7B0C),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8.0),
                    ),
                  ),
                  child: const Text(
                    'Upload',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 22,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(height: 30)
          ],
        ),
      ),
    );
  }
}
