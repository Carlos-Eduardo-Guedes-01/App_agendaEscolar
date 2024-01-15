import 'package:appagendaescolar/Pages/Home/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp()); // Use const for stateless widgets
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: ThemeData(
        colorScheme: ColorScheme.fromSeed(seedColor: Colors.transparent),
        useMaterial3: true,
      ),
      home: const MyHomePage(title: 'Agenda Escolar'),
    );
  }
}
