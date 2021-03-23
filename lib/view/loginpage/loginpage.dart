import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {

  //declacarao de variaveis
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailControle = TextEditingController();
  final TextEditingController _senhaControle = TextEditingController();
  bool _securityPassword = true;
  bool lembrarEmail = true;

  //funcoes
  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return new Scaffold(
        body: new Container(
          padding: EdgeInsets.symmetric( horizontal: 20),
          child: Column(
            children: [
              SizedBox(
                height: 80,
              ),
              Container(
                child: Text('Login de Acesso Rapido',
                  textAlign: TextAlign.center,
                  style: TextStyle(fontSize: 17),
                ),
                alignment: Alignment.center,
              ),
              SizedBox(
                height: 80,
              ),
              Form(
                key: _formKey,
                child: Column(
                  children: <Widget>[
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _emailControle,
                      keyboardType: TextInputType.text,
                      decoration: InputDecoration(
                          labelText: 'Email*',
                          labelStyle: TextStyle(
                            fontSize: 15,
                            color: Colors.black38,
                            fontWeight: FontWeight.w400,
                          ),

                      ),
                    ),
                    SizedBox(
                      height: 15,
                    ),
                    TextFormField(
                      controller: _senhaControle,
                      keyboardType: TextInputType.visiblePassword,
                      validator: (value) => value.length < 1 ? 'Insira uma senha válida.' : null,
                      decoration: InputDecoration(
                        labelText: 'Senha*',
                        labelStyle: TextStyle(
                          fontSize: 15,
                          color: Colors.black38,
                          fontWeight: FontWeight.w400,
                        ),

                        suffixIcon: IconButton(
                            icon: Icon(Icons.visibility, color: _securityPassword ? Colors.black : Colors.black26,),
                            onPressed: (){
                              setState(() {
                                _securityPassword = !_securityPassword;
                              });
                            }
                        ),
                      ),
                      obscureText: _securityPassword,
                    ),
                  ],
                ),
              ),
              Container(
                height: 50,
                alignment: Alignment.centerLeft,
                decoration: BoxDecoration(
                  color: Colors.blue ,
                ),
                child: SizedBox.expand(
                    child: FlatButton(
                      child: Text('Entrar', style: TextStyle(color: Colors.white, fontSize: 16),),
                      onPressed: (){
                        if(_formKey.currentState.validate()){
                          // setState(() {
                          //   carregando = true;
                          // });
                          //authStore.loginEmailSenha(email: _emailControle.text, senha: _senhaControle.text, onSucess: _onSucess, onFail: _onFail);
                        }
                      },
                    )
                ),
              ),

            ],
          ),
        )
    );
  }
}