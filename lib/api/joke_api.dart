import 'dart:convert' as convert;
import 'package:dad_jokes_app/models/joke.dart';
import 'package:http/http.dart' as http;

Future<Joke> fetchRandomJoke() async {
  final response = await http.get(Uri.parse('https://icanhazdadjoke.com/'),
      headers: {'Accept': 'application/json', 'User-Agent': 'dad-jokes-app'});

  if (response.statusCode < 200 || response.statusCode > 299) {
    throw Exception('Failed to load joke ;(');
  }

  // if (response.headers['X-Rate-Limited'] == 'yes') {
  //   throw Exception('Rate limited');
  // }

  final body = convert.json.decode(response.body);
  final joke = Joke.fromJson(body);

  return joke;
}
