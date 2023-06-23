class User {
  String id;
  String email;
  String password;
  String nombres;
  String apellidos;
  String fechaNacimiento;
  double? peso;
  double? altura;
  bool? genero;
  String? telefono;

  User({
    required this.id,
    required this.email,
    required this.password,
    required this.nombres,
    required this.apellidos,
    required this.fechaNacimiento,
    this.peso,
    this.altura,
    this.genero,
    this.telefono,

  });

  factory User.fromMap(Map<String, dynamic> json) => User(
    id: json['id'],
    email: json['email'],
    password: json['password'],
    nombres: json['nombres'],
    apellidos: json['apellidos'],
    fechaNacimiento: json['fechaNacimiento'],
    peso: json['peso'],
    altura: json['altura'],
    genero: json['genero'],
    telefono: json['telefono'],
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'email': email,
      'password': password,
      'nombres': nombres,
      'apellidos': apellidos,
      'fechaNacimiento': fechaNacimiento,
      'peso': peso,
      'altura': altura,
      'genero': genero,
      'telefono': telefono,
    };
  }
}
