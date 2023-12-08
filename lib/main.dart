import 'package:dad_jokes_app/presentation/widgets/welcome_widget.dart';
import 'package:flutter/material.dart';

void main() => runApp(const MyApp());

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: "Dad's joke",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("The best app for your dad"),
        ),
        body: const WelcomeWidget(),
      ),
    );
  }
}

