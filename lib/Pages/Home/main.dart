//------------------------------------------------------ HomePage ----------------------------------------------
// importação AppBar customizada
import 'package:appagendaescolar/Components/AppBar/main.dart';
// importação menu Hamburguer(drawer)
import 'package:appagendaescolar/Components/Drawer/main.dart';
// importação do calendário da página inicial do cliente
import 'package:appagendaescolar/Components/Table_calendar/main.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  // title é o nome que fica no AppBar (Agenda Escolar)
  const MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // chamando AppBar customizada e enviando o título como parâmetro
      appBar: AppBarCustom(
        title: widget.title,
      ),
      //Chamando Drawer
      drawer: MyDrawer(),
      // Criando container para delimitar o Calendário
      body: Container(
        width: MediaQuery.of(context).size.width * 0.9,
        height: MediaQuery.of(context).size.height * 0.9,
        // Chamando calendário
        child: CalendarPage(),
      ),
    );
  }
}
