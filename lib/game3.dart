import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';

class Game3 extends StatelessWidget {
  const Game3({Key? key}) : super(key: key);

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
              'ame 3  ',
              style: TextStyle(fontSize: 20),
            ),
          ],
        ),
      ),
    );
  }
}
