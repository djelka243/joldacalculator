import 'package:flutter/material.dart';
import 'package:joldacalculator/home.dart';

void main(){
  /*Le point de demarrage de l'application
  main qui veut dire principale */
 runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Jolda Calculator',
      theme: ThemeData(
        brightness: Brightness.light,
      ),
      home: const Home(),
      debugShowCheckedModeBanner: false,
    );
  }
}

