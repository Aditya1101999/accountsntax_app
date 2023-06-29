// ignore_for_file: prefer_const_constructors_in_immutables, library_private_types_in_public_api

import 'package:accountsntax/utils/routes.dart';
import 'package:flutter/material.dart';

const String imgUrl =
    "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";

class CustomDrawer extends StatefulWidget {
  CustomDrawer({Key? key}) : super(key: key);

  @override
  _CustomDrawerState createState() => _CustomDrawerState();
}

class _CustomDrawerState extends State<CustomDrawer> {
  int _selectedTileIndex = -1;
  int _selectedSubTileIndex = -1;
  bool _showSubTiles = false;

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: const Color(0xFFF9E8E3),
      child: ListView(
        children: <Widget>[
          const DrawerHeader(
            decoration: BoxDecoration(
              color: Color(0xFF663274),
            ),
            padding: EdgeInsets.zero,
            child: UserAccountsDrawerHeader(
              margin: EdgeInsets.zero,
              decoration: BoxDecoration(color: Color(0xFF663274)),
              accountName: Text(
                "Aditya",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                  color: Colors.white,
                ),
              ),
              accountEmail: Text(
                "aditya@GMAIL.COM",
                style: TextStyle(
                  fontSize: 15,
                  color: Colors.white,
                ),
              ),
              currentAccountPicture: CircleAvatar(
                backgroundImage: NetworkImage(imgUrl),
                maxRadius: 10,
              ),
            ),
          ),
          ListTile(
            tileColor: _selectedTileIndex == 0 ? Colors.white : null,
            leading: Icon(
              Icons.dashboard,
              color: _selectedTileIndex == 0 ? Colors.black : null,
            ),
            title: Text(
              'Dashboard',
              style: TextStyle(
                color: _selectedTileIndex == 0 ? Colors.black : null,
              ),
            ),
            onTap: () {
              setState(() {
                _selectedTileIndex = 0;
                _selectedSubTileIndex = -1;
                _showSubTiles = false;
              });
              Navigator.pushNamed(context, dashboardRoute);
            },
          ),
          ListTile(
            tileColor: _selectedTileIndex == 1 ? Colors.white : null,
            leading: Icon(
              Icons.account_balance_wallet,
              color: _selectedTileIndex == 1 ? Colors.black : null,
            ),
            title: Text(
              'Accounting',
              style: TextStyle(
                color: _selectedTileIndex == 1 ? Colors.black : null,
              ),
            ),
            trailing: const Icon(Icons.keyboard_arrow_down),
            onTap: () {
              setState(() {
                if (_selectedTileIndex == 1) {
                  _showSubTiles = !_showSubTiles;
                } else {
                  _selectedTileIndex = 1;
                  _selectedSubTileIndex = -1;
                  _showSubTiles = true;
                }
              });
              // code here for the 'Accounting' tile
            },
          ),
          if (_showSubTiles && _selectedTileIndex == 1)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubListTile(0, Icons.description, 'Invoicing/Sales'),
                  _buildSubListTile(1, Icons.shopping_cart, 'Purchase/Expense'),
                  _buildSubListTile(2, Icons.account_balance, 'Cash and Bank'),
                  _buildSubListTile(3, Icons.show_chart, 'Investment'),
                ],
              ),
            ),
          ListTile(
            tileColor: _selectedTileIndex == 2 ? Colors.white : null,
            leading: Icon(
              Icons.calculate,
              color: _selectedTileIndex == 2 ? Colors.black : null,
            ),
            title: Text(
              'Taxes',
              style: TextStyle(
                color: _selectedTileIndex == 2 ? Colors.black : null,
              ),
            ),
            trailing: const Icon(Icons.keyboard_arrow_down),
            onTap: () {
              setState(() {
                if (_selectedTileIndex == 2) {
                  _showSubTiles = !_showSubTiles;
                } else {
                  _selectedTileIndex = 2;
                  _selectedSubTileIndex = -1;
                  _showSubTiles = true;
                }
              });
              //code here for the 'Taxes' tile
            },
          ),
          if (_showSubTiles && _selectedTileIndex == 2)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubListTile(0, Icons.calculate_outlined, 'Income Tax'),
                  _buildSubListTile(1, Icons.calculate_outlined, 'GST'),
                  _buildSubListTile(2, Icons.calculate_outlined, 'TDS'),
                ],
              ),
            ),
          ListTile(
            tileColor: _selectedTileIndex == 3 ? Colors.white : null,
            leading: Icon(
              Icons.pie_chart,
              color: _selectedTileIndex == 3 ? Colors.black : null,
            ),
            title: Text(
              'MIS',
              style: TextStyle(
                color: _selectedTileIndex == 3 ? Colors.black : null,
              ),
            ),
            onTap: () {
              setState(() {
                _selectedTileIndex = 3;
                _selectedSubTileIndex = -1;
                _showSubTiles = false;
              });
              Navigator.pushNamed(context, misScreenRoute);
            },
          ),
          ListTile(
            tileColor: _selectedTileIndex == 4 ? Colors.white : null,
            leading: Icon(
              Icons.settings,
              color: _selectedTileIndex == 4 ? Colors.black : null,
            ),
            title: Text(
              'Settings',
              style: TextStyle(
                color: _selectedTileIndex == 4 ? Colors.black : null,
              ),
            ),
            onTap: () {
              setState(() {
                _selectedTileIndex = 4;
                _selectedSubTileIndex = -1;
                _showSubTiles = false;
              });
              // code here for the 'Settings' tile
            },
          ),
          ListTile(
            tileColor: _selectedTileIndex == 5 ? Colors.white : null,
            leading: Icon(
              Icons.person,
              color: _selectedTileIndex == 5 ? Colors.black : null,
            ),
            title: Text(
              'Profile',
              style: TextStyle(
                color: _selectedTileIndex == 5 ? Colors.black : null,
              ),
            ),
            trailing: const Icon(Icons.keyboard_arrow_down),
            onTap: () {
              setState(() {
                if (_selectedTileIndex == 5) {
                  _showSubTiles = !_showSubTiles;
                } else {
                  _selectedTileIndex = 5;
                  _selectedSubTileIndex = -1;
                  _showSubTiles = true;
                }
              });
              // your code here for the 'Profile' tile
            },
          ),
          if (_showSubTiles && _selectedTileIndex == 5)
            Padding(
              padding: const EdgeInsets.only(left: 16.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildSubListTile(0, Icons.business, 'Company Profile',
                      onTap: () {
                    setState(() {
                      Navigator.pushNamed(context, companyProfileRoute);
                    });
                  }),
                  _buildSubListTile(1, Icons.add, 'Add Company'),
                  _buildSubListTile(2, Icons.update, 'Update Company'),
                ],
              ),
            ),
          ListTile(
            tileColor: _selectedTileIndex == 6 ? Colors.white : null,
            leading: Icon(
              Icons.logout,
              color: _selectedTileIndex == 6 ? Colors.black : null,
            ),
            title: Text(
              'Logout',
              style: TextStyle(
                color: _selectedTileIndex == 6 ? Colors.black : null,
              ),
            ),
            onTap: () {
              setState(() {
                _selectedTileIndex = 6;
                _selectedSubTileIndex = -1;
                _showSubTiles = false;
              });
              //  code here for the 'Logout' tile
            },
          ),
        ],
      ),
    );
  }

  Widget _buildSubListTile(int index, IconData icon, String title,
      {VoidCallback? onTap}) {
    return ListTile(
      tileColor: _selectedSubTileIndex == index ? Colors.white : null,
      leading: Icon(
        icon,
        color: _selectedSubTileIndex == index ? Colors.black : null,
      ),
      title: Text(
        title,
        style: TextStyle(
          color: _selectedSubTileIndex == index ? Colors.black : null,
        ),
      ),
      onTap: onTap ??
          () {
            setState(() {
              _selectedSubTileIndex = index;
            });
            // code here for the subtile
          },
    );
  }
}
