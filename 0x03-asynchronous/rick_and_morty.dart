import 'dart:convert';
import 'package:http/http.dart' as http;

printRmCharacters() async {
  try {
    String? nextUrl = 'https://rickandmortyapi.com/api/character';

    while (nextUrl != null) {
      final response = await http.get(Uri.parse(nextUrl));
      final data = json.decode(response.body);

      for (var character in data['results']) {
        print(character['name']);
      }

      nextUrl = data['info']['next'];
    }
  } catch (err) {
    return 'error caught: $err';
  }
}
