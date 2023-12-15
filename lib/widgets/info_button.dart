import 'package:dad_jokes_app/widgets/info_popup.dart';
import 'package:flutter/material.dart';

class InfoButton extends StatelessWidget {
  const InfoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextButton(
            onPressed: () {
              infoPopup(context);
            },
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
        ));
  }
}
