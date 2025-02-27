// ignore_for_file: prefer_const_literals_to_create_immutables, prefer_const_constructors

import 'package:flutter/material.dart';
import 'package:foodapp/pages/body.dart';
import 'package:foodapp/pages/settings.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  final List<Widget> pages = [BodyPart(), Settings(), Settings()];
  int current_index = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("CSEPL 2025"),
        backgroundColor: Colors.blue,
        actions: [
          Text("sahib"),
          SizedBox(
              width: 8), 
          CircleAvatar(
            backgroundImage: AssetImage(
                "assets/images/circleavatar.png"), 
          ),
          SizedBox(width: 16),
        ],
      ),
      body: pages[current_index],
      bottomNavigationBar: BottomNavigationBar(
          currentIndex: current_index,
          onTap: (index) {
            setState(() {
              current_index = index;
            });
          },
          items: [
            BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
            BottomNavigationBarItem(
                icon: Icon(Icons.settings), label: "Settings"),
            BottomNavigationBarItem(icon: Icon(Icons.search), label: "Search")
          ]),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                color: Colors.blue,
              ),
              child: Text(
                'Menu',
                style: TextStyle(
                  color: Colors.white,
                  fontSize: 24,
                ),
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.settings),
              title: Text('Settings'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.person),
              title: Text('Profile'),
              onTap: () {
                
              },
            ),
            ListTile(
              leading: Icon(Icons.logout),
              title: Text('Logout'),
              onTap: () {
                
              },
            ),
          ],
        ),
      ),
    );
  }
}
