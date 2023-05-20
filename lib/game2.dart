import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

import 'game2/scr1.dart';
import 'game2/scr10.dart';
import 'game2/scr2.dart';
import 'game2/scr3.dart';
import 'game2/scr4.dart';
import 'game2/scr5.dart';
import 'game2/scr6.dart';
import 'game2/scr7.dart';
import 'game2/scr8.dart';
import 'game2/scr9.dart';

class Game2 extends StatelessWidget {
  Game2({Key? key}) : super(key: key);
  final List<Widget> level = [
    Scr1(),
    const Scr2(),
    Scr3(),
    Scr4(),
    Scr5(),
    Scr6(),
    Scr7(),
    Scr8(),
    Scr9(),
    Scr10(),
  ];
  void golvl(ctx, index) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (context) => level[index],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Row(
          mainAxisSize: MainAxisSize.min,
          children: const [
            Text(
              'G',
              style: TextStyle(fontSize: 30, color: Colors.orange),
            ),
            Text(
              'ame 2 ',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: GridView.builder(
          itemBuilder: (context, index) {
            return GestureDetector(
              onTap: () {
                golvl(context, index);
              },
              child: Padding(
                padding: const EdgeInsets.all(8.0),
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
                      'Level ${index + 1}',
                      style: TextStyle(
                          fontSize: 24,
                          color: Colors.white,
                          fontWeight: FontWeight.normal),
                    ),
                  ),
                ),
              ),
            );
          },
          itemCount: 10,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 2,
            childAspectRatio: 3 / 2,
            crossAxisSpacing: 15,
            mainAxisSpacing: 15,
          ),
        ),
      ),
    );
  }
}
