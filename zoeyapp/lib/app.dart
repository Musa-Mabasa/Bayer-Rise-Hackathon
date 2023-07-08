import 'package:flutter/material.dart';
import 'package:zoeyapp/home.dart';

class App extends StatefulWidget {
  const App({Key? key}) : super(key: key);

  @override
  AppState createState() => AppState();
}

class AppState extends State<App> {
  int currentIndex = 0;
  final screens = [
    const Home(),
    const Center(child: Text('Community')),
    const Center(child: Text('Calendar')),
    const Center(child: Text('ChatBot')),
    const Center(child: Text('Profile')),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Zoey'),
        centerTitle: true,
        backgroundColor: Color(0xFFff6666),
      ),
      body: screens[currentIndex],
      bottomNavigationBar: BottomNavigationBar(
        type: BottomNavigationBarType.shifting,
        currentIndex: currentIndex,
        onTap: (index) => setState(() {
          currentIndex = index;
        }),
        items: const [
          BottomNavigationBarItem(
            icon: Icon(Icons.home),
            label: 'Home',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.people),
            label: 'Community',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.date_range),
            label: 'Calendar',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.android),
            label: 'ChatBot',
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Profile',
          ),
        ],
        unselectedItemColor: Colors.grey,
        selectedItemColor: const Color(0xFF001C30),
        iconSize: 30,
      ),
    );
  }
}
