import 'package:flutter/material.dart';

import 'home_page.dart';
import 'intro_page.dart';
void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      // home: HomePage(),
      debugShowCheckedModeBanner: false,
      initialRoute: '/',
      routes: {
        '/': (context) => Intro_Page(),
        '/home': (context) =>  Home_Page(),
        
      },
      theme: new ThemeData(primarySwatch: Colors.green),
    );
  }
}
