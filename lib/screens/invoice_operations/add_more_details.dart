import 'package:flutter/material.dart';

class AddMoreDetailsScreen extends StatelessWidget {
  const AddMoreDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Row(
            children: [
              Expanded(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(
                      height: 10,
                    ),
                    Text('John Doe'),
                    SizedBox(width: 8.0),
                    Icon(Icons.arrow_drop_down),
                    SizedBox(width: 8.0),
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
            ])));
  }
}
