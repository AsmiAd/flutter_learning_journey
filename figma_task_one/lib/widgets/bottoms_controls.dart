import 'package:figma_task_one/theme_constants.dart';
import 'package:flutter/material.dart';

/// Bottom controls bar for the PDF Viewer screen.
/// Contains: zoom controls (pill) + PREV / READ / NEXT navigation row.
class BottomControls extends StatelessWidget {
  const BottomControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: shBackground,
      padding: const EdgeInsets.fromLTRB(16, 8, 16, 16),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          // ── Zoom pill ────────────────────────────────────────────────────
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration: BoxDecoration(
              color: Colors.white,
              borderRadius: BorderRadius.circular(30),
              boxShadow: [
                BoxShadow(
                  color: Colors.black.withOpacity(0.06),
                  blurRadius: 8,
                  offset: const Offset(0, 2),
                ),
              ],
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.zoom_out, size: 20, color: shSubtitleText),
                Text(
                  '100%',
                  style: TextStyle(
                    fontWeight: FontWeight.w600,
                    fontSize: 14,
                    color: shDarkText,
                  ),
                ),
                Icon(Icons.zoom_in, size: 20, color: shSubtitleText),
              ],
            ),
          ),

          const SizedBox(height: 10),

          // ── Navigation row ───────────────────────────────────────────────
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              // PREV
              _navButton(
                icon: Icons.chevron_left,
                label: 'PREV',
                onTap: () {},
              ),

              // READ (primary pill button)
              ElevatedButton.icon(
                onPressed: () {},
                icon: const Icon(Icons.menu_book, size: 18),
                label: const Text(
                  'READ',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    letterSpacing: 0.5,
                  ),
                ),
                style: ElevatedButton.styleFrom(
                  backgroundColor: shPrimaryBlue,
                  foregroundColor: Colors.white,
                  padding: const EdgeInsets.symmetric(
                    horizontal: 32,
                    vertical: 14,
                  ),
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(30),
                  ),
                ),
              ),

              // NEXT
              _navButton(
                icon: Icons.chevron_right,
                label: 'NEXT',
                iconRight: true,
                onTap: () {},
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget _navButton({
    required IconData icon,
    required String label,
    bool iconRight = false,
    required VoidCallback onTap,
  }) {
    final children = [
      Icon(icon, size: 20, color: shSubtitleText),
      const SizedBox(width: 4),
      Text(
        label,
        style: const TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w600,
          color: shSubtitleText,
        ),
      ),
    ];
    return GestureDetector(
      onTap: onTap,
      child: Row(
        children: iconRight ? children.reversed.toList() : children,
      ),
    );
  }
}