import 'package:flames/designs/list_container.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class AdditionalInfo extends StatelessWidget {
  final List<String> additional = [
    'Children',
    'Conversation',
    'drink',
    'Height',
    'Looking for',
    'Political preference',
    'Pronouns',
    'Religion',
    'Smoke',
    'Workout',
    'Zodiac',
    'Living In'
  ];
  final List<Icon> additonalIcon = [
    const Icon(Icons.child_care),
    const Icon(CupertinoIcons.chat_bubble_2),
    const Icon(Icons.local_bar),
    const Icon(Icons.straighten_outlined),
    const Icon(CupertinoIcons.heart_solid),
    const Icon(Icons.gavel_outlined),
    const Icon(CupertinoIcons.question_diamond),
    const Icon(Icons.church),
    const Icon(Icons.smoking_rooms),
    const Icon(Icons.monitor_weight_outlined),
    const Icon(Icons.share),
    const Icon(Icons.location_on),
  ];
  final List<String> attribute = [
    'Add',
    'Either one is g..',
    'Add',
    'Add',
    'Friends First',
    'Add',
    'Add',
    'Add',
    'Add',
    'Add',
    'Add',
    'Add',
  ];
  AdditionalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      itemCount: additional.length,
      physics: const NeverScrollableScrollPhysics(),
      itemBuilder: (BuildContext context, int index) {
        return ListContainer(
          topic: additional[index],
          icons: additonalIcon[index],
          attribute: attribute[index],
        );
      },
    );
  }
}
