import 'package:flutter/material.dart';
import 'package:youtube/telas/Biblioteca.dart';
import 'package:youtube/telas/EmAlta.dart';
import 'package:youtube/telas/Inicio.dart';
import 'package:youtube/telas/Inscricoes.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int _indiceAtual = 0;
  @override
  Widget build(BuildContext context) {
    List<Widget> telas = [
      Inicio(),
      EmAlta(),
      Biblioteca(),
      Inscricoes(),
    ];

    return Scaffold(
      appBar: AppBar(
        iconTheme: IconThemeData(
          color: Colors.redAccent,
        ),
        backgroundColor: Colors.white,
        title: Image.asset(
          "imagens/youtube.png",
          height: 22,
        ),
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
      body: telas[_indiceAtual],
      bottomNavigationBar: BottomNavigationBar(
        fixedColor: Colors.red,

        //muda apenas a cor da fonte e icone
        type: BottomNavigationBarType.fixed,
        currentIndex: _indiceAtual,
        //mudança automatica ao escolher outro menu, mdança de cor
        onTap: (indice) {
          setState(() {
            _indiceAtual = indice;
          });
        },
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            backgroundColor: Colors.red,
            icon: Icon(Icons.home),
            title: Text('Home'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.redAccent,
            icon: Icon(Icons.whatshot),
            title: Text('Em Alta'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.orangeAccent,
            icon: Icon(Icons.bookmark),
            title: Text('Biblioteca'),
          ),
          BottomNavigationBarItem(
            backgroundColor: Colors.blueAccent,
            icon: Icon(Icons.school),
            title: Text('Inscrições'),
          ),
        ],
      ),
    );
  }
}
