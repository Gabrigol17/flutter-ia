class Respuesta {
  final String mensaje;

  Respuesta({required this.mensaje}); 

  factory Respuesta.fromJson(Map<String, dynamic> json) { 
    return Respuesta( 
      mensaje: json['choices'][0]['message']['content'] ?? 'Sin respuesta',
    );
  }
}
