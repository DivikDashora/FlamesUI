import 'package:flutter/material.dart';

class MyValueContainer extends StatelessWidget {
  final String textString;
  final String icon;
  const MyValueContainer(
      {super.key, required this.textString, required this.icon});

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.pink.shade300),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(children: [
          Image.asset(
            icon,
            width: 20,
            height: 20,
          ),
          const SizedBox(
            width: 5,
          ),
          Text(textString),
          const SizedBox(
            width: 5,
          )
        ]));
  }
}
