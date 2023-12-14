class Joke {
  final int id;
  final String joke;

  Joke({required this.id, required this.joke});

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      id: json['id'],
      joke: json['joke'],
    );
  }
}
