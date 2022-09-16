import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powercoins/main.dart';

class telaMoedas extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.yellow,
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
      ),
      home: Scaffold(
      backgroundColor: Colors.black87,
      appBar: AppBar(
        title: Text('Moedas'),
        actions: [
          IconButton(
            icon: Icon(
              Icons.settings,
              color: Colors.white,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          )
        ],
        ),
      body: ListView(
        children: [
          TextoPesquisa(),
          CardMoeda(moeda: Moedas('ariany', 'subtitulo'),),
          CardMoeda(moeda: Moedas('agatha', 'subtitulo'),),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
        ],
      )
      ),
      );
    }
}


class Moedas{
  final String moeda;
  final String subtitulo;

  Moedas(this.moeda, this.subtitulo);

  @override
  String toString() {
    // TODO: implement toString
    return 'Moedas{moeda: $moeda, subtitulo: $subtitulo}';
  }
}


class CardMoeda extends StatelessWidget{

  final TextEditingController controler = TextEditingController();
  final Moedas moeda;

  CardMoeda({super.key, required this.moeda});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon( Icons.chevron_right, ), 
                  alignment: Alignment.center,
                  onPressed: () {
                  },  
                ),
                title: Text(moeda.moeda,),
                subtitle: Text(moeda.subtitulo),
              )
            )
    );
  }
}

class TextoPesquisa extends StatelessWidget{

  final TextEditingController controler = TextEditingController();

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: TextField(
        controller: controler,
        decoration: InputDecoration(
            icon: Icon(Icons.manage_search,),
            labelText: 'Pesquise sua moeda',
        ),
      ),
    );
  }
}