import 'package:flutter/material.dart';

void main() {
  runApp(const InstaApp());
}

class InstaApp extends StatelessWidget {
  const InstaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return  MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("InstaApp"),
          backgroundColor: Colors.blue,
          centerTitle: true,


        ),
        body: SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: [
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.amber,
                  shape: BoxShape.circle
                ),

              ),
              Container(
                height: 100,
                width: 100,
                decoration:const BoxDecoration(
                  color: Colors.blue,
                  shape: BoxShape.circle
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.red,
                  shape: BoxShape.circle
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.green,
                  shape: BoxShape.circle
                ),
              ),
              Container(
                height: 100,
                width: 100,
                decoration: const BoxDecoration(
                  color: Colors.pink,
                  shape: BoxShape.circle
                ),
              )
            ],

          ),
        )
      )
    );
  }
}
