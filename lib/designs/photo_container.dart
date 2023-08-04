import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class PhotoAdd extends StatelessWidget {
  final double height;
  final double width;
  const PhotoAdd({super.key, required this.height, required this.width});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: height,
      width: width,
      decoration: BoxDecoration(
          color: const Color.fromARGB(255, 246, 231, 236),
          borderRadius: BorderRadius.circular(height * 0.08)),
      child: Center(
          child: Icon(
        CupertinoIcons.add_circled,
        color: Colors.pink.shade300,
        size: 35,
      )),
    );
  }
}
