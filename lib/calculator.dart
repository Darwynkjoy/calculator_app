import 'package:calculator_app/darktheme.dart';
import 'package:flutter/material.dart';
class Calculator extends StatefulWidget{
  @override
  State<Calculator> createState()=> _CalculatorState();
}
class _CalculatorState extends State<Calculator>{

  String? input;
  var output="";

  void calculation(int num){
    num==input!;
  }

  @override
  Widget build(BuildContext context){
    return Scaffold(
      backgroundColor: const Color.fromRGBO(253, 248, 242, 1),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 250,
              width: 400,
              decoration: BoxDecoration(borderRadius: BorderRadius.circular(30),color: Color.fromRGBO(235, 226, 204, 1)),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.end,
                children: [
                  SizedBox(height: 20,),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      IconButton(onPressed: (){
                        showDialog(context: context, builder: (BuildContext context){
                          return Dialog(
                            child: Container(
                              height: 195,
                              width: 200,
                             decoration: BoxDecoration(borderRadius: BorderRadius.circular(15),color:  const Color.fromRGBO(244, 230, 215, 1)),
                              child: Column(
                                children: [
                                  Text("Choose Theme",style: TextStyle(fontSize: 25,color: Colors.black),),
                                  SizedBox(height: 5,),
                                  SizedBox(
                                    width: 270,
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10)),
                                        backgroundColor: const Color.fromRGBO(253, 248, 242, 1),
                                      ),
                                      onPressed: (){
                                        Navigator.replace(context, oldRoute: ModalRoute.of(context)!, newRoute: MaterialPageRoute(builder: (context)=>Calculator()));
                                      }, child: Text("Light theme",style: TextStyle(fontSize: 20,color: Colors.black),)),
                                  ),
                                  SizedBox(height: 5,),
                                  SizedBox(
                                    width: 270,
                                    height: 50,
                                    child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(10),),
                                        backgroundColor: const Color.fromRGBO(25, 18, 10, 1),
                                      ),
                                      onPressed: (){
                                        Navigator.replace(context, oldRoute: ModalRoute.of(context)!, newRoute: MaterialPageRoute(builder: (context)=>Dummy()));
                                      }, child: Text("Dark theme",style: TextStyle(fontSize: 20,color: Colors.white),)),
                                  ),
                                  SizedBox(height: 5,),
                                  TextButton(onPressed: (){
                                    Navigator.pop(context);
                                  }, child: Text("Cancel",style: TextStyle(fontSize: 16,color: const Color.fromARGB(255, 155, 93, 0)),))
                                ],
                              ),
                            ),
                          );
                        });
                      }, icon: Icon(Icons.more_vert),color: Colors.black,),
                    ],
                  ),
                  Text("$input",style: TextStyle(fontSize: 50,color: Colors.black),),
                  Text("$output",style: TextStyle(fontSize: 50,color: Colors.black),)
                ],
              ),
            ),
          ),
          Container(
            height: 520,
            width: 420,
            color: const Color.fromRGBO(253, 248, 242, 1),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40),color: Color.fromRGBO(176, 243, 165, 1)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(176, 243, 165, 1),foregroundColor: Colors.black),
                        onPressed: (){}, child: Text("AC",style: TextStyle(fontSize: 28),),)
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 254, 223, 181),foregroundColor: Colors.black),
                        onPressed: (){}, child: Text("( )",style: TextStyle(fontSize: 35),),),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 254, 223, 181),foregroundColor: Colors.black),
                        onPressed: (){}, child: Text("%",style: TextStyle(fontSize: 35),),),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 254, 223, 181),foregroundColor: Colors.black),
                        onPressed: (){}, child: Text("÷",style: TextStyle(fontSize: 35),),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {
                          calculation(1);
                        },child: Text("1",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text("2",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text("3",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 254, 223, 181),foregroundColor: Colors.black),
                        onPressed: (){}, child: Text("×",style: TextStyle(fontSize: 35),),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text("4",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text("5",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text("6",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 254, 223, 181),foregroundColor: Colors.black),
                        onPressed: (){}, child: Center(child: Text("-",style: TextStyle(fontSize: 60,fontWeight: FontWeight.w100),)),),
                    ),
                  ],
                ),
               Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text("7",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text("8",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text("9",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: const Color.fromARGB(255, 254, 223, 181),foregroundColor: Colors.black),
                        onPressed: (){}, child: Text("+",style: TextStyle(fontSize: 35),),),
                    ),
                  ],
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text("0",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Text(".",style: TextStyle(fontSize: 35),)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Color.fromRGBO(244, 237, 227, 1),foregroundColor: Colors.black),
                        onPressed: () {},child: Icon(Icons.backspace)),
                    ),
                     Container(
                      decoration: BoxDecoration(borderRadius: BorderRadius.circular(40)),
                      height: 80,
                      width: 85,
                      child: ElevatedButton(
                        style: ElevatedButton.styleFrom(backgroundColor: Colors.orange,foregroundColor: Colors.black),
                        onPressed: (){}, child: Text("=",style: TextStyle(fontSize: 35),),),
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}