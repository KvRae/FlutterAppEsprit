

import 'package:flutter/material.dart';

import 'cell.dart';

class InscriptionScreen extends StatelessWidget {

  //build
  @override
  Widget build(BuildContext context) {
  return Scaffold(
  appBar: AppBar(
  title: const Text("G-Store Esprit"),
  ),
  body: ListView.builder(
  itemBuilder: (context, index) {
  var games;
  return Cell(games[index]);
  }),
  );
  }
  }
