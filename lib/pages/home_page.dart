import 'package:flutter/material.dart';
import 'ble_search_page.dart';
import 'offline_chess_page.dart';

class MainScreen extends StatelessWidget {
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
        title: Text("Clio Chess App"),
        actions: <Widget>[
          IconButton(
              icon: Icon(Icons.search),
              onPressed: () {
                //
              }),
        ],
      ),
      body: Center(
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            // Chess Button
            ElevatedButton(
              onPressed: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => OfflineChessPage()),
                );
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
                Navigator.push(
                  context,
                  MaterialPageRoute(builder: (context) => FlutterBlueApp()),
                );
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
            // Data Testing Button
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
      ),
    );
  }
}
