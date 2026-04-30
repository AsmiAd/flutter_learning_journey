import 'package:figma_task_one/theme_constants.dart';
import 'package:flutter/material.dart';

/// Action card used in the PDF Viewer (Experimental Setup / P-V Diagram).
class ActionCard extends StatelessWidget {
  final IconData icon;
  final String title;

  const ActionCard({
    super.key,
    required this.icon,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 18, horizontal: 14),
      decoration: BoxDecoration(
        color: shBackground,
        borderRadius: BorderRadius.circular(14),
        border: Border.all(color: Colors.grey.shade200),
      ),
      child: Column(
        children: [
          Icon(icon, color: shPrimaryBlue, size: 26),
          const SizedBox(height: 8),
          Text(
            title,
            textAlign: TextAlign.center,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.w600,
              color: shSubtitleText,
              letterSpacing: 0.3,
            ),
          ),
        ],
      ),
    );
  }
}