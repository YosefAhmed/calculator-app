import 'dart:ffi';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';

void main() => runApp(Calculator());

class Calculator extends StatefulWidget {
  @override
  State<StatefulWidget> createState() {
    return AppState();
  }
}

class AppState extends State<Calculator> {
  double result = 0.0, n1, n2;
  int stat = 0;
  String op = "";
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
        home: Scaffold(
      backgroundColor: Colors.black54,
      body: Center(
        child:
            Column(mainAxisAlignment: MainAxisAlignment.end, children: <Widget>[
          Padding(padding: EdgeInsets.fromLTRB(0, 60, 0, 0)),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Expanded(
                child: Text(
                  "$result",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 60, color: Colors.white),
                ),
                flex: 4,
              ),
              Expanded(
                child: Text(
                  "$op",
                  textAlign: TextAlign.end,
                  style: TextStyle(fontSize: 40, color: Colors.white54),
                ),
                flex: 1,
              ),
            ],
          ),
          Expanded(
              child: GridView.count(
            // primary: false,
            padding: const EdgeInsets.fromLTRB(20, 0, 20, 20),
            crossAxisSpacing: 10,
            mainAxisSpacing: 10,
            crossAxisCount: 4,
            reverse: true,
            children: <Widget>[
              RaisedButton(
                onPressed: () {},
                child: const Text('.', style: TextStyle(fontSize: 40)),
                splashColor: Colors.orange,
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 0;
                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('0', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              SizedBox(),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    print('n1=$n1');
                    print('\nn2=$n2');
                    print('\nstate=$stat');

                    if (op == "+") {
                      result = n1 + n2;
                    } else if (op == "-") {
                      result = n1 - n2;
                    } else if (op == "*") {
                      result = n1 * n2;
                    } else if (op == "/") {
                      result = n1 / n2;
                    } else if (op == "%") {
                      result = n1 % n2;
                    }

                    n1 = result;
                    n2 = 0;
                    stat = 1;
                    op = "";
                  });
                },
                child: const Text('=',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                 splashColor: Colors.white,
                 highlightColor: Colors.white,
                 color: Colors.orange,
               
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),

              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 1;
                    print('\nstate=$stat');

                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('1', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 2;
                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('2', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 3;
                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('3', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    op = "-";
                  });
                },
                child: const Text('-',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                color: Colors.orange,
                splashColor: Colors.white,
                highlightColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),

              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 4;
                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('4', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 5;
                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('5', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 6;
                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('6', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    op = "+";
                  });
                },
                child: const Text('+',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                color: Colors.orange,
                splashColor: Colors.white,
                highlightColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),

              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 7;
                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('7', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 8;
                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('8', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 9;
                    if (stat == 0) {
                      n1 = result;
                    } else {
                      n2 = result;
                    }
                    stat = 1 - stat;
                  });
                },
                child: const Text('9', style: TextStyle(fontSize: 40)),
                color: Colors.white,
                splashColor: Colors.orange,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    op = "*";
                  });
                },
                child: const Text('x',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                color: Colors.orange,
                splashColor: Colors.white,
                highlightColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),

              RaisedButton(
                onPressed: () {
                  setState(() {
                    result = 0;
                    op = "";
                    stat = 0;
                    n1 = n2 = 0;
                  });
                },
                child: const Text('C',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                color: Colors.orange,
                splashColor: Colors.white,
                highlightColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    op = "(-";
                  });
                },
                child: const Text('+/-',
                    style: TextStyle(fontSize: 19, color: Colors.white)),
                color: Colors.orange,
                splashColor: Colors.white,
                highlightColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    op = "%";
                  });
                },
                child: const Text('%',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                color: Colors.orange,
                splashColor: Colors.white,
                highlightColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              RaisedButton(
                onPressed: () {
                  setState(() {
                    op = "/";
                  });
                },
                child: const Text('÷',
                    style: TextStyle(fontSize: 40, color: Colors.white)),
                color: Colors.orange,
                splashColor: Colors.white,
                highlightColor: Colors.white,
                shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(10.0)),
              ),
              // Container(
              //   // padding: const EdgeInsets.all(8),
              //   alignment: Alignment.center,
              //   child: const Text(
              //     "=",
              //     style: TextStyle(
              //         color: Colors.white,
              //         fontSize: 40,
              //         textBaseline: TextBaseline.alphabetic),
              //   ),
              //   color: Colors.blueGrey[900],
              //   width: 100,

              // ),
            ],
          ))
        ]),
      ),
    ));
  }
}
