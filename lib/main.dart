import 'dart:ui';

import 'package:flutter/material.dart';

void main() {
  runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.blueAccent,
        appBar: AppBar(

          centerTitle: true,
          title:  const Text("Flutter App Adding image"),
          backgroundColor: Colors.blueGrey,
        ),

        body:

        const Center(child: Image(
          image: AssetImage("images/abc.png"),
        ),
        ),
      ),
    ),
  );
}