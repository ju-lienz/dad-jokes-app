import 'package:flutter/material.dart';

class CustomAppBar extends StatelessWidget {
  const CustomAppBar({
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
        icon: const Icon(Icons.menu), // Add your desired icon here
        onPressed: () {
          // Handle the action when the leading icon is pressed
        },
      ),
      actions: [
        IconButton(
          icon: const Icon(Icons.search),
          onPressed: () {
            // Handle the action when the search icon is pressed
          },
        ),
      ],
    );
  }
}
