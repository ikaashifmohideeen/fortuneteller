import 'package:flutter/material.dart';
import "dart:math";

void main() => runApp(
      MaterialApp(
        debugShowCheckedModeBanner: false,
        home: Scaffold(
          backgroundColor: Colors.black54,
          appBar: AppBar(
            backgroundColor: Colors.blueAccent,
            title: Center(child: Text("Ask me anything")),
          ),
          body: asme(),
        ),
      ),
    );

class asme extends StatefulWidget {
  @override
  _asmeState createState() => _asmeState();
}

class _asmeState extends State<asme> {
  int num = 3;
  @override
  Widget build(BuildContext context) {

    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: () {
                setState(() {
                  num=Random().nextInt(5)+1;
                  print("clicked$num is");
                });
              },
              child: Image.asset("images/ball$num.png"),
            ),
          ),
        ],
      ),
    );
  }
}
