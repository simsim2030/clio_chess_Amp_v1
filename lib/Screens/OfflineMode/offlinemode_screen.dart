import 'package:clio_chess_app/Screens/OfflineMode/components/offlinemode_body.dart';
import 'package:flutter/material.dart';

class OfflineModePage extends StatelessWidget {
  static const routeName = '/offlinemode_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: OfflineModeBody(),
    );
  }
}
