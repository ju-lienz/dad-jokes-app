import 'package:flutter/material.dart';

class MyAppBar extends StatelessWidget {
  MyAppBar({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: const Color.fromARGB(255, 243, 152, 33),
      title: const Center(
        child: Text(
          "The best app for your dad",
          style: TextStyle(fontSize: 18),
        ),
      ),
      leading: IconButton(
        icon: const Icon(Icons.menu),
        onPressed: () {},
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {},
        ),
      ],
    );
  }
}
