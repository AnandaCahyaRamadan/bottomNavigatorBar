import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: BelajarNavBar(),
    );
  }
}

class BelajarNavBar extends StatefulWidget {
  @override
  _BelajarNavBarState createState() => _BelajarNavBarState();
}

class _BelajarNavBarState extends State<BelajarNavBar> {
  int _selectedNavbar = 0;
  final List<Widget> icon = [
    Center(
      child: Icon(
        Icons.call,
        color: Colors.white,
        size: 200,
      ),
    ),
    Center(
      child: Icon(
        Icons.camera_rounded,
        color: Colors.white,
        size: 200,
      ),
    ),
    Center(
      child: Icon(
        Icons.message,
        color: Colors.white,
        size: 200,
      ),
    ),
  ];

  void _changeSelectedNavBar(int index) {
    setState(() {
      _selectedNavbar = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: true,
        title: Text("Belajar Nav Bar"),
        backgroundColor: Colors.black,
      ),
      body: icon[_selectedNavbar],
      backgroundColor: Colors.black,
      bottomNavigationBar: BottomNavigationBar(
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(icon: Icon(Icons.call), label: 'Call'),
          BottomNavigationBarItem(icon: Icon(Icons.camera_rounded), label: 'Camera'),
          BottomNavigationBarItem(icon: Icon(Icons.message), label: 'Chats'),
        ],
        backgroundColor: Colors.black,
        currentIndex: _selectedNavbar,
        selectedItemColor: Colors.green,
        unselectedItemColor: Colors.grey,
        showUnselectedLabels: true,
        onTap: _changeSelectedNavBar,
      ),
    );
  }
}
