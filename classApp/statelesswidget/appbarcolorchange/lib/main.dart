import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatefulWidget {
  const MainApp({super.key});
  @override
  State<StatefulWidget> createState() => _MainAppstate();
}
class _MainAppstate extends State{
  
bool colorchange=true;
  @override
  Widget build(BuildContext context) {
    
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title:const  Text("Appbar color ",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            backgroundColor: Colors.amber
          ),
          
          
          ),
          centerTitle: true,
          backgroundColor: colorchange? Colors.red:Colors.blue,
          
          ),
        body: const Center(
          child: Text('Hello World!'),
        ),
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(colorchange==true){
              colorchange=false;
            }
            else{
              colorchange=true;
            }
            setState(() {
              
            });
          },
          
          backgroundColor: Colors.red,
          child: const Text("Toggle"),
        
          
          
          ),
      ),
    );
  }
}
