import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_app/screen2.dart';
import 'package:math_app/screen3.dart';

class Screen2 extends StatefulWidget {
  const Screen2({Key? key}) : super(key: key);

  @override
  State<Screen2> createState() => _Screen2State();
}

class _Screen2State extends State<Screen2> {
  @override
  final TextEditingController x = TextEditingController();
  final TextEditingController y = TextEditingController();
  final TextEditingController n = TextEditingController();
  final TextEditingController m = TextEditingController();
  final TextEditingController l = TextEditingController();
  final TextEditingController k = TextEditingController();
  String mm = 'check';
  Color cl = Colors.white;
  Color chek1 = Colors.black;
  Color chek2 = Colors.black;
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
              height: 100,
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
                          //color: Colors.red,
                          child: Text(
                            textAlign: TextAlign.center,
                            '-',
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.deepOrange,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            keyboardType: TextInputType.phone,
                            controller: l,
                          ),
                        ),
                      ],
                    ),
                    Row(
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
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.cyan,
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
                          //color: Colors.red,
                          child: Text(
                            textAlign: TextAlign.center,
                            '-',
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.deepPurple,
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
                          //color: Colors.red,
                          child: Text(
                            textAlign: TextAlign.center,
                            '-',
                            style: TextStyle(color: Colors.white, fontSize: 50),
                          ),
                        ),
                        Container(
                          width: 50,
                          height: 50,
                          color: Colors.lightGreen,
                          child: TextField(
                            textAlign: TextAlign.center,
                            style: TextStyle(color: Colors.white, fontSize: 30),
                            keyboardType: TextInputType.phone,
                            controller: k,
                          ),
                        ),
                      ],
                    ),
                    Row(
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
                          //color: Colors.blueGrey,
                          child: Center(
                            child: Text(
                              textAlign: TextAlign.center,
                              '17',
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
                    SizedBox(
                      height: 10,
                    ),
                    SizedBox(
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
                          double.parse(l.text),
                          double.parse(k.text),
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

  iscorrect(double x, double y, double n, double m, double l, double k) {
    if (x + y - l == 12) {
      setState(() {
        mm = 'Correct';
        cl = Colors.green;
        chek1 = Colors.green;
      });
    } else {
      setState(() {
        mm = 'Incorrect';
        cl = Colors.red;
        chek1 = Colors.black;
      });
    }
    if (n - m - k == 17) {
      setState(() {
        chek2 = Colors.green;
      });
    } else {
      setState(() {
        chek2 = Colors.black;
      });
    }
    if (chek1 == chek2 && chek2 == Colors.green) {
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
        builder: (context) => Screen3(),
      ),
    );
  }
}
