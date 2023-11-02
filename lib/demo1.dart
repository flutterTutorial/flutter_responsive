import 'package:flutter/material.dart';
import 'package:responsive/demo2.dart';

class Demo1 extends StatefulWidget {
  const Demo1({super.key});

  @override
  State<Demo1> createState() => _Demo1State();
}

class _Demo1State extends State<Demo1> {
  var appBar = AppBar(
    title:const Text("data"),
    backgroundColor: Colors.amber,
  );
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar:appBar,
      body: Demo2(),
    );
    
  }
}