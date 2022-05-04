import 'package:clio_chess_app/Screens/OfflineChess/offline_chess_page.dart';
import 'package:clio_chess_app/Screens/OfflineMode/offlinemode_screen.dart';
import 'package:clio_chess_app/Screens/Signup/signup_page.dart';
import 'package:clio_chess_app/Screens/Welcome/components/wlecome_background.dart';
import 'package:clio_chess_app/components/rounded_button.dart';
import 'package:clio_chess_app/Screens/Login/login_page.dart';
import 'package:clio_chess_app/components/tap_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Body extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    //this size provide us total height and width of our screen
    return Background(
      child: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            SizedBox(height: size.height * 0.05),
            Text(
              "CLio",
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 45,
                color: Colors.white70,
              ),
            ),
            SizedBox(height: size.height * 0.4),
            // SvgPicture.asset(
            //   "assets/icons/chat.svg",
            //   height: size.height * 0.45,
            // ),
            SizedBox(height: size.height * 0.05),
            RoundedButton(
              text: "LOGIN",
              press: () {
                Navigator.of(context).pushNamed(LoginPage.routeName);
              },
            ),
            RoundedButton(
              text: "SIGN UP",
              color: Colors.lightBlue,
              textColor: Colors.white,
              press: () {
                Navigator.of(context).pushNamed(SignupPage.routeName);
              },
            ),
            SizedBox(height: size.height * 0.05),
            TapButton(
              text: "Offline Mode",
              press: () {
                Navigator.of(context).pushNamed(OfflineModePage.routeName);
              },
            ),
          ],
        ),
      ),
    );
  }
}
