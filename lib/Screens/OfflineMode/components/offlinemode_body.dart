import 'package:clio_chess_app/Screens/ChessClock/chessclock.dart';
import 'package:clio_chess_app/Screens/OfflineChess/offline_chess_page.dart';
import 'package:clio_chess_app/Screens/OfflineMode/components/offlinemode_background.dart';
import 'package:clio_chess_app/components/rounded_outlined_button.dart';
import 'package:flutter/material.dart';

class OfflineModeBody extends StatelessWidget {
  const OfflineModeBody({
    Key key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "Offline Mode",
            style: TextStyle(
              fontSize: 25.0,
              fontWeight: FontWeight.bold,
              color: Colors.blue,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RounderOutlinedButton(
              text: "Chessboard",
              press: () {
                Navigator.of(context).pushNamed(OfflineChessPage.routeName);
              },
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: RounderOutlinedButton(
              text: "Chess Clock",
              textColor: Colors.blueGrey,
              press: () {
                Navigator.of(context).pushNamed(ChessClockPage.routeName);
              },
            ),
          ),
        ],
      ),
    );
  }
}
