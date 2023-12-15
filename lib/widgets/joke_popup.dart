import 'package:flutter/material.dart';

void jokePopup(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Today's dad joke is...",
            style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold)),
        content: Text(message, style: const TextStyle(fontSize: 18)),
        actions: [
          TextButton(
            onPressed: () {
              Navigator.of(context).pop(); // Cerrar el popup
            },
            child: const Text('Close',
                style: TextStyle(color: Color.fromARGB(255, 243, 152, 33))),
          ),
        ],
      );
    },
  );
}
