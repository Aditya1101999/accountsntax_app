import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomDrawer extends StatelessWidget {
   String imgUrl = "https://images.unsplash.com/photo-1500648767791-00dcc994a43e?ixlib=rb-4.0.3&ixid=MnwxMjA3fDB8MHxwaG90by1wYWdlfHx8fGVufDB8fHx8&auto=format&fit=crop&w=387&q=80";

  CustomDrawer({super.key});
  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Color(0xFFF9E8E3),
      child: ListView(
        children: [
          DrawerHeader(
            decoration:  BoxDecoration(
             color: Color(0xFF663274),
             ),
                padding: EdgeInsets.zero,
                child: UserAccountsDrawerHeader(
                    margin: EdgeInsets.zero,
                    decoration: BoxDecoration(color: Color(0xFF663274)),
                    accountName: Text(
                      "Aditya",
                      style: TextStyle(fontSize: 20,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                    ),
                    accountEmail: Text(
                      "aditya@GMAIL.COM",
                      style: TextStyle(fontSize: 15,
                      color: Colors.white),
                    ),
                    currentAccountPicture: CircleAvatar(
                      backgroundImage: NetworkImage(imgUrl),
                      maxRadius: 10,
                    ))),
          ListTile(
            leading: Icon(Icons.dashboard),
            title: Text('Dashboard'),
            onTap: () {
              // Handle drawer item tap
            },
          ),
          ListTile(
            leading: Icon(Icons.account_balance_wallet),
            title: Text('Wallet'),
            onTap: () {
              // Handle drawer item tap
            },
          ),
          ListTile(
            leading: Icon(Icons.settings),
            title: Text('Settings'),
            onTap: () {
              // Handle drawer item tap
            },
          ),
          ListTile(
            leading: Icon(Icons.logout),
            title: Text('Logout'),
            onTap: () {
              // Handle drawer item tap
            },
          ),
        ],
      ),
    );
  }
}
