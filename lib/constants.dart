import 'package:flutter/material.dart';

var myDefaultBgColor = Colors.grey.shade300;

AppBar myAppBar(String title) => AppBar(
  title: Text(title),
  centerTitle: true,
  backgroundColor: Colors.grey.shade500,
);

var myDrawer = Drawer(
  backgroundColor: myDefaultBgColor,
  child: Column(
    children: [
      DrawerHeader(child: Icon(Icons.favorite)),
      ListTile(leading: Icon(Icons.home), title: Text('Dashboard')),
      ListTile(leading: Icon(Icons.inbox), title: Text('Inbox')),
      ListTile(leading: Icon(Icons.favorite), title: Text('Favorites')),
      ListTile(leading: Icon(Icons.person), title: Text('Profile')),
      ListTile(leading: Icon(Icons.settings), title: Text('Settings')),
      ListTile(leading: Icon(Icons.logout), title: Text('Logout')),
    ],
  ),
);
