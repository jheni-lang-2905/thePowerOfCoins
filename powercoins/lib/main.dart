import 'package:flutter/material.dart';
import 'package:powercoins/telaCotacao.dart';
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
    body: SingleChildScrollView(
      child: Column(
      children: [
        Container(child: logo()),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: Text(
            'THE POWER OF COINS',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic,),
            textAlign: TextAlign.center,
          ),
        ),
        Editor(controlador: controladorCampoNome, label: 'Nome Completo', tipoSenha: false),
        Editor(controlador: controladorCampoSenha, label: 'Senha', tipoSenha: true),
        ElevatedButton(onPressed: (){
          String nome = controladorCampoNome.text.toString();
          String senha = controladorCampoSenha.text.toString();
          debugPrint(nome);
          if(nome == 'admin' && senha == '123'){
            Navigator.push(
                    context,
                    MaterialPageRoute(builder: (context) => telaMoedas()),
                  );
          }else{
            showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Usuário não encontrado'),
                          content: const Text('Realize seu cadastro.'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
          }
        }, child: Text('Log in')),
        Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: TextButton(
                  style: TextButton.styleFrom(
                    textStyle: TextStyle(color: Colors.white, fontSize: 15),
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
            )
          ],
        ),
      ],
      ),
    ),
  ));
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
    return SingleChildScrollView(
          child: 
          Padding(
          padding: const EdgeInsets.all(20.0),
          child: TextField(
            controller: controlador,
                  style: TextStyle(color: Colors.white),
                  obscureText: tipoSenha, //oculta letras como senha
                  decoration: InputDecoration(
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(color: Colors.grey, width: 7.0),
                      borderRadius: BorderRadius.circular(25),
                    ),
                    border: OutlineInputBorder(
                      borderSide: const BorderSide(width: 7.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(25),   
                    ),
                    enabledBorder: OutlineInputBorder(
                      borderSide: const BorderSide(width: 7.0, color: Colors.grey),
                      borderRadius: BorderRadius.circular(25),   
                    ),
                    labelText: label,
                  ),
                ),
          ));
  }
}

class logo extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
   return SingleChildScrollView(
      child:
          Padding(
                    padding: EdgeInsets.only(top: 100, left: 150, right: 150, bottom: 50),
                    child: Image.asset('imagens/logo.jpg'),
              ),
      );
  }
}

class telaEsqueciSenha extends StatelessWidget{

  final TextEditingController controladorEmailTrocaSenha = TextEditingController();
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
      body: SingleChildScrollView(
      child:Column(
      children: [  
          Center(
            child: Padding(
              padding: const EdgeInsets.fromLTRB(8.0, 200.0, 8.0, 8.0),
              child: Text(
                'REDEFINIR SENHA',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic,),
                textAlign: TextAlign.center,                      
              ),
            ),
          ),
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 45.0, 20.0, 20.0),
          child: Column(
            children: [
                Editor(controlador: controladorEmailTrocaSenha, label: 'E-mail', tipoSenha: false),
                Editor(controlador: controladorTrocaSenha, label: 'Nova senha', tipoSenha: true),
                Editor(controlador: controladorTrocaSenhaConfirma, label: 'Confimar senha', tipoSenha: true),
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: ElevatedButton(
                  onPressed: () {
                    if(controladorTrocaSenha.value.text != controladorTrocaSenhaConfirma.value.text){
                        showDialog<String>(
                        context: context,
                        builder: (BuildContext context) => AlertDialog(
                          title: const Text('Senhas incorretas'),
                          content: const Text('senha não compatíveis'),
                          actions: <Widget>[
                            TextButton(
                              onPressed: () => Navigator.pop(context, 'OK'),
                              child: const Text('OK'),
                            ),
                          ],
                        ),
                      );
                    }
                    else{
                      Navigator.pop(context);
                    }},
                  style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(width: 10.0, color: Colors.yellow)
                    ),
                  ),),
                  child: const Text('Concluir'),
                ),
                ),
                Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: ElevatedButton(onPressed: (){
                    Navigator.pop(context);
                  },
                  style: ButtonStyle(
                  shape: MaterialStateProperty.all(
                    RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(20.0),
                      side: BorderSide(width: 10.0, color: Colors.yellow)
                    ),
                  ),
                ),
                child: Text('Voltar')),
                ),
            ],
          )
        )
      ],
      ),
    ),
  ));
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
      body: SingleChildScrollView(
      child:Column(
      children: [
        Padding(
          padding: const EdgeInsets.fromLTRB(8.0, 150.0, 8.0, 8.0),
          child: Text(
            'CRIE SUA CONTA',
            overflow: TextOverflow.ellipsis,
            style: TextStyle(fontSize: 30, fontStyle: FontStyle.italic,),
            textAlign: TextAlign.center,                      
          ),
        ),
        Editor(controlador: cadastreNome, label: 'Nome Completo', tipoSenha: false),
        Editor(controlador: cadastreEmail, label: 'E-mail', tipoSenha: false),
        Editor(controlador: cadastreSenha, label: 'Senha', tipoSenha: true),
        Editor(controlador: cadastreConfirmarSenha, label: 'Confirmar Senha', tipoSenha: true),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(
          onPressed: () {
            if(cadastreSenha.value.text != cadastreConfirmarSenha.value.text){
                showDialog<String>(
                context: context,
                builder: (BuildContext context) => AlertDialog(
                  title: const Text('Senhas incorretas'),
                  content: const Text('senha não compatíveis'),
                  actions: <Widget>[
                    TextButton(
                      onPressed: () => Navigator.pop(context, 'OK'),
                      child: const Text('OK'),
                    ),
                  ],
                ),
              );
            }
            else{
              Navigator.pop(context);
            }},
          style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(width: 10.0, color: Colors.yellow)
            ),
          ),),
          child: const Text('Cadastrar'),
        ),
        ),
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: ElevatedButton(onPressed: (){
            Navigator.pop(context);
          },
          style: ButtonStyle(
          shape: MaterialStateProperty.all(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20.0),
              side: BorderSide(width: 10.0, color: Colors.yellow)
            ),
          ),
        ),
        child: Text('Voltar')),
        )
      ],
      ),
    ),
  ));
  }
}

class DialogExample extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () => showDialog<String>(
        context: context,
        builder: (BuildContext context) => AlertDialog(
          title: const Text('Senhas incorretas'),
          content: const Text('As senhas estão divergentes'),
          actions: <Widget>[
            TextButton(
              onPressed: () => Navigator.pop(context, 'OK'),
              child: const Text('OK'),
            ),
          ],
        ),
      ),
      child: const Text('Show Dialog'),
    );
  }
}
