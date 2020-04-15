import 'package:flutter/material.dart';

void main() => runApp(MyApp());

class MyApp extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _State();
  }
}
class _State extends State<MyApp> {
  String _message = 'Tap here';
  @override
  Widget build(BuildContext context) {
    return MaterialApp (
      home: Scaffold(
        appBar: AppBar(
          title: Text('ButtonDemoApp'),
        ),
        body: Container(
          padding: EdgeInsets.all(30),
          child: Column(
            children: <Widget>[
              Text(_message),
              RaisedButton(
                child: Text('OK'),
              onPressed: _onPressed,)
            ],
          ),
        ),
      ),
    );
  }
  void _onPressed(){
    setState(() {
      _message = 'tapped';
    });
  }
}