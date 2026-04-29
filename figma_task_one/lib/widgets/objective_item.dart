import 'package:flutter/material.dart';

class ObjectiveItem extends StatelessWidget {
  final String text;

  const ObjectiveItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 10),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: const [
          Icon(Icons.check_circle, color: Colors.blue, size: 18),
          SizedBox(width: 8),
        ],
      ),
    );
  }
}