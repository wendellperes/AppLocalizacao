import 'package:flutter/material.dart';
import 'package:motoboy_peres/views/home/homepage.dart';
import 'package:motoboy_peres/views/login/loginpage.dart';
import 'package:motoboy_peres/views/splashscreen/splashscreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return new MaterialApp(
      title: 'Flutter SplashScreen',
      debugShowCheckedModeBanner: false,
      home: new SplashPage(),
      routes: <String, WidgetBuilder>{
        '/HomePage': (BuildContext context) => new HomePage(),
        '/LoginPage': (BuildContext context) => new LoginPage(),
      },
    );
  }
}


