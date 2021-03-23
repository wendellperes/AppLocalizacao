import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class HomePage extends StatefulWidget {
  @override
  HomePageState createState() => HomePageState();
}

class HomePageState extends State<HomePage> {

  bool isAtivo = false;

  ativarLocalizacao(value){
    setState(() {
      isAtivo = !value;
      print(isAtivo);
    });
  }
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return new Scaffold(
        appBar: new AppBar(
          title: new Text('Bem vindo!'),
          centerTitle: true,
        ),
        body: new Container(
          padding: EdgeInsets.symmetric( horizontal: 20),
          child: Column(
            children: [
                SizedBox(
                  height: 80,
                ),
                Container(
                  child: Text('Click no butão a Baixo para Ativar a localização',
                    textAlign: TextAlign.center,
                    style: TextStyle(fontSize: 17),
                  ),
                  alignment: Alignment.center,
                ),
                SizedBox(
                  height: 80,
                ),
                Container(
                  width: 150,
                  height: 60,
                  child: FlatButton(
                    color: Colors.blue,
                      onPressed: (){
                        ativarLocalizacao(isAtivo);

                      },
                      child: Text( isAtivo ? 'Desativar' : 'Ativar',
                        style: TextStyle(fontSize: 20),
                      )
                  ),
                )
            ],
          ),
        )
    );
  }
}