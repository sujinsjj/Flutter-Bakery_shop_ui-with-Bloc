import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

class TitleText extends StatelessWidget {
  final String text;
  final double? fontSize;
  const TitleText({super.key,
    required this.text,
    this.fontSize = 18
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
        fontWeight: FontWeight.w600,
        fontSize: fontSize
      ),
    );
  }
}


class SmallText extends StatelessWidget {
  final String text;
  final double? fontSize;
  const SmallText({super.key,
    required this.text,
    this.fontSize
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      text,
      style: TextStyle(
          fontSize: fontSize,
        fontWeight: FontWeight.w500,
        color: Colors.black38
      ),
    );
  }
}
