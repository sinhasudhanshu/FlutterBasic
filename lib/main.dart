import 'package:flutter/material.dart';

void main() {
  runApp(
   MaterialApp(
     home: Scaffold(
       backgroundColor: Colors.blueAccent,
       appBar: AppBar(
         centerTitle: true,
         title: const Text("Hello Flutter from Flutter"),
         backgroundColor: Colors.blueGrey,
       ),
       body:const Center(child: Image(
         image: NetworkImage(
             "https://3.bp.blogspot.com/-py5FbTZgvjo/YDi1bsQq16I/AAAAAAAACB0/BxejbJBcHA4AVfkB33WYC3YlVmxElM7BwCK4BGAYYCw/s1600/Varanasi%2BSoftware%2BJunction%2BPhone%2BLogo.png"),
       ),
       ),
     ),
   ),

  );
}


