import 'package:first_app/screens/home.dart';
import 'package:flutter/material.dart';

void _main() {
  runApp(MaterialApp(
      title: "My Title",
      home: Scaffold(
        appBar: AppBar(
          title: const Text("My App"),
          backgroundColor: Colors.blue,
          centerTitle: true,
        ),
        body: const Home(),
      )));
}
