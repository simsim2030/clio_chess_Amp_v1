import 'package:flutter/material.dart';
import 'ble_search_page.dart';
import 'offline_chess_page.dart';
import '../homepage_model/homepage_data.dart';
import '../homepage_model/homepage_category_item.dart';

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
        title: const Text("Clio Chess"),
      ),
      body: GridView(
        gridDelegate: SliverGridDelegateWithMaxCrossAxisExtent(
          maxCrossAxisExtent: 200,
          childAspectRatio: 3 / 2,
          crossAxisSpacing: 20,
          mainAxisSpacing: 20,
        ),
        children: HOMEPAGE_CATEGORIES
            .map((catData) => HomeCategoryItem(
                  catData.title,
                  catData.color,
                ))
            .toList(),

        // [
        //   // Chess Button
        //   ElevatedButton(
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => OfflineChessPage()),
        //       );
        //     },
        //     style: ButtonStyle(
        //         backgroundColor:
        //             MaterialStateProperty.all<Color>(Colors.amber)),
        //     child: Text(
        //       'Chessboard',
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
        //   // BLE Button
        //   ElevatedButton(
        //     onPressed: () {
        //       Navigator.push(
        //         context,
        //         MaterialPageRoute(builder: (context) => FlutterBlueApp()),
        //       );
        //     },
        //     style: ButtonStyle(
        //         backgroundColor:
        //             MaterialStateProperty.all<Color>(Colors.blueAccent)),
        //     child: Text(
        //       'Live Chess',
        //       style: TextStyle(
        //         color: Colors.white,
        //       ),
        //     ),
        //   ),
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
        // ],
      ),
    );
  }
}
