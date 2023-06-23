class FrecuenciaCardiaca {
  double saturacionOxigeno;
  int pulsacionesPorMinuto;
  int presionSistolica;
  int presionDiastolica;

  FrecuenciaCardiaca({
    required this.saturacionOxigeno,
    required this.pulsacionesPorMinuto,
    required this.presionSistolica,
    required this.presionDiastolica,
  });

  factory FrecuenciaCardiaca.fromMap(Map<String, dynamic> json) {
    return FrecuenciaCardiaca(
      saturacionOxigeno: json['saturacionOxigeno'],
      pulsacionesPorMinuto: json['pulsacionesPorMinuto'],
      presionSistolica: json['presionSistolica'],
      presionDiastolica: json['presionDiastolica'],
    );
  }

  Map<String, dynamic> toMap() {
    return {
      'saturacionOxigeno': saturacionOxigeno,
      'pulsacionesPorMinuto': pulsacionesPorMinuto,
      'presionSistolica': presionSistolica,
      'presionDiastolica': presionDiastolica,
    };
  }
}
