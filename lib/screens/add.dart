import 'package:flutter/material.dart';
import 'package:first_app/hexcolor.dart';
import 'package:collection/collection.dart';

const List<String> list = <String>[
  'จันทร์',
  'อังคาร',
  'พุธ',
  'พฤหัสบดี',
  'ศุกร์'
];

class Add extends StatefulWidget {
  const Add({super.key});

  @override
  State<Add> createState() => _AddState();
}

typedef MenuEntry = DropdownMenuEntry<String>;

class _AddState extends State<Add> {
  static final List<MenuEntry> menuEntries = UnmodifiableListView<MenuEntry>(
    list.map<MenuEntry>((String name) => MenuEntry(value: name, label: name)),
  );

  String dropdownValue = list.first;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color.fromARGB(255, 228, 228, 228),
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
          child: Column(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              Row(
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
                        Icon(
                          Icons.post_add,
                          size: 40,
                          color: Colors.white,
                        ),
                        Text(
                          "เพิ่มรายวิชา",
                          style: TextStyle(fontSize: 30, color: Colors.white),
                        ),
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: Card(
                  color: Colors.white,
                  margin: const EdgeInsets.all(20),
                  child: Container(
                    padding: const EdgeInsets.all(30),
                    child: Column(
                      children: [
                        TextFormField(
                          maxLength: 20,
                          decoration: const InputDecoration(
                              label: Text(
                                "รหัสวิชา",
                                style: TextStyle(fontSize: 20),
                              ),
                              border: OutlineInputBorder()),
                        ),
                        TextFormField(
                          maxLength: 20,
                          decoration: const InputDecoration(
                              label: Text(
                                "ชื่อรายวิชา",
                                style: TextStyle(fontSize: 20),
                              ),
                              border: OutlineInputBorder()),
                        ),
                        TextFormField(
                          maxLength: 20,
                          decoration: const InputDecoration(
                              label: Text(
                                "ครูผู้สอน",
                                style: TextStyle(fontSize: 20),
                              ),
                              border: OutlineInputBorder()),
                        ),
                        DropdownMenu(
                          initialSelection: list.first,
                          hintText: "วันที่เรียน",
                          requestFocusOnTap: true,
                          width: MediaQuery.of(context).size.width,
                          onSelected: (String? value) {
                            setState(() {
                              dropdownValue = value!;
                            });
                          },
                          dropdownMenuEntries: menuEntries,
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              Center(
                child: SizedBox(
                  width: 250,
                  child: FilledButton(
                      style: FilledButton.styleFrom(
                          backgroundColor: HexColor("#20D300"),
                          padding: const EdgeInsets.fromLTRB(30, 10, 30, 10)),
                      onPressed: () {},
                      child: const Text(
                        "บันทึก",
                        style: TextStyle(fontSize: 30),
                      )),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
