import 'package:flutter/material.dart';
import 'package:myapp/hexcolor.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        // appBar: AppBar(
        //   backgroundColor: Colors.red,
        // ),
        backgroundColor: HexColor("#001741"),
        body: Scrollbar(
            child: SingleChildScrollView(
          child: Column(
            children: [
              Image.asset(
                "assets/images/home_bg.png",
              ),
              Row(
                children: [
                  Container(
                    padding: const EdgeInsets.all(5),
                    width: 150,
                    height: 55,
                    decoration: BoxDecoration(
                      color: HexColor("#00317A"),
                      border: Border.all(color: HexColor("#03D9FF"), width: 2),
                      borderRadius: const BorderRadius.only(
                          topRight: Radius.circular(50.0),
                          bottomRight: Radius.circular(50.0)),
                    ),
                    child: const Center(
                      child: Text(
                        "HOME",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
            ],
          ),
        )));
  }
}
