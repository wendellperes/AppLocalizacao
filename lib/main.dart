import 'package:appmotoboy/view/homepage/homepage.dart';
import 'package:appmotoboy/view/loginpage/loginpage.dart';
import 'package:appmotoboy/view/splashscreenpage/splashscreen.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
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