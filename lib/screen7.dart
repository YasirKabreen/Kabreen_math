import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_app/homescreen.dart';
import 'package:math_app/screen2.dart';
import 'package:math_app/screen8.dart';

class Screen7 extends StatefulWidget {
  const Screen7({Key? key}) : super(key: key);

  @override
  State<Screen7> createState() => _Screen7State();
}

class _Screen7State extends State<Screen7> {
  @override
  final TextEditingController x = TextEditingController();
  final TextEditingController y = TextEditingController();
  final TextEditingController n = TextEditingController();
  final TextEditingController m = TextEditingController();
  String mm = 'check';
  Color cl = Colors.white;
  Color chek1 = Colors.black;
  Color chek2 = Colors.black;
  Color chek3 = Colors.black;
  Color chek4 = Colors.black;
  Color nxt = Colors.black;
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Kab Math'),
        centerTitle: true,
      ),
      backgroundColor: Colors.blueGrey[900],
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(
              height: 50,
            ),
            Card(
              color: Colors.black,
              margin: EdgeInsets.all(20),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    SizedBox(
                      height: 10,
                      width: double.infinity,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.blue,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            keyboardType: TextInputType.phone,
                            controller: x,
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.red,
                          child: Text(
                            textAlign: TextAlign.center,
                            '+',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.brown,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            keyboardType: TextInputType.phone,
                            controller: y,
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Text(
                            textAlign: TextAlign.center,
                            '=',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              '12',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.check_box),
                              color: chek1,
                              onPressed: () {
                                ceknxt();
                              },
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Text(
                            textAlign: TextAlign.center,
                            '+',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.red,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Text(
                            textAlign: TextAlign.center,
                            '+',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.red,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            keyboardType: TextInputType.phone,
                            controller: n,
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Text(
                            textAlign: TextAlign.center,
                            '+',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.green,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            keyboardType: TextInputType.phone,
                            controller: m,
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Text(
                            textAlign: TextAlign.center,
                            '=',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          // color: Colors.blueGrey,
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              '6',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.check_box),
                              color: chek2,
                              onPressed: () {},
                            ),
                          ),
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          child: Text(
                            textAlign: TextAlign.center,
                            '=',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.red,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          child: Text(
                            textAlign: TextAlign.center,
                            '=',
                            style: TextStyle(color: Colors.white, fontSize: 40),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              '8',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.red,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              '10',
                              style: TextStyle(
                                  color: Colors.white,
                                  fontSize: 30,
                                  fontWeight: FontWeight.bold),
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                        )
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.check_box),
                              color: chek4,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.red,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                          child: Center(
                            child: IconButton(
                              icon: Icon(Icons.check_box),
                              color: chek3,
                              onPressed: () {},
                            ),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          //color: Colors.blueGrey,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    ElevatedButton(
                      child: Padding(
                        padding: const EdgeInsets.all(8.0),
                        child: Text(
                          mm,
                          style: TextStyle(
                              color: cl,
                              fontSize: 24,
                              fontWeight: FontWeight.bold),
                        ),
                      ),
                      onPressed: () {
                        FocusManager.instance.primaryFocus?.unfocus();
                        iscorrect(
                          double.parse(x.text),
                          double.parse(y.text),
                          double.parse(n.text),
                          double.parse(m.text),
                        );
                      },
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 20,
            ),
            ElevatedButton.icon(
              onPressed: () {
                ceknxt();
              },
              label: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Text(
                  'Next',
                  style: TextStyle(
                      color: nxt, fontSize: 24, fontWeight: FontWeight.bold),
                ),
              ),
              icon: Icon(Icons.skip_next),
            )
          ],
        ),
      ),
    );
  }

  iscorrect(double x, double y, double n, double m) {
    if (x + y == 12) {
      setState(() {
        chek1 = Colors.green;
      });
    } else {
      setState(() {
        chek1 = Colors.black;
      });
    }
    if (n + m == 6) {
      setState(() {
        chek2 = Colors.green;
      });
    } else {
      setState(() {
        chek2 = Colors.black;
      });
    }
    if (x + n == 8) {
      setState(() {
        chek4 = Colors.green;
      });
    } else {
      setState(() {
        chek4 = Colors.black;
      });
    }
    if (y + m == 10) {
      setState(() {
        chek3 = Colors.green;
      });
    } else {
      setState(() {
        chek3 = Colors.black;
      });
    }
    if (chek1 == chek2 && chek1 == chek3 && chek2 == Colors.green) {
      setState(() {
        mm = 'Correct';
        cl = Colors.green;
        nxt = Colors.green;
      });
    } else {
      setState(() {
        mm = 'Incorrect';
        cl = Colors.red;
        nxt = Colors.black;
      });
    }
  }

  ceknxt() {
    if (cl == Colors.green) {
      gonext();
    } else {}
  }

  gonext() {
    Navigator.push(
      context,
      MaterialPageRoute(
        builder: (context) => Screen8(),
      ),
    );
  }
}
