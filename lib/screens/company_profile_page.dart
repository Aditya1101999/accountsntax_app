// ignore_for_file: use_key_in_widget_constructors, library_private_types_in_public_api

import 'package:flutter/material.dart';

class CompanyProfilePage extends StatefulWidget {
  @override
  _CompanyProfilePageState createState() => _CompanyProfilePageState();
}

class _CompanyProfilePageState extends State<CompanyProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 3, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      
      body: 
      Column(
        children: [
          const SizedBox(height: 75,),
          const Padding(
            padding: EdgeInsets.all(16.0),
            child: Text(
              'Company Profile',
              style: TextStyle(
                fontSize: 30,
                fontWeight: FontWeight.bold,
                color: Color(0xFF663274),
              ),
            ),
          ),
          const SizedBox(height: 30,),
          TabBar(
            controller: _tabController,
            labelColor: const Color(0xFF663274),
            indicatorColor: const Color(0xFF663274),
            tabs: const [
              Tab(
                text: 'Basic Details',
              ),
              Tab(
                text: 'Partner',
              ),
              Tab(
                text: 'Vault',
              ),
            ],
          ),
          Expanded(
            child: TabBarView(
              controller: _tabController,
              children: const [
                Center(child: Text('Basic Details')),
                Center(child: Text('Partner')),
                Center(child: Text('Vault')),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
