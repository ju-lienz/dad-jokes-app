import 'package:dad_jokes_app/api/joke_api.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const SizedBox(height: 330),
          const Text(
            "Welcome to the",
            style: TextStyle(fontSize: 29),
          ),
          const Text(
            "ULTIMATE DAD JOKES",
            style: TextStyle(fontSize: 39),
          ),
          const SizedBox(height: 30),
          const Text(
            "Are you ready for it?",
            style: TextStyle(fontSize: 19),
          ),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
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
          Center(
            child: FutureBuilder<Map<String, dynamic>>(
              future: fetchRandomJoke(),
              builder: (context, snapshot) {
                if (snapshot.connectionState == ConnectionState.waiting) {
                  return const CircularProgressIndicator();
                } else if (snapshot.hasError) {
                  return Text('Error: ${snapshot.error}');
                } else {
                  return Text('Joke: ${snapshot.data?['joke']}');
                }
              },
            ),
          )
        ],
      ),
    );
  }
}
