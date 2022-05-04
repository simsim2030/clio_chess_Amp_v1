import 'package:flutter/material.dart';

class RounderOutlinedButton extends StatelessWidget {
  final String text;
  final Function press;
  final Color textColor, borderColor;
  const RounderOutlinedButton({
    Key key,
    this.text,
    this.press,
    this.textColor = Colors.orange,
    this.borderColor = Colors.blue,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Size size = MediaQuery.of(context).size;
    return Container(
      // margin: EdgeInsets.all(10),
      width: size.width * 0.8,
      height: size.height * 0.4,

      child: OutlinedButton(
        style: OutlinedButton.styleFrom(
          side: BorderSide(
            width: 3.0,
            color: borderColor,
            style: BorderStyle.solid,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(18),
          ),
        ),
        onPressed: press,
        child: Text(
          text,
          style: TextStyle(
            fontSize: 30,
            color: textColor,
          ),
        ),
      ),
    );
  }
}
