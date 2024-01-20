import 'package:flutter/material.dart';
// importação da HomePage
import 'package:appagendaescolar/Pages/Home/main.dart';
// Pacote para colocar o calendário em português brasileiro
// Lembrando que é preciso instalar a dependencia intl: no pubspec
import 'package:intl/date_symbol_data_local.dart';

void main() {
  // Passo 2 para por calendário em portugues brasileiro
  initializeDateFormatting().then((_) => runApp(const MyApp()));
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
      // Chamando HomePage
      home: const MyHomePage(title: 'Agenda Escolar'),
    );
  }
}
