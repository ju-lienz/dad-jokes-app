import 'package:flutter/material.dart';

void jokePopup(BuildContext context, String message) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text("Today's dad joke is..."),
        content: Text(message),
        actions: [
          TextButton(
            onPressed: () {
              // Acción a realizar al presionar el botón del popup
              Navigator.of(context).pop(); // Cerrar el popup
            },
            child: const Text('Close'),
          ),
        ],
      );
    },
  );
}
