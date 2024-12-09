import 'package:flutter/material.dart';
import 'package:myapp/hexcolor.dart';

class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
          title: const Text("Home", 
            style: TextStyle(
              fontSize: 50,
              color:Colors.white,
              fontWeight: FontWeight.w700,),
            ),
          toolbarHeight: 100,
          backgroundColor: HexColor("#FF8800"),
          centerTitle: true,
        ),
    );
  }
}