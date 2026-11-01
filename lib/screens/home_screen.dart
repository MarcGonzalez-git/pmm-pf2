import 'package:flutter/material.dart';
import 'package:pf2/models/Persona.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {

  Persona persona = Persona.nou(fullName: "Marc González Murillo", email: "marcgonzalez1@paucasesnovescifp.cat", dateOfBirth: DateTime(2007, 05, 24)
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("DevProfile M3"),
      ),

      body: Padding(
        padding: EdgeInsets.all(1),
        child: Column(
          children: [
            Card(
              child: Padding(
                padding: EdgeInsets.all(16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Profile Information"),
                    SizedBox(height: 10),
                    Text("Name: ${persona.fullName}"),
                    Text("Email: ${persona.email}"),
                    Text("Date of birth: ${persona.dateOfBirth.day}/${persona.dateOfBirth.month}/${persona.dateOfBirth.year}"),
                  ],
                ),
              ),
            ),
            SizedBox(height: 20),
          ],
        ),
      ),
    );
  }
}
