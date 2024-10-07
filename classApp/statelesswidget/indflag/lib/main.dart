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
          title: const Text("Indian Flag"),
          centerTitle: true,
          backgroundColor: Colors.blue,

        ),
        body: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(width: 150,),
              Container(
              height: 400,
              width:10,
              color: Colors.brown,
            ),
            Center(
              child: Column(
                //mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 35,
                    width: 200,
                    color: Colors.orange,
                  ),
                  Container(
                    height: 35,
                    width: 200,
                    color: Colors.white,
                    child: 
                    Image.network(
                      "https://static.vecteezy.com/system/resources/previews/019/136/455/original/ashok-chakra-logo-ashok-chakra-free-free-vector.jpg",
                    ),
                  ),
                  Container(
                    height: 35,
                    width: 200,
                    color: Colors.green,
                  ),
                ],
                ),

            )
            ]
            ),
            Row(
              children: [
                const SizedBox(width: 25,
                ),
                Column(
                  //mainAxisAlignment: MainAxisAlignment.center,
                  // mainAxisAlignment: MainAxisAlignment.,
                  children: [
                    Container(
                      height:50,
                      width: 100,
                      color: Colors.yellow,
                      //child: const Text("भारत "),
                    ),
                    Container(
                      height:50,
                      width: 200,
                      color: Colors.yellow,
                     // child: const Text("माता की"),
                    ),
                    Container(
                      height:50,
                      width: 300,
                      color: Colors.yellow,
                     // child: const Text("जय"),
                    
                    )
                  ],
                
                ),
              ],
            )


        ],
        ),
  
        )
      );
      
    

  }
}
