import 'package:flutter/material.dart';
import 'package:flutter_app_esprit/cell.dart';
import 'package:flutter_app_esprit/game.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  //var
  final List<Game> games = [
    Game("dmc5.jpg", "Devil May Cry 5", 200),
    Game("fifa.jpg", "Fifa 22", 220),
    Game("minecraft.jpg", "Minecraft", 150),
    Game("nfs.jpg", "Need For Speed", 100),
    Game("rdr2.jpg", "Red Dead 2", 150),
    Game("re8.jpg", "Resident Evil 8", 120)
  ];

  //actions

  //life cycle
  @override
  void initState() {
    super.initState();
  }

  //build
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("G-Store Esprit"),
      ),
      body: ListView.builder(
          itemCount: games.length,
          itemBuilder: (context, index) {
            return Cell(games[index]);
          }),
    );
  }
}
