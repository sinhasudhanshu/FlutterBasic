import 'dart:async';

import 'package:flutter/material.dart';

void main() {
  runApp(FirstApp());
}

class FirstApp extends StatelessWidget {
  const FirstApp({super.key});

  @override
  Widget build(BuildContext context) {
    return const MaterialApp(
      home: MyHomePage(),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key});

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  int a = 0;
  int b = 0;
  //TextEditingController num1 = TextEditingController();
 // TextEditingController num2 = TextEditingController();
  int result =0;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: <Widget>[
            Text("$result",style: TextStyle(fontSize: 30),),
            Padding(
              padding: EdgeInsets.symmetric(horizontal: 8, vertical: 16),
              child: TextField(
                //controller: num1,

                onChanged: (value) {

                  a = int.parse(value);

                  print(a);


                  setState(() {});
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter first number',
                ),
              ),
            ),


            Padding(padding: EdgeInsets.symmetric(horizontal:8, vertical: 16 ),
              child: TextField(
               // controller: num2,
                onChanged: (value){
                  b = int.parse(value);
                  print(b);
                  setState(() {

                  });
                },
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'Enter second number',  
                ),
              ),
            ),
            ElevatedButton(onPressed: (){
              result = a + b ;
              print(result);
              setState(() {

              });

            }, child: Text("submit"))

            
          ]),
    );
  }
}









































