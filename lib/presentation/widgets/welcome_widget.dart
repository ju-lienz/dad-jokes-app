import 'package:flutter/material.dart';

class Welcomewidget extends StatelessWidget {
  const Welcomewidget({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text("Welcome to the"),
          const Text("ULTIMATE DAD JOKES"),
          const SizedBox(height: 30),
          ElevatedButton(
            onPressed: () {},
            style: ButtonStyle(
              backgroundColor: MaterialStateProperty.all(Colors.blue),
              padding: MaterialStateProperty.all(const EdgeInsets.fromLTRB(16, 6, 16, 6)),
              shape: MaterialStateProperty.all<RoundedRectangleBorder>(
                RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
            ),
            child: const Text("Of course", style: TextStyle(color: Colors.white)),
          ),
          const Spacer(), // Ocupa el espacio restante en la parte inferior
          const Align(
            alignment: Alignment.bottomCenter,
            child: Text("What is a dad joke?"),
          ),
        ],
      ),
    );
  }
}
