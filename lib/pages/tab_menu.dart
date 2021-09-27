import 'package:flutter/material.dart';
import 'offline_chess_page.dart';
import 'ble_search_page.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
  final List<Widget> _pages = [
    OfflineChessPage(),
    FindDevicesScreen(),
  ];
  int _selectedPageIndex = 0;

  void _selectPage(int index) {
    setState(() {
      _selectedPageIndex = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // appBar: AppBar(
      //   title: Text('Clio Chess'),
      // ),
      body: _pages[_selectedPageIndex],
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
        unselectedItemColor: Colors.blueGrey[900],
        selectedItemColor: Colors.white,
        currentIndex: _selectedPageIndex,
        items: [
          BottomNavigationBarItem(
            icon: Icon(Icons.apps_rounded),
            title: Text('CB'),
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.alarm_rounded),
            title: Text('Live'),
          ),
        ],
      ),
    );
  }
}
