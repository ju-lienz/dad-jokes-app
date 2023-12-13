import 'dart:convert' as convert;
import 'package:http/http.dart' as http;

Future<Map<String, dynamic>> fetchRandomJoke() async {
  final response = await http.get(Uri.parse('https://icanhazdadjoke.com/'),
      headers: {'Accept': 'application/json', 'User-Agent': 'dad-jokes-app'});
  if (response.statusCode == 200) {
    return convert.json.decode(response.body);
  } else {
    throw Exception('Failed to load joke');
  }
}
