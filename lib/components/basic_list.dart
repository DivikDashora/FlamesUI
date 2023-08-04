import 'package:flames/designs/list_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BasicList extends StatelessWidget {
  final List<String> basic = ['Education', 'Gender', 'Orientation', 'Work'];
  final List<Icon> iconlist = [
    const Icon(CupertinoIcons.briefcase),
    const Icon(Icons.person),
    const Icon(Icons.male),
    const Icon(CupertinoIcons.book_circle)
  ];
  final List<String> attribute = ['Add', 'Male', 'straight', 'Add'];
  BasicList({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: basic.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListContainer(
          topic: basic[index],
          icons: iconlist[index],
          attribute: attribute[index],
        );
      },
    );
  }
}
