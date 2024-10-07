import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Space parameter",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.amber
          ),
          
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body:Column(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
         //mainAxisAlignment: MainAxisAlignment.spaceBetween,
         //mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            Container(
              height: 200,
              width: 200,
              color: Colors.red,
            ),
            Container(
              height: 200,
              width: 200,
              color: Colors.yellow,
            ),
          ],
        )
      ),
    );
  }
}
