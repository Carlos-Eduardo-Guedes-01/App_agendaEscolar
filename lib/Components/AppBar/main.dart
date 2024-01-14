import 'package:flutter/material.dart';

class AppBarCustom extends StatefulWidget implements PreferredSizeWidget {
  const AppBarCustom({super.key, required this.title});
  final String title;
  @override
  State<AppBarCustom> createState() => _AppBarCustomState();
  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}

class _AppBarCustomState extends State<AppBarCustom> {
  var clique = 'Não clicou';
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
          onPressed: AlteraClique,
          icon: Icon(Icons.add),
        )
      ],
      title: Text(
        widget.title,
        style: TextStyle(color: Colors.white),
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
