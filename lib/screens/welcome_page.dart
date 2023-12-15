import 'package:dad_jokes_app/widgets/joke_button.dart';
import 'package:dad_jokes_app/widgets/main_title.dart';
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
          const JokeButton(),
          const Spacer(),
          Align(
              alignment: Alignment.bottomCenter,
              child: Padding(
                padding: const EdgeInsets.all(18.0),
                child: TextButton(
                  onPressed: () {},
                  style: ButtonStyle(
                    overlayColor: MaterialStateColor.resolveWith(
                      (states) => const Color.fromARGB(20, 243, 152, 33),
                    ),
                  ),
                  child: const Text(
                    "What is a dad joke?",
                    style: TextStyle(
                      decoration: TextDecoration.underline,
                      decorationColor: Color.fromARGB(255, 243, 152, 33),
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                      color: Color.fromARGB(255, 243, 152, 33),
                    ),
                  ),
                ),
              )),
        ],
      ),
    );
  }
}
