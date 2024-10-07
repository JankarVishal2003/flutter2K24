import 'package:flutter/material.dart';

void main(){
  runApp(const columnapp());
}
class columnapp extends StatelessWidget{
  const columnapp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar:AppBar(
          title: const Text("columnApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
          ),
          body:  Center(
            
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Container(
                  height: 200,
                  width: 200,
                  color: Colors.yellow,

                ),
                Container(
                  height:200,
                  width: 200,
                  color: Colors.red,

                )
              ],
            ),

          ), 
          ),

    );
  }
}