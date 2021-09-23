import 'package:clio_chess_app/pages/setting_page.dart';
import 'package:flutter/material.dart';
import 'ble_search_page.dart';
import 'offline_chess_page.dart';
// import '../homepage_model/homepage_data.dart';
// import '../homepage_model/homepage_category_item.dart';

class MainScreen extends StatelessWidget {
  static const routeName = '/home_page';
  @override
//   _MainScreenState createState() => _MainScreenState();
// }

// class _MainScreenState extends State<MainScreen> {
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: Icon(Icons.menu),
          onPressed: () {
            //
          },
        ),
        title: const Text("Clio Chess"),
      ),
      body: GridView(
        padding: const EdgeInsets.all(25),
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: [
          // Chess Button
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, OfflineChessPage.routeName);
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.amber)),
            child: Text(
              'Chessboard',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          // BLE Button
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, FindDevicesScreen.routeName);
            },
            style: ButtonStyle(
                backgroundColor:
                    MaterialStateProperty.all<Color>(Colors.blueAccent)),
            child: Text(
              'Live Chess',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          // Setting Button
          ElevatedButton(
            onPressed: () {
              Navigator.pushNamed(context, SettingPage.routeName);
            },
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all<Color>(Colors.green),
            ),
            child: Text(
              'Settings',
              style: TextStyle(
                color: Colors.white,
              ),
            ),
          ),
          // // Data Testing Button
          // ElevatedButton(
          //   onPressed: () {
          //     Navigator.push(
          //       context,
          //       MaterialPageRoute(builder: (context) => setting()),
          //     );
          //   },
          //   style: ButtonStyle(
          //       backgroundColor:
          //           MaterialStateProperty.all<Color>(Colors.blueAccent)),
          //   child: Text(
          //     'Data Test',
          //     style: TextStyle(
          //       color: Colors.white,
          //     ),
          //   ),
          // ),
        ],
      ),
    );
  }
}
