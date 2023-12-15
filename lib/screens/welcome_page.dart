import 'package:dad_jokes_app/widgets/info_button.dart';
import 'package:dad_jokes_app/widgets/joke_button.dart';
import 'package:dad_jokes_app/widgets/main_title.dart';
import 'package:flutter/material.dart';

class WelcomeWidget extends StatelessWidget {
  const WelcomeWidget({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          MainTitle(),
          JokeButton(),
          Spacer(),
          InfoButton(),
        ],
      ),
    );
  }
}
