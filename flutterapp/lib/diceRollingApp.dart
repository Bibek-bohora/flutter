import 'package:flutter/material.dart';
import 'dart:math';
//this is random dice Zenerators

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: DiceRollingApp(),
  ));
}

class DiceRollingApp extends StatefulWidget {
  const DiceRollingApp({super.key});

  @override
  State<DiceRollingApp> createState() => _DiceRollingAppState();
}

class _DiceRollingAppState extends State<DiceRollingApp> {
  //hook

  int randomNumber = 1;

  // randomnumer() {

  // }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Color.fromARGB(255, 5, 241, 13),
        elevation: 0.2,
        centerTitle: true,
        title: Text("DiceRoling App"),
      ),
      body: Container(
        child: Column(
          children: [
            SizedBox(
              height: 10,
            ),
            Container(
              child: Image.asset("assets/images/$randomNumber.jpg"),
            ),
            Center(
              child: ElevatedButton(
                onPressed: () {
                  setState(() {
                    randomNumber = Random().nextInt(6) + 1;
                    debugPrint("$randomNumber  hellooo");
                  });
                },
                child: Text("roll"),
              ),
            )
          ],
        ),
      ),
    );
  }
}
