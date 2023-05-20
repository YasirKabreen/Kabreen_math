import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_app/screen1.dart';

import 'game1.dart';
import 'game2.dart';
import 'game3.dart';
import 'game4.dart';

class MainHome extends StatelessWidget {
  MainHome({Key? key}) : super(key: key);
  final List<Widget> screen = [
    Game1(),
    Game2(),
    Game3(),
    Game4(),
  ];
  final List<String> gam = [
    'Game 1',
    'Game 2',
    'Game 3',
    'Game 4',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'Kab',
              style: TextStyle(fontSize: 30, color: Colors.orange),
            ),
            Text(
              'reen ',
              style: TextStyle(fontSize: 20),
            ),
            Text(
              'M',
              style: TextStyle(fontSize: 30, color: Colors.orange),
            ),
            Text(
              'ath',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
        centerTitle: true,
      ),
      body: ListView.builder(
        itemCount: 4,
        itemBuilder: (context, index) {
          return Padding(
            padding: const EdgeInsets.all(15.0),
            child: GestureDetector(
              onTap: () {
                Navigator.push(
                  context,
                  MaterialPageRoute(
                    builder: (context) => screen[index],
                  ),
                );
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                    borderRadius: BorderRadius.all(
                      Radius.circular(25),
                    ),
                    color: Colors.blueGrey),
                child: Center(
                  child: Text(
                    gam[index],
                    style: TextStyle(
                        fontSize: 30,
                        color: Colors.white,
                        fontWeight: FontWeight.bold),
                  ),
                ),
              ),
            ),
          );
        },
      ),
    );
  }
}
