import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/home_page.dart';
import 'pages/ble_search_page.dart';
import 'pages/offline_chess_page.dart';
import 'pages/setting_page.dart';
import 'pages/tab_menu.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clio Chess',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.white,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway-Bold',
        textTheme: ThemeData.light().textTheme.copyWith(
            body1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            body2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            title: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      home: TabScreen(),

      // home: MainScreen(),
      // initialRoute: '/',
      // routes: {
      //   FindDevicesScreen.routeName: (ctx) => FindDevicesScreen(),
      //   OfflineChessPage.routeName: (ctx) => OfflineChessPage(),
      //   SettingPage.routeName: (ctx) => SettingPage(),
      //   '/': (ctx) => MainScreen(),
      // },
    );
  }
}
