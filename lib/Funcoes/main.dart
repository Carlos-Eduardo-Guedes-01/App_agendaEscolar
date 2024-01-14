import 'package:flutter/material.dart';

class Funcoes extends StatefulWidget {
  const Funcoes({super.key});
  final clique
  @override
  State<Funcoes> createState() => _FuncoesState();
}

class _FuncoesState extends State<Funcoes> {
  @override
  Widget build(BuildContext context) {
    return const Placeholder();
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