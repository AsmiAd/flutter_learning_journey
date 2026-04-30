import 'package:figma_task_one/theme_constants.dart';
import 'package:flutter/material.dart';

/// Section heading with a vertical blue bar on the left (matches Figma design).
class SectionTitle extends StatelessWidget {
  final String title;

  const SectionTitle({super.key, required this.title});

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 4,
          height: 22,
          decoration: BoxDecoration(
            color: shPrimaryBlue,
            borderRadius: BorderRadius.circular(2),
          ),
        ),
        const SizedBox(width: 10),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 18,
            color: shDarkText,
          ),
        ),
      ],
    );
  }
}