import 'package:flutter/material.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: QuizApp(),
    );
  }
}
class QuizApp extends StatefulWidget{
  const QuizApp({super.key});
  @override
  State createState()=> _QuizAppState();


}
class _QuizAppState extends State{
  List<Map> questionList=[{
    "question":"who is current capatain of india",
    "option":["rohit sharma","virat kohli","ms dhoni","kl rahul"],
    "correct":0,
  },
  {
    "question":"who is current previous capatain of india",
    "option":["rohit sharma","virat kohli","ms dhoni","kl rahul"],
    "correct":1,

  },
  {
    "question":"who is richest cricketer of india",
    "option":["rohit sharma","virat kohli","ms dhoni","kl rahul"],
    "correct":1,
  },
  {
    "question":"who is current capatain of csk",
    "option":["rohit sharma","virat kohli","ms dhoni","kl rahul"],
    "correct":2,
  },
  {
    "question":"who is current capatain of lucknou",
    "option":["rohit sharma","virat kohli","ms dhoni","kl rahul"],
    "correct":3,
  },
  {
    "question":"who has most centuries in intl cric",
    "option":["rohit sharma","virat kohli","ms dhoni","sachin"],
    "correct":3,
  },
  ];
  int currentindex=0;
  int selectedindex=-1;
  WidgetStateProperty<Color?>choose(int ansindex){
    if(selectedindex!=-1){
      if(ansindex==questionList[currentindex]['correct']){
        return const WidgetStatePropertyAll(Colors.green);
      }
      else if(ansindex==selectedindex){
        return const WidgetStatePropertyAll(Colors.red);
      }
      else{
        return const WidgetStatePropertyAll(null);
      }
      

    }
    else{
      return const WidgetStatePropertyAll(null);
    }
  }
  int Scoreindex=0;
  
  bool nextscaffold=true;
  @override
  Widget build(BuildContext context){
    return isnextscaffold();
  }
  Scaffold isnextscaffold(){
    if(nextscaffold==true){
      return Scaffold(
      appBar: AppBar(
        title: const Text("Quiz App",
        style: TextStyle(
          fontWeight: FontWeight.w900,
          color: Colors.orange,
          fontSize: 30,
          


        ),
        
        ),
        centerTitle: true,
        backgroundColor: Colors.blue,
        ),
        body:Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 50,
            ),
            Row(
              children: [
                const SizedBox(
                  width: 130,
                ),
                Text(
                  "Question : ${currentindex+1} /${questionList.length} ",
                  style: const TextStyle(
                    fontSize: 25,
                    fontWeight: FontWeight.w700,
                    color: Colors.pink

                  ),
                )
              ],
            ),
            const SizedBox(
              height: 50,

            ),
            SizedBox(
              height: 50,
              width: 400,
              child: Text("${questionList[currentindex]['question']}",
              style:const TextStyle(
                fontSize: 20,
                fontWeight: FontWeight.w600,
                color: Colors.black
              ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: choose(0),
                ),
                onPressed: (){
                  if(selectedindex==-1){
                    selectedindex=0;
                  }
                  setState(() {
                    
                  });
                }, 
                child: Text(
                  "A. ${questionList[currentindex]['option'][0]}",
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                    
                  ),
                )
                ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: choose(1),
                ),
                onPressed: (){
                  if(selectedindex==-1){
                    selectedindex=1;
                  }
                  setState(() {
                    
                  });
                }, 
                child: Text(
                  "B. ${questionList[currentindex]['option'][1]}",
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                    
                  ),
                )
                ),
            ),
            const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: choose(2),
                ),
                onPressed: (){
                  if(selectedindex==-1){
                    selectedindex=2;
                  }
                  setState(() {
                    
                  });
                }, 
                child: Text(
                  "C. ${questionList[currentindex]['option'][2]}",
                  style:const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                    
                  ),
                )
                ),
            ),
           const SizedBox(
              height: 30,
            ),
            SizedBox(
              height: 40,
              width: 400,
              child: ElevatedButton(
                style: ButtonStyle(
                  backgroundColor: choose(3),
                ),
                onPressed: (){
                  if(selectedindex==-1){
                    selectedindex=3;
                  }
                  setState(() {
                    
                  });
                }, 
                child: Text(
                  "D. ${questionList[currentindex]['option'][3]}",
                  style: const TextStyle(
                    fontSize:20,
                    fontWeight: FontWeight.w500,
                    color: Colors.black
                    
                  ),
                )
                ),
            )
          ],
        ) ,
        floatingActionButton: FloatingActionButton(
          onPressed: (){
            if(selectedindex!=-1){
              if(selectedindex==questionList[currentindex]['correct']){
                Scoreindex++;
              }
            }
            if(selectedindex!=-1){
              if(currentindex<questionList.length-1){
                currentindex++;
              }
              
              else{
                nextscaffold=false;
              }
              selectedindex=-1;

            }
            setState(() {
              
            });
          },
          backgroundColor: Colors.blue,
          child:const Icon(Icons.forward),
          ),
          
          
          
          );
    
    }
    else{
      return Scaffold(
        appBar: AppBar(
          title: const Text("Result",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w900,
            color: Colors.orange

          ),
          
          ),
          centerTitle: true,
          backgroundColor: Colors.blue,
        ),
        body: Center(
          child:Column (
            children: [
              Image.network("https://img.freepik.com/free-vector/trophy-award-laurel-wreath-composition-with-realistic-image-golden-cup-decorated-with-garland-with-reflection_1284-32301.jpg?size=626&ext=jpg&ga=GA1.1.1819120589.1727481600&semt=ais_hybrid",
               height: 400,
               ),
               const SizedBox(
                height: 50,

               ),
               Text(
                "Score : $Scoreindex /${questionList.length}",
                style: const TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange
                ),
               ),
               const SizedBox(
                height: 30,
               ),
               const Text("Congratulations!!!",
               style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w700,
                  color: Colors.orange
                ),
                )

            ]
    
          )
        ),
        floatingActionButton: FloatingActionButton(
          onPressed:(){
            if(nextscaffold==false){
              currentindex=0;
              Scoreindex=0;
              nextscaffold=true;

            }
            setState(() {
              
            });

          },
          backgroundColor: Colors.blue,
          child:const Text("Restart"),
          ),

      );

    }

  
  }
  
 }

