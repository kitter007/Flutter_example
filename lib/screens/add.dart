import 'package:flutter/material.dart';
import 'package:myapp/hexcolor.dart';

class Add extends StatelessWidget {
  const Add({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text(
            "Add Course",
            style: TextStyle(
              fontSize: 50,
              color: Colors.white,
              fontWeight: FontWeight.w700,
            ),
          ),
          toolbarHeight: 100,
          backgroundColor: HexColor("#FF8800"),
          centerTitle: true,
        ),
        body: Scrollbar(
          child: SingleChildScrollView(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                    padding: const EdgeInsets.all(10),
                    width: 250,
                    height: 70,
                    decoration: BoxDecoration(
                      color: HexColor("#FF8800"),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          bottomLeft: Radius.circular(50.0)),
                    ),
                    child: const Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Icon(Icons.post_add, size: 40, color: Colors.white,),
                        Text(
                          "เพิ่มรายวิชา",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                        
                      ],
                    ),
                  ),
                  Container(
                    
                  )
                ],
              ),
            ),
          ),
        );
  }
}
