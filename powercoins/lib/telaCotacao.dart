import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:powercoins/telaMoedas.dart';
import 'package:syncfusion_flutter_charts/charts.dart';

class telaCotacao extends StatelessWidget{
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
          title: Text('Cotação'),
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
      body: Column(
        children: [
          CriptoMoeda(criptoValor: 10.0, criptomoeda: 'BTC',),
          Center(child: Grafico()),
          Padding(
            padding: const EdgeInsets.all(40.0),
            child: ElevatedButton(
              onPressed: (){
                Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => telaMoedas()),
                      );
              },
              child: Text('Voltar'),
            ),
          ),
        ],
      ),
      ),
    );
  }
}

class Grafico extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return SfCartesianChart(
            primaryXAxis: CategoryAxis(),
            legend: Legend(isVisible: false),
            backgroundColor: Colors.black87,
            plotAreaBorderColor: Colors.yellow,
            tooltipBehavior: TooltipBehavior(enable: true),
            series: <ChartSeries<_Infections, String>>[
              LineSeries<_Infections, String>(
                  dataSource: <_Infections>[
                    _Infections('13h', 1200),
                    _Infections('14h', 2040),
                    _Infections('15h', 3670),
                    _Infections('16h', 4000),
                    _Infections('17h', 5800),
                    _Infections('18h', 6091)
                  ],
                  xValueMapper: (_Infections victims, _) => victims.year,
                  yValueMapper: (_Infections victims, _) => victims.victims,
                  // Enable data label
                  dataLabelSettings: DataLabelSettings(isVisible: true))
            ]);
  }

}

class CriptoMoeda extends StatelessWidget{

  final String criptomoeda;
  final double criptoValor;

  const CriptoMoeda({super.key, required this.criptomoeda, required this.criptoValor});

  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
            padding: const EdgeInsets.only(left: 8, right: 8, top: 80, bottom: 8),
            child: Center(child: Column(
              children: [
                Text(
                  criptomoeda,
                  textAlign: TextAlign.center,
                  overflow: TextOverflow.ellipsis,
                  style: TextStyle(fontWeight: FontWeight.w900,fontSize: 32),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 8, right: 8, top: 50, bottom: 40),
                  child: Text(criptoValor.toString(),
                    textAlign: TextAlign.center,
                    overflow: TextOverflow.ellipsis,
                    style: TextStyle(fontSize: 24),
                  ),
                ),
              ],
            )),
          );
  } 
}



  
class _Infections {
  _Infections(this.year, this.victims);
  
  final String year;
  final double victims;
}



class ImagemGrafico extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Text('data');
  }

}