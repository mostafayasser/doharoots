import 'package:flutter/material.dart';

class AppName extends StatelessWidget {
  final double fontSize;
  const AppName({Key key, @required this.fontSize}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return RichText(
      text: TextSpan(
        text: 'Doha', //first part
        style: TextStyle(
            fontFamily: 'Poppins',
            fontSize: fontSize,
            fontWeight: FontWeight.w900,
            color: Color(0xFF292b64)),
        children: <TextSpan>[
          TextSpan(
              text: ' Roots', //second part
              style:
                  TextStyle(fontFamily: 'Poppins', color: Color(0xFF292b64))),
        ],
      ),
    );
  }
}
