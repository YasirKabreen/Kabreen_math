import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class Games with ChangeNotifier {
  box(Color col, TextEditingController con) {
    return Container(
      decoration:
          BoxDecoration(color: col, borderRadius: BorderRadius.circular(10)),
      width: 60,
      height: 50,
      child: TextField(
        textAlign: TextAlign.center,
        style: const TextStyle(color: Colors.white, fontSize: 30),
        keyboardType: TextInputType.phone,
        controller: con,
      ),
    );
  }

  mark(String mrk) {
    return Container(
      color: Colors.blueGrey,
      width: 50,
      height: 50,
      child: Center(
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            mrk,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }

  mark1(String mrk) {
    return Container(
      color: Colors.blueGrey,
      width: 60,
      height: 50,
      child: Center(
        child: Center(
          child: Text(
            textAlign: TextAlign.center,
            mrk,
            style: const TextStyle(color: Colors.white, fontSize: 30),
          ),
        ),
      ),
    );
  }

  chek(double ck, double ans) {
    if (ck == null) {
      y = Colors.grey;
    }
    if (ck == ans) {
      y = Colors.green;
    }
    if (ck != ans) {
      y = Colors.red;
    }
    notifyListeners();
  }

  eleck(double ans) {
    return ElevatedButton(
      onPressed: () {
        chek(double.parse(x.text), ans);
        FocusManager.instance.primaryFocus?.unfocus();
      },
      child: const Padding(
        padding: EdgeInsets.all(8.0),
        child: Text(
          'Check',
          style: TextStyle(
              color: Colors.orange, fontSize: 24, fontWeight: FontWeight.bold),
        ),
      ),
    );
  }

  logo() {
    return Row(
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
    );
  }

  TextEditingController x = TextEditingController();

  void dispose() {
    x.dispose();
    super.dispose();
  }

  Color y = Colors.grey;
  get gemes {}
}
