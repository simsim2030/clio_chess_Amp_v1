import 'package:flutter/material.dart';

class SettingPage extends StatelessWidget {
  static const routeName = '/setting_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Settings'),
      ),
      body: Center(
        child: Text('Setting'),
      ),
    );
  }
}
