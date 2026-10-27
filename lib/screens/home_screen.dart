import 'package:flutter/material.dart';
import 'package:pf2/models/Persona.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  Persona persona = Persona.nou(fullName: "Marc González Murillo", email: "marcgonzalez1@paucasesnovescifp.cat", dateOfBirth: DateTime(2007, 05, 24));

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("DevProfile M3"),),
      body: Card(
        
      ),
    );
  }
}