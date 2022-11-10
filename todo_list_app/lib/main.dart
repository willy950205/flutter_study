import 'package:flutter/material.dart';
import './screens/login_screen.dart';
import './screens/splash_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.P
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'todo_list_app',
      home: SplashScreen(),
    );
  }
}
