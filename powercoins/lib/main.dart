import 'package:flutter/material.dart';
import 'package:powercoins/telaMoedas.dart';

void main() {
  runApp(thePowerOfCoins(),);
}

class thePowerOfCoins extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return MaterialApp(
      home: Scaffold(
      backgroundColor: Colors.black87,
      body: telaLogin(),
    ),
    );
  }

}

class telaLogin extends StatelessWidget{

  final TextEditingController controladorCampoNome = TextEditingController();
  final TextEditingController controladorCampoSenha = TextEditingController(); 


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return MaterialApp(
    theme: ThemeData(
        primarySwatch: Colors.yellow,
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
    ),
    // ignore: prefer_const_constructors
    home: Scaffold(
    backgroundColor: Colors.black87,
    body: Column(
      children: [
        logo(),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 8.0, 8.0, 8.0),
          child: Text(
            'THE POWER OF COINS',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic,),
            textAlign: TextAlign.center,                      
          ),
        ),
        Editor(controlador: controladorCampoNome, label: 'Nome Completo', tipoSenha: false),
        Editor(controlador: controladorCampoSenha, label: 'Senha', tipoSenha: true),
        ElevatedButton(onPressed: (){}, child: Text('Log in')),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.white, fontSize: 15)   
                  ),
                  onPressed: () {
                    Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => telaEsqueciSenha()),
                  );
                  },
                  child: const Text('Esqueci minha senha'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: 
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.white, fontSize: 15)   
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => telaCadastro()),
                    );
                  },
                  child: const Text('Crie sua conta'),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: 
              TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.white, fontSize: 15)   
                  ),
                  onPressed: () {
                    Navigator.push(
                      context,
                      MaterialPageRoute(builder: (context) => telaMoedas()),
                    );
                  },
                  child: const Text('Tela de moeda temporária'),
              ),
            ),
          ],
        ),
      ],
      ),
    ),
  );
  }
}

class Editor extends StatelessWidget{

  final TextEditingController controlador;
  final String label;
  final bool tipoSenha;

  const Editor({super.key, required this.controlador, required this.label, required this.tipoSenha});


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: controlador,
                  style: TextStyle(color: Colors.white),
                  obscureText: tipoSenha, //oculta letras como senha
                  decoration: InputDecoration(
                    border: OutlineInputBorder(),
                    labelText: label,
                  ),
                ),
          );
  }
}

class logo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return Padding(
                padding: EdgeInsets.only(top: 100, left: 150, right: 150, bottom: 10),
                child: Image.asset('imagens/logo.jpg', width: 400, height: 100,),
          );
  }
}

class telaEsqueciSenha extends StatelessWidget{

  final TextEditingController controladorTrocaSenha = TextEditingController();
  final TextEditingController controladorTrocaSenhaConfirma = TextEditingController(); 

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
      body: Column(
      children: [
        logo(),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 8.0, 8.0, 8.0),
          child: Text(
            'THE POWER OF COINS',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic,),
            textAlign: TextAlign.center,                      
          ),
        ),
        Editor(controlador: controladorTrocaSenha, label: 'Nova senha', tipoSenha: true),
        Editor(controlador: controladorTrocaSenhaConfirma, label: 'Confima senha', tipoSenha: true),
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Trocar Senha')),
      ],
      ),
    ),
  );
  }
}

class telaCadastro extends StatelessWidget {

  final TextEditingController cadastreNome = TextEditingController();
  final TextEditingController cadastreEmail = TextEditingController();
  final TextEditingController cadastreSenha = TextEditingController();
  final TextEditingController cadastreConfirmarSenha = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        theme: ThemeData(
        primarySwatch: Colors.yellow,
        brightness: Brightness.dark,
        primaryColor: Colors.blueGrey,
      ),
      home: Scaffold(
      backgroundColor: Colors.black87,
      body: Column(
      children: [
        logo(),
        Padding(
          padding: const EdgeInsets.fromLTRB(30.0, 8.0, 8.0, 8.0),
          child: Text(
            'THE POWER OF COINS',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic,),
            textAlign: TextAlign.center,                      
          ),
        ),
        Editor(controlador: cadastreNome, label: 'Nome Completo', tipoSenha: false),
        Editor(controlador: cadastreEmail, label: 'E-mail', tipoSenha: false),
        Editor(controlador: cadastreSenha, label: 'Senha', tipoSenha: true),
        Editor(controlador: cadastreConfirmarSenha, label: 'Confirmar Senha', tipoSenha: true),
        ElevatedButton(onPressed: (){
          Navigator.pop(context);
        }, child: Text('Cadastrar')),
      ],
      ),
    ),
  );
  }
}