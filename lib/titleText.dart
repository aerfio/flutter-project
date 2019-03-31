import 'package:flutter/material.dart';

class TitleText extends StatelessWidget {
  Widget build(context) {
    return new Text(
      'Enter your note',
      style: new TextStyle(
          color: Colors.indigo.shade400,
          fontSize: 40.0,
          fontStyle: FontStyle.normal,
          fontWeight: FontWeight.w500),
    );
  }
}
