import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class MainDrawer extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Drawer(
      child: Column(
        children: [
          Container(
            height: 100,
            width: double.infinity,
            padding: EdgeInsets.all(20),
            alignment: Alignment.centerLeft,
            color: Colors.orangeAccent,
            child: const Text(
              'El Matbakh',
              style: TextStyle(
                  fontWeight: FontWeight.w500,
                  fontSize: 30,
                  color: Colors.white),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          ListTile(
            leading: const Icon(Icons.fastfood_rounded),
            title: const Text("Aklat"),
            onTap: () {
              // Navigator.of(context).pushNamed('/');
              context.push('/'); // push instead of go to allow back arrow to be displayed
            },
          ),
          ListTile(
            leading: const Icon(Icons.settings),
            title: const Text("Settings"),
            onTap: () {
              // Navigator.of(context).pushNamed('/settingsRoute');
              context.push('/setting');// push instead of go to allow back arrow to be displayed
            },
          ),
        ],
      ),
    );
  }
}
