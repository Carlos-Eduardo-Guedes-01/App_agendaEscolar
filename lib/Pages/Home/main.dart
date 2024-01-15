import 'package:appagendaescolar/Components/Drawer/main.dart';
import 'package:flutter/material.dart';

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  String clique = "Não Clicou";

  @override
  Widget build(BuildContext context) {
    MyDrawer drawerClass = MyDrawer(); // Remove unnecessary 'new'
    AppBarCustom appBarCustomizada = AppBarCustom(
      title: widget.title,
      homePageState: this, // Pass the required argument
    );

    return Scaffold(
      appBar: appBarCustomizada,
      drawer: drawerClass,
      body: Container(
        child: Text(clique),
      ),
    );
  }

  void AlteraClique() {
    setState(() {
      clique = clique == 'Não Clicou' ? 'Clicou' : 'Não Clicou';
    });
  }
}

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustom(
      {super.key, required this.title, required this.homePageState});

  final String title;
  final _MyHomePageState homePageState;

  @override
  State<AppBarCustom> createState() => _AppBarCustomState();

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}

class _AppBarCustomState extends State<AppBarCustom> {
  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Color.fromARGB(255, 4, 36, 4),
      leading: DrawerButton(
        style: ButtonStyle(iconColor: MaterialStatePropertyAll(Colors.white)),
      ),
      actions: <Widget>[
        IconButton(
          color: Colors.white,
          onPressed: () {
            widget.homePageState.AlteraClique();
          },
          icon: Icon(Icons.add),
        )
      ],
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }
}
