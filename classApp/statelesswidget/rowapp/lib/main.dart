import 'package:flutter/material.dart';

void main(){
  runApp(const rowApp());
}
class rowApp extends StatelessWidget{
  const rowApp({super.key});
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      

      
      home: Scaffold(
        appBar: AppBar(
          title: const Text("RowApp"),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        
        body:SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            
        
          child: Row(  
            children: [
              Container(
                height: 200,
                width: 200,
                color: Colors.red,
                ),
              Container(
                height: 200,
                width: 200,
                color: Colors.pink,
              ),
              Container(
                height: 200,
                width: 200,
                color: Colors.yellow,
              )

            ],
          ),
        ),
      ),
      );
  


  }
}
