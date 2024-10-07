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
          title:const Text("My Cart",
          style: TextStyle(
            fontSize: 30,
            fontWeight: FontWeight.w700,
            color: Colors.blue

          ),
          
          ),
          centerTitle: true,
          //clipBehavior: Clip.antiAlias,
         leading:const  Icon(Icons.arrow_back_ios),
         shape: const Border(
          bottom: BorderSide(
            //width: 4,
            color: Colors.blue
          )
         ),
         
        
          

        ),
        body: Column(
          children: [
            const SizedBox(height: 20,),
            Padding(
              padding: const EdgeInsets.all(8.0),
              
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 235, 234, 234),
                  
                ),
              
               // color: const Color.fromARGB(255, 235, 234, 234),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset("assets/image.jpeg",
                        fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),
                         
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Nike Shoes",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                      
                            ),
                            ),
                            
                            
                            const SizedBox(
                              height: 50,
                              width: 190,
                            
                              child: Text(
                              "with iconic style and lengendry comfort, on repeat")
                              ),
                            Row(
                            
                              children: [
                                const Text("\$570.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                                const SizedBox(
                                  width: 30,
                                ),
                                Row(
                                  
                                  children: [
                                
                                
                                const Icon(Icons.remove,
                                
                                ),
                                const SizedBox(width: 5,),
                                Container(
                                  height: 25,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Icon(Icons.add)
                                
                                  ]
                                )
                              ],
                            )
                      
                          ],
                          
                        ),
                      ),
                    )
                  
              
                ],
                )
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Container(
                height: 150,
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(10),
                    color: const Color.fromARGB(255, 235, 234, 234),
                  
                ),
              
               // color: const Color.fromARGB(255, 235, 234, 234),
                child: Row(
                  children: [
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        height: 150,
                        width: 150,
                        clipBehavior: Clip.antiAlias,
                        child: Image.asset("assets/image.jpeg",
                        fit: BoxFit.cover,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(20)
                        ),
                         
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.all(8.0),
                      child: Container(
                        child:  Column(
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text("Nike Shoes",
                            style: TextStyle(
                              fontSize: 20,
                              fontWeight: FontWeight.w500,
                      
                            ),
                            ),
                            
                            
                            const SizedBox(
                              height: 50,
                              width: 190,
                            
                              child: Text(
                              "with iconic style and lengendry comfort, on repeat")
                              ),
                            Row(
                            
                              children: [
                                const Text("\$77.00",
                                style: TextStyle(
                                  fontSize: 20,
                                  fontWeight: FontWeight.w500,
                                ),
                                ),
                                const SizedBox(
                                  width: 40,
                                ),
                                Row(
                                  
                                  children: [
                                
                                
                                const Icon(Icons.remove,
                                
                                ),
                                const SizedBox(width: 5,),
                                Container(
                                  height: 25,
                                  width: 30,
                                  decoration: BoxDecoration(
                                    border: Border.all(color: Colors.blue),
                                    borderRadius: BorderRadius.circular(5)
                                  ),
                                  ),
                                  const SizedBox(width: 5,),
                                  const Icon(Icons.add)
                                
                                  ]
                                )
                              ],
                            )
                      
                          ],
                          
                        ),
                      ),
                    )
                  
              
                ],
                )
              ),
            ),
            const Spacer(),
            Padding(
              padding: const EdgeInsets.all(16.0),
              child: Container(
              child: Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  
                  children: [
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Subtotal :",
                    style: TextStyle(
                      fontSize: 18

                    ),
                    ),
                    Text("\$800.00",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                
                    ),
                    )
                  ],
                
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Delivery Fee :",
                    style: TextStyle(
                      fontSize: 18

                    ),
                    ),
                    Text("\$5.00",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                
                    ),
                    )
                  ],
                
                ),
                const SizedBox(height: 10,),
                const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text("Discount :",
                    style: TextStyle(
                      fontSize: 18
                    ),),
                    Text("40%",
                    style: TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.w500,
                
                    ),
                    )
                  ],
                
                ),
                const SizedBox(height: 20,),
                Container(
                  width: 350,
                  height: 50,
                 // color: const Color.fromARGB(255, 72, 64, 216),
                  child: ElevatedButton(
                    style: const ButtonStyle(
                      backgroundColor: WidgetStatePropertyAll( Color.fromARGB(255, 61, 33, 243))
                    ),
                    onPressed: (){}, 
                    child: const Text("Checkout for \$480",
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.white
                    ),
                  
                    ),
                    
                    
                    
                    ),
                )
                  ]
                ),
              )
              ),
            )

          ],

        )
      ),
    );
  }
}
