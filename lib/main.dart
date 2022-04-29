import 'package:clio_chess_app/Screens/Welcomes/welcome_screen.dart';
import 'package:clio_chess_app/pages/history_page.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'pages/ble_search_page.dart';
import 'pages/offline_chess_page.dart';
import 'pages/setting_page.dart';
import 'pages/tab_menu.dart';
import 'pages/home_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Clio Chess Auth',
      theme: ThemeData(
        primarySwatch: Colors.blueGrey,
        accentColor: Colors.white,
        canvasColor: Color.fromRGBO(255, 254, 229, 1),
        fontFamily: 'Raleway-Bold',
        textTheme: ThemeData.light().textTheme.copyWith(
            bodyText1: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            bodyText2: TextStyle(color: Color.fromRGBO(20, 51, 51, 1)),
            headline1: TextStyle(
                fontSize: 20,
                fontFamily: 'RobotoCondensed',
                fontWeight: FontWeight.bold,
                color: Colors.white)),
      ),
      home: WelcomeScreen(),

      // home: MainScreen(),
      // initialRoute: '/',
      routes: {
        FindDevicesScreen.routeName: (ctx) => FindDevicesScreen(),
        TabScreen.routeName: (ctx) => TabScreen(),
        SettingPage.routeName: (ctx) => SettingPage(),
        HistoryPage.routeName: (ctx) => HistoryPage(),
        OfflineChessPage.routeName: (ctx) => OfflineChessPage(),

        // '/': (ctx) => MainScreen(),
      },
    );
  }
}
