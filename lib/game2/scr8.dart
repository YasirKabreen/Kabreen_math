import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_app/main.dart';

class Scr8 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.blueGrey,
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Center(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              mainAxisSize: MainAxisSize.min,
              children: const [
                Text(
                  'Kab',
                  style: TextStyle(fontSize: 60, color: Colors.orange),
                ),
                Text(
                  'reen ',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
                Text(
                  'M',
                  style: TextStyle(fontSize: 60, color: Colors.orange),
                ),
                Text(
                  'ath',
                  style: TextStyle(fontSize: 30, color: Colors.white),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 40,
          ),
          const Text(
            'Stay Tuned for Upcoming Updates',
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
        ],
      ),
    );
  }
}
