import 'dart:convert';
import 'package:http/http.dart' as http;
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powercoins/main.dart';
import 'package:powercoins/telaCotacao.dart';

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
        title: Center(child: Text('Moedas')),
        ),
      body: ListView(
        children: [
          Pesquisa(),
        ],
      )
      ),
      );
    }
}

class TickerApi{
  final double high;
  final double low;
  final double last;
  final double buy;
  final double sell;
  final double date;

  TickerApi(this.high, this.low, this.last, this.buy, this.sell, this.date);
}



retornaDadosMoeda(moeda) async{
  var url = Uri.parse("https://www.mercadobitcoin.net/api/${moeda}/ticker/");
  var resp = await http.get(url);
  var decodedData = json.decode(resp.body);
  var ticker = decodedData['ticker'];
  Map<String, dynamic> toMap() {
  final map = Map<String, dynamic>();
        map["high"]= ticker['high'];
        map["low"]= ticker['low'];
        map["last"]= ticker['last'];
        map["buy"]= ticker['buy'];
        map["sell"]= ticker['sell'];
        map["date"]= ticker['date'];
        map["moeda"]= moeda;
   return map;
 }
  if(resp.statusCode==200){
      return toMap();
  }else{
    throw Exception("Erro no retorno dos dados, tentar mais tarde!");
  }
}

class CardMoeda extends StatelessWidget{

  final TextEditingController controler = TextEditingController();
  final String moedaPesquisa;
  final String subtitulo;

  CardMoeda({super.key, required this.moedaPesquisa, required this.subtitulo});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Card(
              child: ListTile(
                leading: IconButton(
                  icon: Icon( Icons.chevron_right), 
                  alignment: Alignment.center,
                  onPressed: () {
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => dadosMoeda(moedaPesquisa: moedaPesquisa,)),
                      );
                  },  
                ),
                title: Text(moedaPesquisa),
                subtitle: Text(subtitulo),
              )
            )
    );
  }
}


class Pesquisa extends StatefulWidget{
  final TextEditingController controlerPesquisa = TextEditingController();
  final List<String> listaMoeda = ["AAVE", "BTC", "ENS", "ETH", "USDP", "USDC", "SRM", "NFT19", "MVI", "MKR", "BICO", "BCH", "API3", "ALCX"];
  
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
      return TextoPesquisa();
    }
}


class TextoPesquisa extends State<Pesquisa>{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            controller: widget.controlerPesquisa,
            decoration: InputDecoration(
                icon: Icon(Icons.manage_search,),
                labelText: 'Pesquise sua moeda',
            ),
          ),
        ),
        CardMoeda(moedaPesquisa: "BTC", subtitulo: 'Bitcoin',),
        CardMoeda(moedaPesquisa: "ENS", subtitulo: 'Ethereum Name Service',),
        CardMoeda(moedaPesquisa: "ETH", subtitulo: 'Ethereum',),
        CardMoeda(moedaPesquisa: "USDP", subtitulo: 'Pax Dollar',),
        CardMoeda(moedaPesquisa: "USDC", subtitulo: 'USD Coin',),
        CardMoeda(moedaPesquisa: "SRM", subtitulo: 'Serum',),
        CardMoeda(moedaPesquisa: "NFT19", subtitulo: 'Teleton',),
        CardMoeda(moedaPesquisa: "MVI", subtitulo: 'Metaverse Index',),
        CardMoeda(moedaPesquisa: "MKR", subtitulo: 'Maker',),
        CardMoeda(moedaPesquisa: "BICO", subtitulo: 'Biconomy',),
        CardMoeda(moedaPesquisa: "BCH", subtitulo: 'Bitcoin Cash',),
        CardMoeda(moedaPesquisa: "API3", subtitulo: 'API3',),
        CardMoeda(moedaPesquisa: "ALCX", subtitulo: 'Alchemix',),
      ],
    );
  }
}