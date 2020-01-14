import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.redAccent,
        ),
        backgroundColor: Colors.white,
        title: Image.asset("imagens/youtube.png"),
        actions: <Widget>[
          IconButton(
            icon: Icon(Icons.search),
            onPressed: () {
              print("acao serach");
            },
          ),
          IconButton(
            icon: Icon(Icons.video_call),
            onPressed: () {
              print("acao video");
            },
          ),
          IconButton(
            icon: Icon(Icons.account_circle),
            onPressed: () {
              print("acao conta");
            },
          ),
        ],
      ),
      body: Container(),
    );
  }
}
