import 'package:http/http.dart' as http;
import 'dart:convert';

class AddressService {
  static Future<Map<String, String>?> fetchAddress(String cep) async {
    final sanitizedCep = cep.replaceAll(RegExp(r'[^0-9]'), '');

    if (sanitizedCep.length != 8) return null;

    final url = Uri.parse('https://viacep.com.br/ws/$sanitizedCep/json/');
    final response = await http.get(url);

    if (response.statusCode == 200) {
      final data = json.decode(response.body);

      if (!data.containsKey('erro')) {
        return {
          'rua': data['logradouro'] ?? '',
          'bairro': data['bairro'] ?? '',
          'cidadeEstado': '${data['localidade'] ?? ''} - ${data['uf'] ?? ''}',
        };
      }
    }

    return null;
  }
}
