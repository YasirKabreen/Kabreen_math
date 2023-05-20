import 'package:flutter/material.dart';
import 'package:math_app/game1.dart';
import 'package:math_app/game2/model.dart';
import 'package:math_app/mainhome.dart';
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
import 'package:provider/provider.dart';

import 'homescreen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => Games(),
      child: MaterialApp(
        title: 'Math App',
        theme: ThemeData(
          primarySwatch: Colors.blueGrey,
        ),
        home: MainHome(),
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}
