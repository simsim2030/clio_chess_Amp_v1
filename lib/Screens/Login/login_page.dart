import 'package:clio_chess_app/Screens/Login/components/login_body.dart';
import 'package:flutter/material.dart';


class LoginPage extends StatelessWidget {
  static const routeName = '/login_page';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginBody(),
    );
  }
}

