import 'package:flutter/material.dart';
import 'package:flutter_app_esprit/model/game.dart';

import 'element_info.dart';

class Basket extends StatelessWidget {
  const Basket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          const SizedBox(
            height: 10,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Text(
                "Total : 500 TND",
                textScaleFactor: 1.5,
              )
            ],
          ),
          Container(
              margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
              child: const Divider(color: Colors.red)),
          Expanded(
            child: ListView(
              children: [
                /* ElementInfo(
                    Game("dmc5.jpg", "Devil May Cry 5", 200, quantity: 1)),
                ElementInfo(
                    Game("re8.jpg", "Resident Evil VIII", 200, quantity: 1)),
                ElementInfo(
                    Game("nfs.jpg", "Need For Speed Heat", 200, quantity: 1))
               */
              ],
            ),
          )
        ],
      ),
    );
  }
}
