import 'package:figma_task_one/theme_constants.dart';
import 'package:flutter/material.dart';

/// Objective list item with a filled blue check-circle and the text alongside.
class ObjectiveItem extends StatelessWidget {
  final String text;

  const ObjectiveItem({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Icon(Icons.check_circle, color: shPrimaryBlue, size: 18),
          const SizedBox(width: 10),
          Expanded(
            child: Text(
              text,
              style: const TextStyle(
                fontSize: 14,
                color: shDarkText,
                height: 1.4,
              ),
            ),
          ),
        ],
      ),
    );
  }
}