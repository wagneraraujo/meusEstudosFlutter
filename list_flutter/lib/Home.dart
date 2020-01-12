import 'package:flutter/material.dart';

class Home extends StatefulWidget {
  Home({Key key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  List _itens = [];

  void _carregarItens() {
    for (int i = 0; i <= 10; i++) {
      Map<String, dynamic> item = Map();
      item["titulo"] = "Título ${i} teste lista";
      item["Descrição"] = "descricao ${i} teste lista";
      _itens.add(item);
    }
  }

  @override
  Widget build(BuildContext context) {
    _carregarItens();
    return Scaffold(
      appBar: AppBar(
        title: Text("Listas com Flutter"),
      ),
      body: Container(
        padding: EdgeInsets.all(20),
        child: ListView.builder(
          itemCount: _itens.length,
          itemBuilder: (context, indice) {
            // Map<String, dynamic> item = _itens[indice];
            // print("item ${item["titulo"]}");
            return ListTile(
              onTap: () {
                showDialog(
                    context: context,
                    builder: (context) {
                      return AlertDialog(
                        title: Text(_itens[indice]["titulo"]),
                        titlePadding: EdgeInsets.all(15),
                        content: Text(_itens[indice]["Descrição"]),
                        actions: <Widget>[
                          FlatButton(
                            child: Text("Clique aqui"),
                            onPressed: () {
                              Navigator.pop(context);
                            },
                          )
                        ],
                      );
                    });
              },
              title: Text(_itens[indice]["titulo"]),
              subtitle: Text(_itens[indice]["Descrição"]),
            );
          },
        ),
      ),
    );
  }
}
