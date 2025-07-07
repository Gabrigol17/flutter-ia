import 'dart:convert';
import 'package:http/http.dart' as http;
import '../API/respuestagpt.dart';

class ServicioApi {
  final String _apiKey = 'APIKEY'; //token 

  Future<Respuesta> obtenerRespuesta(String pregunta) async {
    final url = Uri.parse('https://api.openai.com/v1/chat/completions');

    final headers = {
      'Content-Type': 'application/json',
      'Authorization': 'Bearer $_apiKey',
    };

    final body = jsonEncode({
      "model": "gpt-3.5-turbo-0613",
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
