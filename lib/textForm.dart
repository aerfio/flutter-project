import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class TextForm extends StatelessWidget {
  Widget build(context) {
    return new TextFormField(
      autofocus: true,
      autovalidate: true,
      decoration: new InputDecoration(
        labelText: "Enter text",
        fillColor: Colors.white,
        border: new OutlineInputBorder(
          borderRadius: new BorderRadius.circular(15.0),
          borderSide: new BorderSide(),
        ),
      ),
      validator: (val) {
        if (val.length == 0) {
          return "Note cannot be empty";
        } else {
          return null;
        }
      },
      keyboardType: TextInputType.text,
      style: new TextStyle(
        fontFamily: "Poppins",
      ),
      onFieldSubmitted: (String data) {
        print('Debugging like in JS ecksde');
        SystemNavigator.pop();
      },
    );
  }
}
