import 'package:dad_jokes_app/api/joke_api.dart';
import 'package:dad_jokes_app/models/joke.dart';
import 'package:dad_jokes_app/widgets/show_popup.dart';
import 'package:flutter/material.dart';

class JokeButton extends StatelessWidget {
  const JokeButton({
    super.key,
  });

  void _fetchAndShowJoke(BuildContext context) async {
    BuildContext currentContext = context; // Capture the context
    try {
      Joke joke = await fetchRandomJoke();
      showPopup(currentContext, joke.content);
    } catch (e) {
      showPopup(currentContext, "Error fetching joke");
      // Handle error if needed
    }
  }

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        _fetchAndShowJoke(context);
      },
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(Colors.blue),
        padding: MaterialStateProperty.all(
            const EdgeInsets.fromLTRB(24, 10, 24, 10)),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
        ),
      ),
      child: const Text("Of course",
          style: TextStyle(color: Colors.white, fontSize: 24)),
    );
  }
}
