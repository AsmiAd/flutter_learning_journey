import 'package:figma_task_one/screens/login_screen.dart';
import 'package:figma_task_one/theme_constants.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'StudyHub Nepal',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: shPrimaryBlue),
        fontFamily: 'Roboto',
        scaffoldBackgroundColor: shBackground,
      ),
      home: const LoginScreen(),
    );
  }
}
