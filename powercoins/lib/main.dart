import 'package:flutter/material.dart';

void main() {
  runApp(telaLogin(),);
}

class telaLogin extends StatelessWidget{

  final TextEditingController controladorCampoNome = TextEditingController();
  final TextEditingController controladorCampoSenha = TextEditingController(); 


  @override
  Widget build(BuildContext context) {
    // TODO: implement build
  return MaterialApp(
    theme: ThemeData(
      brightness: Brightness.dark,
      primaryColor: Colors.blueGrey,
    ),
    // ignore: prefer_const_constructors
    home: Scaffold(
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
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Esqueci minha senha',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic,),
                textAlign: TextAlign.center,                      
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Text(
                'Crie sua conta',
                overflow: TextOverflow.ellipsis,
                style: TextStyle(fontSize: 15, fontStyle: FontStyle.italic,),
                textAlign: TextAlign.center,                      
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
            padding: EdgeInsets.only(top: 100, left: 150, right: 150, bottom: 40),
            child: const Image(
              image: NetworkImage('https://flutter.github.io/assets-for-api-docs/assets/widgets/owl.jpg'),
              width: 100,
            ),
          );
    
  }
}


class telaCadastro extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    throw UnimplementedError();
  }

}