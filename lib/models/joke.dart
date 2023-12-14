class Joke {
  final String id;
  final String content;

  Joke({required this.id, required this.content});

  factory Joke.fromJson(Map<String, dynamic> json) {
    return Joke(
      id: json['id'],
      content: json['joke'],
    );
  }
}
