import 'package:dad_jokes_app/api/joke_api.dart';
import 'package:dad_jokes_app/models/joke.dart';
import 'package:dad_jokes_app/presentation/widgets/main_title.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const MainTitle(),
          ElevatedButton(
            onPressed: () {
              FutureBuilder<Joke>(
                future: fetchRandomJoke(),
                builder: (context, snapshot) {
                  if (snapshot.connectionState == ConnectionState.waiting) {
                    return const CircularProgressIndicator();
                  }
                  if (snapshot.hasError) {
                    return const Text('Error: error fetching joke');
                  }
                  return Text('Joke: ${snapshot.data!.joke}');
                },
              );
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
          ),
          const Spacer(),
          const Align(
            alignment: Alignment.bottomCenter,
            child: Text(
              "What is a dad joke?",
              style: TextStyle(fontSize: 18),
            ),
          ),
        ],
      ),
    );
  }
}
