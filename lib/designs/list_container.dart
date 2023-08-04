import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class ListContainer extends StatelessWidget {
  final String topic;
  final Icon icons;
  final String attribute;
  // final double height;
  // final double width;
  const ListContainer({
    super.key,
    required this.topic,
    required this.icons,
    required this.attribute,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.maxFinite,
      height: 60,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Padding(
            padding: const EdgeInsets.all(8),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(50),
                color: const Color(0XFFFFF4F8),
              ),
              child: Padding(
                padding: const EdgeInsets.all(10.0),
                child: Center(
                  child: icons,
                ),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Text(
            topic,
            style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.w400,
                color: Colors.grey.shade700),
          ),
          const Expanded(child: SizedBox()),
          Text(
            attribute,
            style: TextStyle(
              fontSize: 16,
              color: attribute == 'Add'
                  ? Colors.grey.shade500
                  : Colors.pink.shade300,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Container(
              height: 25,
              width: 25,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: attribute == 'Add'
                    ? Colors.grey.shade100
                    : const Color.fromARGB(255, 246, 231, 236),
              ),
              child: Center(
                  child: Icon(
                CupertinoIcons.forward,
                color: attribute == 'Add'
                    ? Colors.grey.shade700
                    : Colors.pink.shade300,
                size: 17,
              )),
            ),
          )
        ],
      ),
    );
  }
}
