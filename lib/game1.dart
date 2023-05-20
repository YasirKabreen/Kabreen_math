import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_app/screen1.dart';
import 'package:math_app/screen10.dart';
import 'package:math_app/screen2.dart';
import 'package:math_app/screen3.dart';
import 'package:math_app/screen4.dart';
import 'package:math_app/screen5.dart';
import 'package:math_app/screen6.dart';
import 'package:math_app/screen7.dart';
import 'package:math_app/screen8.dart';
import 'package:math_app/screen9.dart';

class Game1 extends StatelessWidget {
  Game1({Key? key}) : super(key: key);
  final List<Widget> level = [
    Screen1(),
    const Screen2(),
    Screen3(),
    Screen4(),
    Screen5(),
    Screen6(),
    Screen7(),
    Screen8(),
    Screen9(),
    Screen10(),
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
              'ame 1 ',
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
