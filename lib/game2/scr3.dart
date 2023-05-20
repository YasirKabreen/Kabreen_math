import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_app/game2/model.dart';
import 'package:math_app/game2/scr3.dart';
import 'package:math_app/game2/scr4.dart';
import 'package:provider/provider.dart';

class Scr3 extends StatelessWidget {
  const Scr3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final gam = Provider.of<Games>(context);
    return Scaffold(
      appBar: AppBar(
        title: gam.logo(),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey,
      body: Column(
        children: [
          const SizedBox(
            height: 40,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.all(20.0),
              child: Card(
                color: Colors.blueGrey,
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          gam.mark('4'),
                          gam.mark('+'),
                          gam.mark('3'),
                          gam.mark('='),
                          gam.mark1('65'),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          gam.mark('2'),
                          gam.mark('+'),
                          gam.mark('5'),
                          gam.mark('='),
                          gam.mark1('47'),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          gam.mark('6'),
                          gam.mark('+'),
                          gam.mark('1'),
                          gam.mark('='),
                          gam.mark1('83'),
                        ],
                      ),
                      Row(
                        mainAxisSize: MainAxisSize.min,
                        children: [
                          gam.mark('7'),
                          gam.mark('+'),
                          gam.mark('8'),
                          gam.mark('='),
                          gam.box(gam.y, gam.x)
                        ],
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      gam.eleck(910)
                    ],
                  ),
                ),
              ),
            ),
          ),
          ElevatedButton.icon(
            onPressed: () {
              gonext(context);
            },
            label: const Padding(
              padding: EdgeInsets.all(8.0),
              child: Text(
                'Next',
                style: TextStyle(
                    color: Colors.white,
                    fontSize: 24,
                    fontWeight: FontWeight.bold),
              ),
            ),
            icon: const Icon(Icons.skip_next, size: 40),
          )
        ],
      ),
    );
  }

  gonext(ctx) {
    Navigator.push(
      ctx,
      MaterialPageRoute(
        builder: (context) => Scr4(),
      ),
    );
  }
}
