import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'package:flutter/services.dart';

class LoginPage extends StatefulWidget {
  @override
  LoginPageState createState() => LoginPageState();
}

class LoginPageState extends State<LoginPage> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailControle = TextEditingController();
  final TextEditingController _senhaControle = TextEditingController();
  bool _securityPassword = true;

  @override
  Widget build(BuildContext context) {
    SystemChrome.setEnabledSystemUIOverlays(SystemUiOverlay.values);

    return  Scaffold(
      body: Container(
        color: Colors.white,
        child: Center(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Container(
                  child: new Image.asset('images/logo.jpg'),
                ),
                SizedBox(
                  height: 30,
                ),
                Text('Digite seu email! a Senha será fornecida pelo Administrador(por enquanto)', textAlign: TextAlign.center,),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.all(26.0),
                  child: Form(
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
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38),
                                borderRadius: BorderRadius.all(Radius.circular(12))
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(Radius.circular(12))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(Radius.circular(12))
                            )
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
                            disabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.black38),
                                borderRadius: BorderRadius.all(Radius.circular(12))
                            ),
                            enabledBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(Radius.circular(12))
                            ),
                            focusedBorder: OutlineInputBorder(
                                borderSide: BorderSide(color: Colors.red),
                                borderRadius: BorderRadius.all(Radius.circular(12))
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
                ),
                SizedBox(
                  height: 5,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 22.0, right: 22.0),
                  child: Container(
                    height: 60,
                    child: SizedBox.expand(
                      child: FlatButton(
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(50)
                        ),
                        color: Colors.red,
                        onPressed: (){},
                        child: Text('Entrar', style: TextStyle(fontSize: 17, color: Colors.white),),
                      ),
                    ),
                  ),
                ),



              ],
            ),
          ),
        ),
      ),
    );
  }
}