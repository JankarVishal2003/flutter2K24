import 'package:flutter/material.dart';

void main() {
  runApp(const ToggleColor());
}
class ToggleColor extends StatefulWidget{
  const ToggleColor({super.key});
  @override
  State createState()=> _ToggleColorState();
} 
class _ToggleColorState extends State{
  bool togglecolor=true;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("ToggleApp"),
          centerTitle: true,
          backgroundColor:togglecolor? Colors.blue:Colors.red,

        ),
        body:  Center(
          child: Container(
            height: 200,
            width: 200,
            color: togglecolor? Colors.blue:Colors.red,
            )

        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(togglecolor==true){
              togglecolor=false;
            }
            else{
              togglecolor=true;
            }
            setState(() {
              
            });

          },
          backgroundColor: Colors.blue,
          child : const Text("Toggle"),
          ),
      ),
    );
  }
}

 

