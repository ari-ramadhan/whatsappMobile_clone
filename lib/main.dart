import 'package:flutter/material.dart';
import 'package:whatsapp_messenger/common/theme/light_theme.dart';
import 'package:whatsapp_messenger/common/theme/dark_theme.dart';
import 'package:whatsapp_messenger/feature/auth/pages/login_page.dart';
import 'package:whatsapp_messenger/feature/welcome/pages/welcome_page.dart';

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
        theme: lightTheme(),
        darkTheme: darkTheme(),
        themeMode: ThemeMode.system,
        home: const LoginPage());
  }
}
