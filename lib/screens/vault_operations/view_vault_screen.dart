// ignore_for_file: library_private_types_in_public_api, avoid_unnecessary_containers

import 'package:flutter/material.dart';

class ViewVaultDetailsScreen extends StatelessWidget {
  const ViewVaultDetailsScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(20.0),
        child: ListView(
          children: [
            SizedBox(
              height: 50,
              child: IconButton(
                icon: const Icon(Icons.arrow_back,color:Color(0xFF663274)),
                onPressed: () {
                  Navigator.pop(context);
                },
                alignment: Alignment.centerLeft,
              ),
            ),
            Container(
              child: const Text(
                'Vault Details',
                style: TextStyle(
                  fontWeight: FontWeight.bold,
                  fontSize: 30,
                  color: Color(0xFF663274),
                ),
                textAlign: TextAlign.center,
              ),
            ),
            const SizedBox(height: 30),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Type of Registration',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller:
                      TextEditingController(text: 'INCOMETAX'),
                  readOnly: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: Color(0xFF663274)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Registration Number',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: TextEditingController(text: 'ITR0012348'),
                  readOnly: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: Color(0xFF663274)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Username',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: TextEditingController(text: 'john06@gmail.com'),
                  readOnly: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: Color(0xFF663274)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Password',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: TextEditingController(text: 'password'),
                  readOnly: true,
                  obscureText: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: Color(0xFF663274)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Expiry Date',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: TextEditingController(text: 'Invalid Date'),
                  readOnly: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: Color(0xFF663274)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                const Text(
                  'Certificate',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    color: Color(0xFF663274),
                  ),
                ),
                const SizedBox(height: 5),
                TextFormField(
                  controller: TextEditingController(text: '1687872035821.png'),
                  readOnly: true,
                  decoration: InputDecoration(
                    filled: true,
                    fillColor: Colors.white,
                    enabledBorder: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(8.0),
                      borderSide: const BorderSide(color: Color(0xFF663274)),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                      horizontal: 16.0,
                      vertical: 12.0,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
