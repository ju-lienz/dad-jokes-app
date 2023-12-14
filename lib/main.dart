import 'package:dad_jokes_app/widgets/custom_app_bar.dart';
import 'package:dad_jokes_app/widgets/welcome_widget.dart';
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
          title: const CustomAppBar(),
        ),
        body: const WelcomeWidget(),
      ),
    );
  }
}
