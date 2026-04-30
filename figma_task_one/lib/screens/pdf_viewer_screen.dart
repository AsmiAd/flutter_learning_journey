import 'package:figma_task_one/theme_constants.dart';
import 'package:figma_task_one/widgets/action_card.dart';
import 'package:figma_task_one/widgets/bottoms_controls.dart';
import 'package:flutter/material.dart';

class PdfViewerScreen extends StatelessWidget {
  const PdfViewerScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shBackground,

      // ── Download FAB ───────────────────────────────────────────────────
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: shPrimaryBlue,
        child: const Icon(Icons.download, color: Colors.white),
      ),
      floatingActionButtonLocation: FloatingActionButtonLocation.endFloat,

      body: SafeArea(
        child: Column(
          children: [

            // ── Top bar ────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 14, 16, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, color: shDarkText),
                  ),
                  const SizedBox(width: 12),
                  const Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          'IOE Entrance - Physics',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16,
                            color: shPrimaryBlue,
                          ),
                        ),
                        Text(
                          'UNIT 2: THERMODYNAMICS',
                          style: TextStyle(
                            fontSize: 10,
                            color: shGrey,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),
                  ),
                  const Icon(Icons.bookmark_border,
                      color: shDarkText, size: 22),
                  const SizedBox(width: 14),
                  const Icon(Icons.share, color: shDarkText, size: 22),
                ],
              ),
            ),

            const SizedBox(height: 12),

            // ── Content card ───────────────────────────────────────────
            Expanded(
              child: Container(
                margin: const EdgeInsets.symmetric(horizontal: 16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.05),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: ListView(
                  padding: const EdgeInsets.all(20),
                  children: [

                    // Page indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 4,
                          decoration: BoxDecoration(
                            color: Colors.grey.shade200,
                            borderRadius: BorderRadius.circular(2),
                          ),
                        ),
                        const Text(
                          'PAGE 01 / 12',
                          style: TextStyle(
                            fontSize: 10,
                            color: shGrey,
                            letterSpacing: 0.5,
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 20),

                    // Chapter title
                    const Text(
                      'Laws of\nThermodynamics',
                      style: TextStyle(
                        fontSize: 24,
                        fontWeight: FontWeight.bold,
                        color: shPrimaryBlue,
                        height: 1.2,
                      ),
                    ),

                    const SizedBox(height: 14),

                    const Text(
                      'Thermodynamics is the branch of physics that deals with the relationships between heat and other forms of energy. In particular, it describes how thermal energy is converted to and from other forms of energy and how it affects matter.',
                      style: TextStyle(
                        color: shSubtitleText,
                        fontSize: 14,
                        height: 1.6,
                      ),
                    ),

                    const SizedBox(height: 20),

                    // First Law card
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: shLightBlue,
                        borderRadius: BorderRadius.circular(14),
                        border: const Border(
                          left: BorderSide(color: shPrimaryBlue, width: 4),
                        ),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'FIRST LAW',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              color: shPrimaryBlue,
                              fontSize: 11,
                              letterSpacing: 0.5,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'ΔU = Q - W',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: shDarkText,
                            ),
                          ),
                          SizedBox(height: 6),
                          Text(
                            'Change in internal energy is equal to heat added minus work done by system.',
                            style: TextStyle(
                              fontSize: 13,
                              color: shSubtitleText,
                              height: 1.4,
                            ),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    // Action cards
                    Row(
                      children: const [
                        Expanded(
                          child: ActionCard(
                            icon: Icons.science,
                            title: 'EXPERIMENTAL\nSETUP',
                          ),
                        ),
                        SizedBox(width: 12),
                        Expanded(
                          child: ActionCard(
                            icon: Icons.show_chart,
                            title: 'P-V DIAGRAM',
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 60), // space for FAB
                  ],
                ),
              ),
            ),

            const SizedBox(height: 8),

            // ── Bottom controls ────────────────────────────────────────
            const BottomControls(),
          ],
        ),
      ),
    );
  }
}