import 'package:clio_chess_app/Screens/ChessClock/components/chessclock_body.dart';
import 'package:flutter/material.dart';

class ChessClockPage extends StatelessWidget {
  static const routeName = '/chessclock_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ChessClockBody(),
    );
  }
}
