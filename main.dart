import 'package:flutter/material.dart';
import 'dart:math';

void main() {
  runApp(MaterialApp(debugShowCheckedModeBanner: false, home: Home()));
}

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  int Ludo = 4;
  int num = 2;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          elevation: 20,
          backgroundColor: Colors.red,
          centerTitle: true,
          title: Text("ludo"),
        ),
        body: Center(
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 16, right: 16),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            Ludo = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset("images/dice$Ludo.png"),
                      ))),
              Expanded(
                  child: Padding(
                      padding: EdgeInsets.only(left: 15, right: 15),
                      child: InkWell(
                        onTap: () {
                          setState(() {
                            num = Random().nextInt(6) + 1;
                          });
                        },
                        child: Image.asset("images/dice$num.png"),
                      ))),
            ],
          ),
        ));
    ;
  }
}
