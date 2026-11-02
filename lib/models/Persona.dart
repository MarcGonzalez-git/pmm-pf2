class Persona {

  String fullName;
  String email;
  String password;
  DateTime dateOfBirth;

  Persona.nou({
    required String fullName, 
    required String email, 
    required String password,
    required DateTime dateOfBirth
    }) : 
    this.fullName = fullName,
    this.email = email,
    this.password = password,
    this.dateOfBirth = dateOfBirth;
    
    String get getFullName => fullName;
    String get getEmail => email;
    String get getPassword => password;
    DateTime get getDateTime => dateOfBirth;

}