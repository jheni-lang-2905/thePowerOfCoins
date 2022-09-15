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
      appBar: AppBar(title: Center(child: Text('Moedas')),
        ),
      body: ListView(
        children: [
          TextoPesquisa(),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
          CardMoeda(moeda: Moedas('moeda', 'subtitulo'),),
          ElevatedButton(onPressed: () {
            Navigator.pop(context);
          }, child: Text('Voltar'))
        ],
      )
      ),
      );
    }
}
/*
class ListaCardMoeda extends StatefulWidget{

  final List<Moedas> _moeda = [];

  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return ListaCardMoedaState();
  }
}

class ListaCardMoedaState extends State<ListaCardMoeda> {

  @override
  Widget build(BuildContext context) {
    widget._moeda.add(Moedas('moeda', 'subtitulo'));
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: ListView.builder(
                itemCount: widget._moeda.length,
                itemBuilder: (context, index) {
                  final cardMoeda = widget._moeda[index];
                  return CardMoeda(moeda: cardMoeda);
                },
              ),
    );
  }
}
*/
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
                leading: Icon( Icons.label, ),
                title: Text(moeda.moeda),
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