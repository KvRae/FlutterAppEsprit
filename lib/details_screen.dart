import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class DetailsScreen extends StatefulWidget {
  DetailsScreen({super.key});

  @override
  State<DetailsScreen> createState() => _DetailsScreenState();
}

class _DetailsScreenState extends State<DetailsScreen> {
  //var
  int nbr = 3000;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(),
      body: Padding(
        padding: const EdgeInsets.all(15.0),
        child: ListView(
          children: [
            //1
            Image.asset("Assets/dmc5.jpg"),
            const SizedBox(
              height: 20,
            ),
            //2
            const Text(
              "Le Lorem Ipsum est simplement du faux texte employé dans la composition et la mise en page avant impression. Le Lorem Ipsum est le faux texte standard de l'imprimerie depuis les années 1500, quand un imprimeur anonyme assembla ensemble des morceaux de texte pour réaliser un livre spécimen de polices de texte. Il n'a pas fait que survivre cinq siècles, mais s'est aussi adapté à la bureautique informatique, sans que son contenu n'en soit modifié. Il a été popularisé dans les années 1960 grâce à la vente de feuilles Letraset contenant des passages du Lorem Ipsum, et, plus récemment, par son inclusion dans des applications de mise en page de texte, comme Aldus PageMaker.",
              textAlign: TextAlign.justify,
            ),
            const SizedBox(
              height: 50,
            ),
            //3
            const Center(
              child: Text(
                "200 TND",
                style: TextStyle(fontSize: 32, fontWeight: FontWeight.bold),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Center(child: Text("Exemplaires disponible : ${nbr.toString()}")),
            const SizedBox(
              height: 50,
            ),
            ElevatedButton.icon(
                onPressed: () {
                  setState(() {
                    nbr--;
                  });
                },
                icon: const Icon(CupertinoIcons.shopping_cart),
                label: const Text("Acheter"))
          ],
        ),
      ),
    );
  }
}
