import 'dart:collection';

import 'package:flutter/material.dart';
import 'package:myapp/hexcolor.dart';

typedef ColorEntry = DropdownMenuEntry<ColorLabel>;

enum ColorLabel {
  monday('จันทร์', Colors.blue),
  pink('อังคาร', Colors.pink),
  green('พุธ', Colors.green),
  yellow('พฤหัสบดี', Colors.orange),
  grey('ศุกร์', Colors.grey);

  const ColorLabel(this.label, this.color);
  final String label;
  final Color color;

  static final List<ColorEntry> entries = UnmodifiableListView<ColorEntry>(
    values.map<ColorEntry>(
      (ColorLabel color) => ColorEntry(
        value: color,
        label: color.label,
      ),
    ),
  );
}

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

class _AddState extends State<Add> {
  final TextEditingController colorController = TextEditingController();
  ColorLabel? selectedColor;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("ADD COURSE",
          style: TextStyle(
            fontSize: 50, 
            color: Colors.white,
            fontWeight: FontWeight.w700),),
        centerTitle: true,
        backgroundColor: HexColor("#FF8800"),
        toolbarHeight: 100,
      ),
      body: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                margin: const EdgeInsets.fromLTRB(0, 50, 0, 0),
                width: 250,
                height: 80,
                decoration: BoxDecoration(
                      color: HexColor("#FF8800"),
                      borderRadius: const BorderRadius.only(
                          topLeft: Radius.circular(50.0),
                          bottomLeft: Radius.circular(50.0)),
                    ),
                child: const Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: [
                    Icon(Icons.add_circle, size: 50, color: Colors.white,),
                    Text("เพิ่มรายวิชา", style: TextStyle(fontSize: 30, color: Colors.white),)
                  ],
                ),
              )
            ],
          ),
          Center(
            child: Card(
              child: Container(
                child: Column(
                  children: [
                    TextFormField(
                      maxLength: 20,
                      decoration: const InputDecoration(
                        label: Text("รหัสวิชา"),
                        border: OutlineInputBorder()
                      )
                    ),
                    TextFormField(
                      maxLength: 20,
                      decoration: const InputDecoration(
                        label: Text("ชื่อรายวิชา"),
                        border: OutlineInputBorder()
                      )
                    ),
                    TextFormField(
                      maxLength: 20,
                      decoration: const InputDecoration(
                        label: Text("ครูผู้สอน"),
                        border: OutlineInputBorder()
                      )
                    ),
                    DropdownMenu<ColorLabel>(
                      width: MediaQuery.of(context).size.width,
                      initialSelection: ColorLabel.green,
                      controller: colorController,
                      requestFocusOnTap: true,
                      label: const Text('เลือกวัน'),
                      onSelected: (ColorLabel? color) {
                        setState(() {
                          selectedColor = color;
                        });
                      },
                      dropdownMenuEntries: ColorLabel.entries,
                    ),
                  ],
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}