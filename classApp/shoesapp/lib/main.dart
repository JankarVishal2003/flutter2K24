import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
void main(){
  runApp(const ShoesApp());
}
class ShoesApp extends StatefulWidget{
  const ShoesApp({super.key});
  @override
  State<StatefulWidget> createState()=> _ShoesStateApp();
}
class _ShoesStateApp extends State{
  int count=0;
  @override
  Widget build(BuildContext context){
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: const Text("Shoes",
          style: TextStyle(
            fontSize: 25,
            fontWeight: FontWeight.w800,
            color: Color.fromARGB(255, 65, 10, 231)

          ),
          
          ),
          actions:const [
            Icon(Icons.shopping_cart,
            color:  Color.fromARGB(255, 59, 30, 248),),
            
          ],
        ),
        body:  Column(
          //mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
            height: 400,
            width: MediaQuery.of(context).size.width,
            
            child: Image.asset("assets/image.jpeg",
            fit: BoxFit.cover,),
            //color: const Color.fromARGB(255, 78, 47, 157),
            ),
            const SizedBox(height: 20,),
            const Padding(
              padding:  EdgeInsets.only(left: 20),
              child:  Text('Nike Air Force 1"07',
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.w800
              
              ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 20),
              child: Row(
                children: [
                  ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 80, 58, 176)
                      )
                    ),
                    onPressed: (){}, 
                    child: const Text("SHOES",
                    style: TextStyle(
                      color: Colors.white
                    ),)
                    ),
                    const SizedBox(width: 10,),
                    ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 80, 58, 176))
                    ),
                    onPressed: (){}, 
                    child: const Text("FOOTWEAR",
                    style: TextStyle(
                      color: Colors.white
                    ),)
                    ),
                    ],
              ),
            ),
                  const SizedBox(height: 20,),
                  Padding(
                    padding: const EdgeInsets.only(left: 20),
                    child: Container(
                      height: 70,
                      width: MediaQuery.of(context).size.width,
                      child:const Text(
                        "With iconic style and legendry comfort ,the AF-1 was made to be worn on repeat this iteration puts a fresh spine on the hoopsclassic with crisp leather"
                      ),
                    ),
                  ),
                  const SizedBox(height: 10,),
                   Padding(
                     padding: const EdgeInsets.only(left: 20),
                     child: Row(
                      
                      children: [
                        const Text("Quantity",
                        style: TextStyle(
                          fontSize: 15,
                          fontWeight: FontWeight.bold
                     
                        ),
                        ),
                        const SizedBox(width: 10,),
                        
                        GestureDetector(onTap: () {
                          if(count>0){
                            count--;
                            setState(() {
                              
                            });
                          }
                        },
                          child: const Icon(Icons.remove,
                          size: 20,),
                        ),
                        const SizedBox(width: 10,),
                        Container(
                          height: 30,
                          width: 30,
                          child:Center(
                            child: Text("$count"),
                          ),
                          
                          decoration: BoxDecoration(
                            border: Border.all(),
                            borderRadius: BorderRadius.circular(5)
                          ),
                     
                        ),
                        const SizedBox(width: 10,),
                        GestureDetector(
                          onTap: () {
                            count++;
                            setState(() {
                              
                            });
                          },
                          child: const Icon(Icons.add,
                          size: 20,),
                        ),
                        
                      ],
                                       ),
                   ),
                  const SizedBox(height: 20),
              
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Container(
                          height: 50,
                          width: 350,
                          child: ElevatedButton(
                            style: const ButtonStyle(backgroundColor: WidgetStatePropertyAll(Color.fromARGB(255, 80, 58, 176))),
                            onPressed: (){}, 
                            child:const Text("PURCHASE",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w700,
                              color: Colors.white

                          
                            ),
                            )
                            ),
                        ),
                      )
              

            
          ],
        ),
      ),
    );
  }
  
}