import 'package:flutter/material.dart';
import 'package:myapp/hexcolor.dart';

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
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
                "assets/images/add_bg.png",
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
                        "ADD",
                        style: TextStyle(fontSize: 28, color: Colors.white),
                      ),
                    ),
                  )
                ],
              ),
              Center(
                child: Card(
                  margin: const EdgeInsets.all(20),
                  color: HexColor("#00317A"),
                  child: Container(
                    padding: const EdgeInsets.all(20),
                    child: Column(
                      children: [
                        TextFormField(
                            maxLength: 20,
                            decoration: const InputDecoration(
                                label: Text("ชื่อกิจกรรม"),
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true)),
                        TextFormField(
                            maxLength: 20,
                            decoration: const InputDecoration(
                                label: Text("ระยะเวลา"),
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true)),
                        TextFormField(
                            maxLength: 20,
                            decoration: const InputDecoration(
                                label: Text("วันที่ทำกิจกรรม"),
                                border: OutlineInputBorder(),
                                fillColor: Colors.white,
                                filled: true)),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 150,
                  height: 50,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: HexColor("#03D9FF"), width: 3),backgroundColor: HexColor("#00317A")),
                      onPressed: () {},
                      child: const Text(
                        "บันทึก",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                ),
              ),
              const SizedBox(
                height: 20,
              )
            ],
          ),
        )));
  }
}
