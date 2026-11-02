import 'package:flutter/material.dart';
import 'package:pf2/models/Persona.dart';

class PersonalScreen extends StatefulWidget {
  final Persona persona;

  const PersonalScreen({super.key, required this.persona});

  @override
  State<PersonalScreen> createState() => _PersonalScreenState();
}

class _PersonalScreenState extends State<PersonalScreen> {

  late TextEditingController firstName;
  late TextEditingController lastName;
  late TextEditingController email;
  late TextEditingController password;
  late TextEditingController date;

  late DateTime dateOfBirth;

  @override
  void initState() {
    super.initState();

    List<String> names = widget.persona.fullName.split(' ');

    firstName = TextEditingController(text: names[0]);
    lastName = TextEditingController(text: names.skip(1).join(' '));
    email = TextEditingController(text: widget.persona.email);
    password = TextEditingController(text: widget.persona.password);

    dateOfBirth = widget.persona.dateOfBirth;

    date = TextEditingController(
      text: "${dateOfBirth.day}/${dateOfBirth.month}/${dateOfBirth.year}",
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("González - Edit Profile"),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          children: [

            TextFormField(
              controller: firstName,
              textCapitalization: TextCapitalization.words,
            ),

            TextFormField(
              controller: lastName,
            ),

            TextFormField(
              controller: email,
              keyboardType: TextInputType.emailAddress,
            ),

            TextFormField(
              controller: password,
              obscureText: true,
            ),

            TextFormField(
              controller: date,
              readOnly: true,
              onTap: () async {
                DateTime? selectedDate = await showDatePicker(
                  context: context,
                  initialDate: dateOfBirth,
                  firstDate: DateTime(1000),
                  lastDate: DateTime.now(),
                );
                if (selectedDate != null) {
                  setState(() {
                    dateOfBirth = selectedDate;
                    date.text =
                        "${selectedDate.day}/${selectedDate.month}/${selectedDate.year}";
                  });
                }
              },
            ),

            ElevatedButton(
              onPressed: () {
                if (firstName.text.isNotEmpty &&
                    lastName.text.isNotEmpty &&
                    email.text.isNotEmpty &&
                    password.text.isNotEmpty &&
                    date.text.isNotEmpty) {

                  widget.persona.fullName = "${firstName.text} ${lastName.text}";
                  widget.persona.email = email.text;
                  widget.persona.password = password.text;
                  widget.persona.dateOfBirth = dateOfBirth;

                  Navigator.pop(context, widget.persona);
                }
              },
              child: Text("Save and Return"),
            ),
          ],
        ),
      ),
    );
  }
}
