//  ----------------------------------------- AppBar Custom --------------------------------------------------

import 'package:flutter/material.dart';

class AppBarCustom extends StatelessWidget implements PreferredSizeWidget {
  const AppBarCustom({Key? key, required this.title});

  final String title;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      // cor de fundo appbar
      backgroundColor: Color.fromARGB(255, 4, 36, 4),
      // Avisando que terá um drawer(menu hamburguer) no AppBar
      leading: DrawerButton(
          // Estilizando drawer
          style:
              ButtonStyle(iconColor: MaterialStateProperty.all(Colors.white))),
      actions: <Widget>[],
      // Titulo do AppBar
      title: Text(
        title,
        style: TextStyle(color: Colors.white),
      ),
    );
  }

  @override
  final Size preferredSize = const Size.fromHeight(kToolbarHeight);
}
