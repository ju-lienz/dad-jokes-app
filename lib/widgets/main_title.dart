import 'package:flutter/material.dart';

class MainTitle extends StatelessWidget {
  const MainTitle({super.key});

  @override
  Widget build(BuildContext context) {
    return const Column(children: [
      SizedBox(height: 330),
      Text(
        "Welcome to the",
        style: TextStyle(fontSize: 24),
      ),
      Text(
        "ULTIMATE DAD JOKES",
        style: TextStyle(fontSize: 49, fontFamily: 'DCCAsh'),
      ),
      SizedBox(height: 30),
      Text(
        "Are you ready for it?",
        style: TextStyle(fontSize: 19),
      ),
      SizedBox(height: 15),
    ]);
  }
}
