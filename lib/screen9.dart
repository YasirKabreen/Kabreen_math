import 'package:flutter/material.dart';
import 'package:flutter/src/foundation/key.dart';
import 'package:flutter/src/widgets/framework.dart';
import 'package:math_app/homescreen.dart';
import 'package:math_app/screen10.dart';
import 'package:math_app/screen2.dart';
import 'package:math_app/screen8.dart';

class Screen9 extends StatefulWidget {
  const Screen9({Key? key}) : super(key: key);

  @override
  State<Screen9> createState() => _Screen9State();
}

class _Screen9State extends State<Screen9> {
  @override
  final TextEditingController x = TextEditingController();
  final TextEditingController y = TextEditingController();
  final TextEditingController z = TextEditingController();
  final TextEditingController n = TextEditingController();
  final TextEditingController m = TextEditingController();
  final TextEditingController s = TextEditingController();
  final TextEditingController o = TextEditingController();
  final TextEditingController p = TextEditingController();
  final TextEditingController q = TextEditingController();

  box(Color col, TextEditingController con) {
    return Container(
      width: 40,
      height: 40,
      color: col,
      child: TextField(
        textAlign: TextAlign.center,
        style: TextStyle(color: Colors.white, fontSize: 30),
        keyboardType: TextInputType.phone,
        controller: con,
      ),
    );
  }

  mark(String mrk) {
    return Container(
      width: 40,
      height: 40,
      child: Center(
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            mrk,
            style: TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }

  chek(int ck) {
    if (ck == 1) {
      return Container(
        width: 50,
        height: 50,
        // child: Center(
        //     child: Icon(
        //   Icons.circle,
        //   color: Colors.grey,
        // )),
      );
    }
    if (ck == 2) {
      return Container(
        width: 50,
        height: 50,
        child: Center(
            child: Icon(
          Icons.check,
          color: Colors.green,
        )),
      );
    }
    if (ck == 3) {
      return Container(
        width: 50,
        height: 50,
        child: Center(
            child: Icon(
          Icons.cancel_outlined,
          color: Colors.red,
        )),
      );
    }
  }

  String mm = 'check';
  Color cl = Colors.white;
  int ck1 = 1;
  int ck2 = 1;
  int ck3 = 1;
  int ck4 = 1;
  int ck5 = 1;
  int ck6 = 1;

  Icon u = Icon(Icons.check_circle_outlined);
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
              margin: EdgeInsets.all(2),
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
                        box(Colors.blue, x),
                        mark('-'),
                        box(Colors.brown, y),
                        mark('+'),
                        box(Colors.amber, z),
                        mark('='),
                        mark('6'),
                        chek(ck1)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mark('-'),
                        mark(''),
                        mark('+'),
                        mark(''),
                        mark('-'),
                        mark(''),
                        mark(''),
                        mark(''),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        box(Colors.deepOrange, n),
                        mark('+'),
                        box(Colors.green, m),
                        mark('-'),
                        box(Colors.purple, s),
                        mark('='),
                        mark('14'),
                        chek(ck2)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mark('+'),
                        mark(''),
                        mark('-'),
                        mark(''),
                        mark('+'),
                        mark(''),
                        mark(''),
                        mark(''),
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
                        box(Colors.red, o),
                        mark('-'),
                        box(Colors.grey, p),
                        mark('+'),
                        box(Colors.indigo, q),
                        mark('='),
                        mark('5'),
                        chek(ck3)
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mark('='),
                        mark(''),
                        mark('='),
                        mark(''),
                        mark('='),
                        mark(''),
                        mark(''),
                        mark(''),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        mark('9'),
                        mark(''),
                        mark('10'),
                        mark(''),
                        mark('4'),
                        mark(''),
                        mark(''),
                        mark(''),
                      ],
                    ),
                    SizedBox(
                      height: 10,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        chek(ck4),
                        mark(''),
                        chek(ck5),
                        mark(''),
                        chek(ck6),
                        mark(''),
                        mark(''),
                        mark(''),
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
                          double.parse(z.text),
                          double.parse(n.text),
                          double.parse(m.text),
                          double.parse(s.text),
                          double.parse(o.text),
                          double.parse(p.text),
                          double.parse(q.text),
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

  iscorrect(double x, double y, double z, double n, double m, double s,
      double o, double p, double q) {
    if (x - y + z == 6) {
      setState(() {
        ck1 = 2;
      });
    } else {
      setState(() {
        ck1 = 3;
      });
    }
    if (n + m - s == 14) {
      setState(() {
        ck2 = 2;
      });
    } else {
      setState(() {
        ck2 = 3;
      });
    }
    if (o - p + q == 5) {
      setState(() {
        ck3 = 2;
      });
    } else {
      setState(() {
        ck3 = 3;
      });
    }
    if (x - n + o == 9) {
      setState(() {
        ck4 = 2;
      });
    } else {
      setState(() {
        ck4 = 3;
      });
    }
    if (y + m - p == 10) {
      setState(() {
        ck5 = 2;
      });
    } else {
      setState(() {
        ck5 = 3;
      });
    }
    if (z - s + q == 4) {
      setState(() {
        ck6 = 2;
      });
    } else {
      setState(() {
        ck6 = 3;
      });
    }
    if (ck1 == ck2 &&
        ck3 == ck4 &&
        ck4 == ck5 &&
        ck5 == ck6 &&
        ck1 == ck5 &&
        ck1 == 2) {
      setState(() {
        mm = 'Correct';
        cl = Colors.green;
        nxt = Colors.green;
      });
    } else {
      setState(() {
        mm = 'Incorrect';
        cl = Colors.red;
        nxt = Colors.grey;
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
        builder: (context) => Screen10(),
      ),
    );
  }
}
