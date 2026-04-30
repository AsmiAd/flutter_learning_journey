import 'package:figma_task_one/theme_constants.dart';
import 'package:flutter/material.dart';

/// Info card shown in Syllabus Detail (Credit Hours / Total Hours).
/// Shows an icon at the top, a small label, and a bold value — matches Figma.
class InfoCard extends StatelessWidget {
  final String title;
  final String value;
  final IconData icon;

  const InfoCard({
    super.key,
    required this.title,
    required this.value,
    this.icon = Icons.credit_card,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 14),
      decoration: shCardDecoration,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Icon(icon, color: shPrimaryBlue, size: 20),
          const SizedBox(height: 8),
          Text(
            title,
            style: const TextStyle(
              fontSize: 10,
              color: shGrey,
              letterSpacing: 0.5,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 20,
              color: shDarkText,
            ),
          ),
        ],
      ),
    );
  }
}