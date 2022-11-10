import 'package:flutter/material.dart';

//flutter doc tutirol
//STACK

void main() {
  runApp(MaterialApp(
    debugShowCheckedModeBanner: false,
    home: SStcck(),
  ));
}

class SStcck extends StatefulWidget {
  const SStcck({super.key});

  @override
  State<SStcck> createState() => _SStcckState();
}

class _SStcckState extends State<SStcck> {
  bool name = false;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(title: const Text("helllo")),
        body: Stack(
          alignment: AlignmentDirectional.center,
          textDirection: TextDirection.ltr,
          children: [
            Container(
              width: 500,
              height: 300,
              color: Color.fromARGB(255, 240, 243, 234),
              child: Text('grnfather'),
            ),
            Container(
              width: 300,
              height: 250,
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      transform: GradientRotation(100),
                      begin: Alignment.bottomRight,
                      end: Alignment.centerRight,
                      colors: <Color>[
                    Color.fromARGB(255, 224, 18, 18).withAlpha(0),
                    Color.fromARGB(31, 24, 51, 140),
                    Color.fromARGB(115, 6, 205, 13)
                  ])),
              child: Text('father'),
            ),
            Container(
              width: 180,
              height: 180,
              color: Colors.blue,
              child: name
                  ? Text('child1',
                      style: TextStyle(color: Colors.white, fontSize: 30))
                  : Text('child2',
                      style: TextStyle(
                          color: Color.fromARGB(255, 220, 179, 176),
                          fontSize: 30)),
            ),
            SizedBox(
              height: 10.0,
            ),
            Container(
              child: FloatingActionButton(
                onPressed: () {
                  setState(() {
                    if (name == false) {
                      name = true;
                      print(name);
                    } else {
                      name = false;
                      print(name);
                    }
                  });
                },
                child: Text("text buttin"),
              ),
            )
          ],
        ));
  }
}
