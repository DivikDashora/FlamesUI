import 'package:flutter/material.dart';

class LanguageContainer extends StatelessWidget {
  final String textString;

  const LanguageContainer({
    super.key,
    required this.textString,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(6),
        decoration: BoxDecoration(
          border: Border.all(color: Colors.pink.shade300),
          borderRadius: BorderRadius.circular(20),
        ),
        child: Row(children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 5, vertical: 3),
            child: Text(textString),
          ),
        ]));
  }
}
