import 'package:flutter/material.dart';
import '../screens/home_screen.dart';

class MenuList extends StatelessWidget {
  const MenuList({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Drawer(
      backgroundColor: Colors.white,
      child: Column(
        children: [
          const UserAccountsDrawerHeader(
            accountName: Text('Momen Mansour'),
            accountEmail: Text('momennbil2019@gmail.com'),
            currentAccountPicture: CircleAvatar(
              backgroundImage: AssetImage('images/me.jpg'),
            ),
          ),
          ListTile(
            leading: const Icon(Icons.home),
            title: const Text('Home'),
            onTap: () {
              // Navigate to the home screen
              Navigator.of(context).pushReplacement(
                  MaterialPageRoute(builder: (_) => HomeScreen()));
            },
          ),
          ListTile(
            leading: const Icon(
              Icons.insert_drive_file,
            ),
            title: const Text('Type your task'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.archive),
            title: const Text('Archive'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.delete),
            title: const Text('Trash'),
            onTap: () {},
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text('Settings'),
            onTap: () {},
          ),
        ],
      ),
    );
  }
}
