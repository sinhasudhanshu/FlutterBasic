import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(

          centerTitle: true,
          title:  Text("Varanasi Software Junction"),
          backgroundColor: Colors.blueGrey,
        ),

        body:

        Center(child: Image(
          image: NetworkImage(
              "https://images.pexels.com/photos/5077039/pexels-photo-5077039.jpeg?auto=compress&cs=tinysrgb&w=1260&h=750&dpr=1"),
        ),
        ),
      ),
    ),
  );
}