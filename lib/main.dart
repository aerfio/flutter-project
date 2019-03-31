import 'package:flutter/material.dart';
import 'textForm.dart';
import 'titleText.dart';

void main() => runApp(new MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: "Welcome pczk",
        theme: ThemeData.light(),
        // darkTheme: ThemeData.dark(),
        home: MainRoute());
  }
}

class MainRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        title: Text('My app'),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.arrow_forward),
            tooltip: 'Search',
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) => SecondRoute()),
              );
            },
          ),
        ],
      ),
      body: new Material(
          child: new Container(
              padding: const EdgeInsets.all(30.0),
              color: Colors.white,
              child: new Container(
                child: new Center(
                    child: new Column(children: [
                  Padding(padding: EdgeInsets.only(top: 110.0)),
                  TitleText(),
                  new Padding(padding: EdgeInsets.only(top: 50.0)),
                  new TextForm()
                ])),
              ))),
    ));
  }
}

class SecondRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Second Route"),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () {
            Navigator.pop(context);
          },
          child: Text('Go back!'),
        ),
      ),
    );
  }
}
