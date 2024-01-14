import 'package:appagendaescolar/Components/AppBar/main.dart';
import 'package:appagendaescolar/Components/Drawer/main.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
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

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  var clique = 'Não clicou';

  Widget build(BuildContext context) {
    MyDrawer drawerClass = new MyDrawer();
    AppBarCustom AppBarCustomizada = new AppBarCustom(
      title: widget.title,
    );
    return Scaffold(
      appBar: AppBarCustomizada,
      drawer: drawerClass,
      body: Container(
        child: Text(clique),
      ),
    );
  }

  void AlteraClique() {
    setState(() {
      if (clique == 'Não Clicou') {
        clique = 'Clicou';
      } else {
        clique = 'Não Clicou';
      }
    });
  }
}
