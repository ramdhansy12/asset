import 'package:flutter/material.dart';

import 'pages/user/login_page.dart';
import 'pages/user/register_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: const ColorScheme.light(
          primary: Color.fromARGB(226, 113, 247, 52),
          secondary: Color.fromARGB(255, 255, 207, 63),
        ),
        scaffoldBackgroundColor: Colors.purple[50],
        elevatedButtonTheme: ElevatedButtonThemeData(
          style: ButtonStyle(
            padding: const MaterialStatePropertyAll(
              EdgeInsets.symmetric(
                vertical: 16,
                horizontal: 30,
              ),
            ),
            shape: MaterialStatePropertyAll(
              RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(10),
              ),
            ),
            backgroundColor: const MaterialStatePropertyAll(
                Color.fromARGB(255, 248, 208, 255)),
          ),
        ),
      ),
      home: LoginPage(),
      routes: <String, WidgetBuilder>{
        // '/dashboard': (BuildContext context) => RegisterPage(),
      },
    );
  }
}
