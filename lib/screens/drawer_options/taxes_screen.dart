import 'package:flutter/material.dart';

class TaxesScreen extends StatefulWidget {
  const TaxesScreen({Key? key}) : super(key: key);

  @override
  State<TaxesScreen> createState() => _TaxesScreenState();
}

class _TaxesScreenState extends State<TaxesScreen>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(
      length: 4,
      vsync: this,
      initialIndex: 0, // Add this line to set the initial tab index
    );
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(height: 30),
            SizedBox(
              height: 50,
              child: IconButton(
                icon: const Icon(Icons.arrow_back, color: Color(0xFF663274)),
                onPressed: () {
                  Navigator.pop(context);
                },
                alignment: Alignment.centerLeft,
              ),
            ),
            const Text(
              'Taxes',
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 30,
                color: Color(0xFF663274),
              ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 30),
            TabBar(
              controller: _tabController,
              labelColor: const Color(0xFF663274),
              indicatorColor: const Color(0xFF663274),
              tabs: const [
                Tab(
                  text: 'ITR',
                ),
                Tab(
                  text: 'GST',
                ),
                Tab(
                  text: 'TDS',
                ),
                Tab(
                  text: 'Others',
                ),
              ],
            ),
            Expanded(
              child: TabBarView(
                controller: _tabController,
                children: [
                  ListView(
                    children: const [
                      //ITR Content
                    ],
                  ),
                  ListView(
                    children: const [
                      //GST Content
                    ],
                  ),
                  ListView(
                    children: const [
                      //TDS Content
                    ],
                  ),
                  ListView(
                    children: const [
                      //Others Content
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
