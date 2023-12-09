import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/feature/welcome/welcome_page.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Whatsapp Me',
        theme: ThemeData.dark(),
        home: const WelcomePage());
  }
}
