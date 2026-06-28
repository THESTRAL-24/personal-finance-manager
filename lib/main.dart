import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}
class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
  debugShowCheckedModeBanner: false,
  title: 'Personal Finance Manager',
  home: Scaffold(
    appBar: AppBar(
      title: const Text('Personal Finance Manager'),
    ),
    body: const Center(
      child: Text('Welcome!'),
    ),
  ),
);
  }
}