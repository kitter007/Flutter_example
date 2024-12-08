import 'package:flutter/material.dart';

void main() {
  runApp(MaterialApp(
      title: "My Title",
      home: Scaffold(
          appBar: AppBar(
              title: const Text("My Application"),
              backgroundColor: Colors.blue,
              centerTitle: true),
          body: const Home())));
}


class Home extends StatelessWidget {
  const Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        TextFormField(
          maxLength: 20,
          decoration: const InputDecoration(
            label: Text("กรอกข้อมูล", style: TextStyle(fontSize: 20),),
            border: OutlineInputBorder(),
          ),
        ),
      ],
    );
  }
}





// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Center(
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.center,
//         children: [
//          TextButton(
//           style: TextButton.styleFrom(
//             foregroundColor: Colors.red
//           ),
//           onPressed: (){
//             print("Button Click");
//           }, 
//           child: const Text("Click!", style: TextStyle(fontSize: 30))
//           ),
//           FilledButton(
//             style: FilledButton.styleFrom(
//               backgroundColor: Colors.red,
//               foregroundColor: Colors.black
//             ),
//             onPressed: (){}, 
//             child: const Text("Click!", style: TextStyle(fontSize: 30))
//           ),
//           ElevatedButton(
//             style: ElevatedButton.styleFrom(
//               backgroundColor: Colors.orange,
//               foregroundColor: Colors.white
//             ),
//             onPressed: (){}, 
//             child: const Text("Click!", style: TextStyle(fontSize: 30))
//           ),
//           OutlinedButton(
//             style: OutlinedButton.styleFrom(
//               side: const BorderSide(
//                 color: Colors.red,
//                 width: 5
//               )
//             ),
//             onPressed: (){}, 
//             child: const Text("Click!", style: TextStyle(fontSize: 30))
//           )
//         ],
//       ),
//     );
//   }
// }












// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: const Color.fromARGB(255, 225, 225, 225),
//       child: Column(
//         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//         children: [
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: 150,
//                 height: 150,
//               ),
//               Container(
//                 color: Colors.white,
//                 width: 150,
//                 height: 150,
//               )
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: 150,
//                 height: 150,
//               ),
//               Container(
//                 color: Colors.white,
//                 width: 150,
//                 height: 150,
//               )
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: 150,
//                 height: 150,
//               ),
//               Container(
//                 color: Colors.white,
//                 width: 150,
//                 height: 150,
//               )
//             ],
//           ),
//           Row(
//             mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//             children: [
//               Container(
//                 color: Colors.white,
//                 width: 150,
//                 height: 150,
//               ),
//               Container(
//                 color: Colors.white,
//                 width: 150,
//                 height: 150,
//               )
//             ],
//           ),
//         ],
//       ),
//     );
//   }
// }










// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Row(
//       mainAxisAlignment: MainAxisAlignment.spaceEvenly,
//       crossAxisAlignment: CrossAxisAlignment.stretch,
//       children: [
//       Container(
//         color: Colors.red,
//         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//         child: const Text(
//           "Kitti",
//           style: TextStyle(fontSize: 30),
//         ),
//       ),
//       Container(
//         color: Colors.red,
//         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//         child: const Text(
//           "Kitti",
//           style: TextStyle(fontSize: 30),
//         ),
//       ),
//       Container(
//         color: Colors.red,
//         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
//         child: const Text(
//           "Kitti",
//           style: TextStyle(fontSize: 30),
//         ),
//       ),
//     ]);
//   }
// }



























// class Home extends StatelessWidget {
//   const Home({super.key});

//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       color: Colors.red,
//       //width: MediaQuery.of(context).size.width,
//       margin: const EdgeInsets.symmetric(horizontal: 30, vertical: 40),
//       padding: const EdgeInsets.all(30),
//       child: const Text(
//         "Kittipron",
//         style: TextStyle(fontSize: 30),
//       ),
//     );
//   }
// }









