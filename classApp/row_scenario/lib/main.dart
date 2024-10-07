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
          title:const Text("row scenario",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.amber
          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
        body:Container(
          height: MediaQuery.of(context).size.height,
          color: Colors.white,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
           // crossAxisAlignment: CrossAxisAlignment.start,
           crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
              )

            ],
            ),
        )
      ),
    );
  }
}
