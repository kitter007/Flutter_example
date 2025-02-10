import 'package:flutter/material.dart';
import 'package:myapp/hexcolor.dart';

class List extends StatefulWidget {
  const List({super.key});

  @override
  State<List> createState() => _ListState();
}

class _ListState extends State<List> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("List",
          style: TextStyle(
            fontSize: 50, 
            color: Colors.white,
            fontWeight: FontWeight.w700),),
        centerTitle: true,
        backgroundColor: HexColor("#FF8800"),
        toolbarHeight: 100,
      ),
      backgroundColor: HexColor("#ffffff"),
      body: ListView(
          padding: const EdgeInsets.all(20),
          children: <Widget>[
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
             
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
             
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
             
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
             
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
             
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
             
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
             
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
             
            ),
            Container(
              height: 100,
              margin: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                    color: const Color.fromARGB(255, 231, 231, 231),
                    borderRadius: BorderRadius.circular(30)
              ),
              child: Container(
                padding: const EdgeInsets.all(20),
                child: const Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text("เล่นฟุตบอล", style: TextStyle(fontSize: 25,color:Color.fromARGB(255, 235, 121, 45)),),
                    Text("วันที่ 4 กุมภาพันธ์ 2568", style: TextStyle(fontSize: 16,color:Color.fromARGB(255, 235, 121, 45)),)
                  ],
                ),
              ),
             
            ),
          ],
        )
    );
  }
}