import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'dart:convert';
import 'dart:async';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  // Future<Map> _recuperarPreco() async {
  //   String url = "https://jsonplaceholder.typicode.com/";
  //   http.Response response = await http.get(url);
  //   return json.decode(response.body);
  // }

  String url = "https://jsonplaceholder.typicode.com/";
  _recuperarPostagens() {}

  @override
  Widget build(BuildContext context) {
    // return FutureBuilder<Map>(
    //   future: _recuperarPreco(),
    //   //snapshot são os dados
    //   builder: (context, snapshot) {},
    // );

    return Scaffold(
      appBar: AppBar(
        title: Text("Json placeholder"),
      ),
      body: ,
    );
  }
}
