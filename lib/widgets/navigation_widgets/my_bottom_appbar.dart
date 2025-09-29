import 'package:flutter/material.dart';

class MyBottomAppbar extends StatefulWidget {
  const MyBottomAppbar({super.key});

  @override
  State<MyBottomAppbar> createState() => _MyBottomAppbarState();
}

class _MyBottomAppbarState extends State<MyBottomAppbar> {
  List<Widget> tabs = [Text("Home"), Text("Search"), Text("Profile")];
  int _currentIndex = 0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("My Bottom AppBar")),
      body: Center(child: tabs[_currentIndex]),
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: _currentIndex,
        onTap: (index) {
          print(index);
          setState(() {
            _currentIndex = index;
          });
        },
        items: [
          BottomNavigationBarItem(label: "Home", icon: Icon(Icons.home)),
          BottomNavigationBarItem(label: "Search", icon: Icon(Icons.search)),
          BottomNavigationBarItem(label: "Profile", icon: Icon(Icons.person)),
        ],
      ),
    );
  }
}
