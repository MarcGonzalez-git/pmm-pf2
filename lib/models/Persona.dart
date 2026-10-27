class Persona {

  String fullName;
  String email;
  DateTime dateOfBirth;

  Persona.nou({
    required String fullName, 
    required String email, 
    required DateTime dateOfBirth
    }) : 
    this.fullName = fullName,
    this.email = email,
    this.dateOfBirth = dateOfBirth;
    
    String get getFullName => fullName;
    String get getEmail => email;
    DateTime get getDateTime => dateOfBirth;

}