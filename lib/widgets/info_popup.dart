import 'package:flutter/material.dart';

void infoPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("What is a dad joke?",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        content: const Text(
          'A dad joke is a joke, typically a pun, often presented as a one-liner or a question and answer, but less often a narrative. Generally inoffensive, dad jokes are stereotypically told with sincere humorous intent or to intentionally provoke a negative "groaning" reaction to their overly simplistic humor.',
          style: TextStyle(fontSize: 18),
        ),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Cerrar el popup
            },
            child: const Text(
              'Close',
              style: TextStyle(
                color: Color.fromARGB(255, 243, 152, 33),
              ),
            ),
          ),
        ],
      );
    },
  );
}
