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
          title: const Text("Column Demo",
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Colors.blue

          ),
          ),
          centerTitle: true,
          backgroundColor: Colors.amber,

        ),
        body: SingleChildScrollView(
          child: Column(
            children: [
              Image.network("https://imageupscaler.com/wp-content/uploads/2024/07/deblured-cutty-fox.jpg"),
              Container(
                height: 100,
                width: 400,
                color: Colors.white,
                ),
                Image.network("https://img-cdn.pixlr.com/image-generator/history/65bb506dcb310754719cf81f/ede935de-1138-4f66-8ed7-44bd16efc709/medium.webp"),
                Container(
                  height: 100,
                  width: 400,
                  color: Colors.white,
                ),
                Image.network("https://thumbs.dreamstime.com/b/fluffy-maine-coon-cat-wearing-police-officer-hat-serious-expression-ai-generated-fluffy-maine-coon-cat-wearing-police-322834379.jpg"),
                Container(
                  height: 100,
                  width: 400,
                  color: Colors.white,
                  child: const Icon(Icons.favorite),
                )
                
            ],
          ),

        )
      ),
    );
  }
}
