import 'package:clio_chess_app/Screens/Login/components/already_have_an_account_check.dart';
import 'package:clio_chess_app/Screens/Login/login_page.dart';
import 'package:clio_chess_app/Screens/Signup/components/signup_background.dart';
import 'package:clio_chess_app/components/rounded_button.dart';
import 'package:clio_chess_app/components/rounded_input_field.dart';
import 'package:clio_chess_app/components/rounded_password_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SignupBody extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Background(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: <Widget>[
          Text(
            "SIGNUP",
            style: TextStyle(
              fontWeight: FontWeight.bold,
            ),
          ),
          SvgPicture.asset(
            "assets/icons/signup.svg",
            height: size.height * 0.35,
          ),
          RoundedInputField(
            hintText: "Your Email",
            onChanged: (value) {},
          ),
          RoundedPasswordField(
            hintText: "Password",
            onChanged: (value) {},
          ),
          RoundedButton(
            text: "SIGNUP",
            press: () {},
          ),
          AlreadyHaveAnAccountCheck(
            login: false,
            press: () {
              Navigator.of(context).pushNamed(LoginPage.routeName);
            },
          ),
        ],
      ),
    );
  }
}
