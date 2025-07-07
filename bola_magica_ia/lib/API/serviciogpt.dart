import 'dart:convert';
import 'package:http/http.dart' as http;
import '../API/respuestagpt.dart';

class ServicioApi {
  final String _apiKey = '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'; //token 

  Future<Respuesta> obtenerRespuesta(String pregunta) async {
    final url = Uri.parse('https://openrouter.ai/api/v1/chat/completions');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_apiKey',
    };

    final body = jsonEncode({
      "model": "openrouter/cypher-alpha:free",
      "messages": [
        {"role": "system", "content": "Responde como una bola mágica misteriosa."},
        {"role": "user", "content": pregunta}
      ],
      "max_tokens": 40,
      "temperature": 0.8
    });

    final response = await http.post(url, headers: headers, body: body);

    if (response.statusCode == 200) {
      final json = jsonDecode(response.body);
      return Respuesta.fromJson(json);
    } else {
      throw Exception('Error ${response.statusCode}: ${response.body}');
    }
  }
}
