import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clio Chess',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
      ),
      home: MainScreen(),
    );
  }
}
