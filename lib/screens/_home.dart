import 'package:flutter/material.dart';

class _Home extends StatelessWidget {
  const _Home({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.stretch,
      children: [
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            "Kitti",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            "Kitti",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
        Container(
          color: Colors.orange,
          padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
          child: const Text(
            "Kitti",
            style: TextStyle(fontSize: 30, letterSpacing: 3),
          ),
        ),
      ],
    );
  }


  // @override
  // Widget build(BuildContext context) {
  //   return Column(
  //     mainAxisAlignment: MainAxisAlignment.spaceBetween,
  //     crossAxisAlignment: CrossAxisAlignment.stretch,
  //     children: [
  //       Container(
  //         color: Colors.orange,
  //         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  //         child: const Text(
  //           "Kittipron",
  //           style: TextStyle(fontSize: 30, letterSpacing: 3),
  //         ),
  //       ),
  //       Container(
  //         color: Colors.orange,
  //         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  //         child: const Text(
  //           "Kittipron",
  //           style: TextStyle(fontSize: 30, letterSpacing: 3),
  //         ),
  //       ),
  //       Container(
  //         color: Colors.orange,
  //         padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 5),
  //         child: const Text(
  //           "Kittipron",
  //           style: TextStyle(fontSize: 30, letterSpacing: 3),
  //         ),
  //       ),
  //     ],
  //   );
  // }

  
}
