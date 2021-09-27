import 'package:flutter/material.dart';

class TabScreen extends StatefulWidget {
  @override
  _TabScreenState createState() => _TabScreenState();
}

class _TabScreenState extends State<TabScreen> {
void _selectPage (int index){

}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Clio Chess'),
      ),
      body: null,
      bottomNavigationBar: BottomNavigationBar(
        onTap: _selectPage,
        backgroundColor: Theme.of(context).primaryColor,
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
