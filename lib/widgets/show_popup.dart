import 'package:flutter/material.dart';

void showPopup(BuildContext context) {
  showDialog(
    context: context,
    builder: (BuildContext context) {
      return AlertDialog(
        title: const Text('Título del Popup'),
        content: const Text('Contenido del Popup'),
        actions: [
          TextButton(
            onPressed: () {
              // Acción a realizar al presionar el botón del popup
              Navigator.of(context).pop(); // Cerrar el popup
            },
            child: const Text('Cerrar'),
          ),
        ],
      );
    },
  );
}
