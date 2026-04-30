import 'package:figma_task_one/theme_constants.dart';
import 'package:flutter/material.dart';

/// Chapter tile in Syllabus Detail.
/// Active chapter shows a left blue border, blue index, "In Progress" tag,
/// sub-items list, and an up-arrow; inactive shows a down-arrow.
class ChapterTile extends StatelessWidget {
  final String index;
  final String title;
  final String subtitle;
  final bool isActive;
  final List<String> subItems;

  const ChapterTile({
    super.key,
    required this.index,
    required this.title,
    required this.subtitle,
    this.isActive = false,
    this.subItems = const [],
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.only(bottom: 10),
      decoration: BoxDecoration(
        color: shCardWhite,
        borderRadius: BorderRadius.circular(14),
        border: isActive
            ? Border(
                left: BorderSide(color: shPrimaryBlue, width: 4),
              )
            : null,
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.04),
            blurRadius: 6,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Padding(
        padding: const EdgeInsets.all(14),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                // Index number
                Text(
                  index,
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 16,
                    color: isActive ? shPrimaryBlue : shGrey,
                  ),
                ),
                const SizedBox(width: 12),
                // Title + subtitle column
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 15,
                          color: shDarkText,
                        ),
                      ),
                      const SizedBox(height: 2),
                      if (isActive)
                        Row(
                          children: const [
                            Text(
                              'In Progress',
                              style: TextStyle(
                                fontSize: 11,
                                color: shPrimaryBlue,
                                fontWeight: FontWeight.w600,
                              ),
                            ),
                            Text(
                              ' • 8 hrs',
                              style: TextStyle(
                                fontSize: 11,
                                color: shGrey,
                              ),
                            ),
                          ],
                        )
                      else
                        Text(
                          subtitle,
                          style: const TextStyle(
                            fontSize: 12,
                            color: shGrey,
                          ),
                        ),
                    ],
                  ),
                ),
                // Arrow
                Icon(
                  isActive
                      ? Icons.keyboard_arrow_up
                      : Icons.keyboard_arrow_down,
                  color: shGrey,
                ),
              ],
            ),
            // Sub-items when active
            if (isActive && subItems.isNotEmpty) ...[
              const SizedBox(height: 10),
              ...subItems.map(
                (item) => Padding(
                  padding: const EdgeInsets.only(left: 36, bottom: 4),
                  child: Row(
                    children: [
                      const Icon(Icons.circle, size: 6, color: shGrey),
                      const SizedBox(width: 8),
                      Text(
                        item,
                        style: const TextStyle(
                          fontSize: 13,
                          color: shDarkText,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ],
        ),
      ),
    );
  }
}