class Persona {
  String id;
  String nombres;
  String apellidos;
  DateTime fechaNacimiento;
  double peso;
  double altura;
  String genero;
  String telefono;

  Persona({
    required this.id,
    required this.nombres,
    required this.apellidos,
    required this.fechaNacimiento,
    required this.peso,
    required this.altura,
    required this.genero,
    required this.telefono,
  });

  factory Persona.fromMap(Map<String, dynamic> json) => Persona(
    id: json['id'],
    nombres: json['nombres'],
    apellidos: json['apellidos'],
    fechaNacimiento: DateTime.parse(json['fechaNacimiento']),
    peso: json['peso'],
    altura: json['altura'],
    genero: json['genero'],
    telefono: json['telefono'],
  );

  Map<String, dynamic> toJson() {
    return {
      'id': id,
      'nombres': nombres,
      'apellidos': apellidos,
      'fechaNacimiento': fechaNacimiento.toIso8601String(),
      'peso': peso,
      'altura': altura,
      'genero': genero,
      'telefono': telefono,
    };
  }
}
