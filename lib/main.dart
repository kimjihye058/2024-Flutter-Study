import 'package:flutter/material.dart';

class Player {
  String? name;   // 물음표가 붙으면 name이라는 parameter가 있을 수도 있고 없을 수도 있음

  Player({required this.name});
}

void main() {
  var jennifer = Player(name:"Potato");

  runApp( App());
}

// commit test11
class App extends StatelessWidget { 
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          centerTitle: false,
          elevation: 10,
          title: Text('Hello Flutter!'),
        ),
        body: Center(
          child: Text('Hello World!'),
        ),
      ), 
    );
  }
}