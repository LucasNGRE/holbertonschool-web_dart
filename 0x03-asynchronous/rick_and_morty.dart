import 'dart:convert';
import 'package:http/http.dart' as http;

printRmCharacters() async {
  try {
    final response = await http.get(Uri.parse('https://rickandmortyapi.com/api/character'));
    final data = json.decode(response.body);

    for (var character in data['results']) {
      print(character['name']);
    }
  } catch (err) {
    return 'error caught: $err';
  }
}
