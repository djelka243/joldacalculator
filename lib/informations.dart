import 'package:flutter/material.dart';

class Informations extends StatefulWidget {
  const Informations({Key? key}) : super(key: key);

  @override
  State<Informations> createState() => _InformationsState();
}

class _InformationsState extends State<Informations> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Informations'),),
      body: SingleChildScrollView(
    child: Padding(
    padding: const EdgeInsets.all(16.0),
    child: Column(
    crossAxisAlignment: CrossAxisAlignment.center,
    children: [
    SizedBox(height: 20),
    Text(
    'UNIVERSITE PEDAGOGIQUE NATIONALE',
    style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),
    SizedBox(height: 10),
    Text(
    'FACULTE DES SCIENCES ECONOMIQUES ET GESTION\nDépartement d\'Informatique et Ingénieurie de gestion',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.w500),
    textAlign: TextAlign.center,
    ),
    Divider(),
    SizedBox(height: 20),
    Container(
    height: 100,
    child: Image.asset('assets/upn.png'), // replace with your logo path
    ),
    SizedBox(height: 20),
      Container(
        padding: EdgeInsets.all(10),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.black),
          borderRadius: BorderRadius.circular(10),
          color: Colors.blue[300],
        ),
        child: Text(
          'Travail Pratique de Programmation orientée objet',
          style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
      ),
      SizedBox(height: 20),
      Text('Par :\n\nManzambi Nginayani Jolda\nKulamba Kilaka Miriam\nKabu Kongolo Davidette\nIlanga Bosala Stive\nKangudi Mupingani Osée',
    style: TextStyle(fontSize: 18),
    textAlign: TextAlign.center,
    ),
    SizedBox(height: 30),
    Text(
    'Année Académique 2023-2024',
    style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
    textAlign: TextAlign.center,
    ),
    ],
    ),
    ),
    ));
  }
}
