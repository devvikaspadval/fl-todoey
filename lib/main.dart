import 'dart:async';

import 'package:flutter/material.dart';
import '../screens/tasks_screen.dart';

void main() {

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor:const Color(0xFF63C9FE) ,primary: const Color(0xFF63C9FE),secondary: Colors.white),
        useMaterial3: true,
      ),
      home: const TasksScreen()
    );
  }
}
