import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome pczk",
        home: new Material(
            child: new Container(
                padding: const EdgeInsets.all(30.0),
                color: Colors.white,
                child: new Container(
                  child: new Center(
                      child: new Column(children: [
                    Padding(padding: EdgeInsets.only(top: 140.0)),
                    new Text(
                      'Enter your note',
                      style: new TextStyle(
                          color: Colors.indigo.shade400, fontSize: 25.0),
                    ),
                    new Padding(padding: EdgeInsets.only(top: 50.0)),
                    new TextFormField(
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
                    ),
                  ])),
                ))));
  }
}
