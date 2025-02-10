import 'package:flutter/material.dart';
import 'package:myapp/hexcolor.dart';
import 'package:myapp/screens/login.dart';
import 'package:myapp/main.dart';

class Setting extends StatefulWidget {
  const Setting({super.key});

  @override
  State<Setting> createState() => _SettingState();
}

class _SettingState extends State<Setting> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Setting",
          style: TextStyle(
            fontSize: 50, 
            color: Colors.white,
            fontWeight: FontWeight.w700),),
        centerTitle: true,
        backgroundColor: HexColor("#FF8800"),
        toolbarHeight: 100,
      ),
      body: Scrollbar(
        child: SingleChildScrollView(
          child: Column(
            children: [
              const SizedBox(height: 30),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ClipRRect(
                    borderRadius: BorderRadius.circular(100.0),
                    child: Image.asset(
                    "assets/images/add_bg.png",
                    height: 200, width: 200,),
                  ),
                ],
              ),
              Row(
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 30, 50, 20),
                    child: const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("Develop By", style: TextStyle(fontSize: 30,fontWeight:FontWeight.w700),),
                        Text("1. Mr. Saharat Intasen", style: TextStyle(fontSize: 20)),
                        Text("2. Mr. Peerapun Inkeaw", style: TextStyle(fontSize: 20)),
                        Text("3. Mr. Nanthawas Yodsornchan", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    margin: const EdgeInsets.fromLTRB(50, 80, 50, 10),
                    child: const Column(
                      children: [
                        Text("IT Healthy Version 1.0.0", style: TextStyle(fontSize: 20)),
                      ],
                    ),
                  )
                ],
              ),
              Center(
                child: SizedBox(
                  width: 250,
                  height: 60,
                  child: OutlinedButton(
                      style: OutlinedButton.styleFrom(
                          side: BorderSide(color: HexColor("#E85858"), width: 3),backgroundColor: HexColor("#E85858")),
                      onPressed: () {
                        MyApp.resetApp(context);
                      },
                      child: const Text(
                        "ออกจากระบบ",
                        style: TextStyle(fontSize: 30, color: Colors.white),
                      )),
                ),
              ),
            ],
          ),
        )
      ),
    );
  }
}