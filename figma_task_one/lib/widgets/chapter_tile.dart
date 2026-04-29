import 'package:flutter/material.dart';

class ChapterTile extends StatelessWidget {
  final String index;
  final String title;
  final String subtitle;
  final bool isActive;

  const ChapterTile({
    super.key,
    required this.index,
    required this.title,
    required this.subtitle,
    this.isActive = false,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      padding: const EdgeInsets.all(14),
      decoration: BoxDecoration(
        color: isActive ? Colors.blue[50] : Colors.white,
        borderRadius: BorderRadius.circular(14),
      ),
      child: Row(
        children: [
          Text(index,
              style: TextStyle(
                  fontWeight: FontWeight.bold,
                  color: isActive ? Colors.blue : Colors.grey)),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(title,
                    style: const TextStyle(fontWeight: FontWeight.bold)),
                const SizedBox(height: 4),
                Text(subtitle,
                    style: const TextStyle(fontSize: 12, color: Colors.grey)),
              ],
            ),
          ),
          const Icon(Icons.keyboard_arrow_down)
        ],
      ),
    );
  }
}