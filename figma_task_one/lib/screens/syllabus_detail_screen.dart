import 'package:figma_task_one/screens/home_screen.dart';
import 'package:figma_task_one/screens/profile_screen.dart';
import 'package:figma_task_one/screens/university_listing_screen.dart';
import 'package:figma_task_one/theme_constants.dart';
import 'package:figma_task_one/widgets/chapter_tile.dart';
import 'package:figma_task_one/widgets/custom_bottom_nav.dart';
import 'package:figma_task_one/widgets/info_card.dart';
import 'package:figma_task_one/widgets/objective_item.dart';
import 'package:figma_task_one/widgets/section_tile.dart';
import 'package:flutter/material.dart';

class SyllabusDetailScreen extends StatelessWidget {
  const SyllabusDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shBackground,

      // ── Bottom nav ─────────────────────────────────────────────────────
      bottomNavigationBar: CustomBottomNav(
        currentIndex: 1,
        onTap: (i) {
          if (i == 0) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const HomeScreen()),
            );
          } else if (i == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(
                  builder: (_) => const UniversityListingScreen()),
            );
          } else {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
            );
          }
        },
      ),

      body: SafeArea(
        child: Column(
          children: [

            // ── Top bar ──────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: () => Navigator.pop(context),
                    child: const Icon(Icons.arrow_back, color: shDarkText),
                  ),
                  const SizedBox(width: 10),
                  const Text(
                    'StudyHub Nepal',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 17,
                      color: shPrimaryBlue,
                    ),
                  ),
                  const Spacer(),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey.shade300,
                  ),
                ],
              ),
            ),

            // ── Scrollable content ───────────────────────────────────────
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [

                  // Programme tag
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      color: shLightBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'BACHELOR IN COMPUTER ENGINEERING',
                      style: TextStyle(
                        fontSize: 10,
                        fontWeight: FontWeight.w700,
                        color: shPrimaryBlue,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),

                  const SizedBox(height: 14),

                  // Subject title
                  const Text(
                    'Data Structures &\nAlgorithms',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: shDarkText,
                      height: 1.2,
                    ),
                  ),

                  const SizedBox(height: 6),

                  const Text(
                    'CT 552  |  Semester III',
                    style: TextStyle(color: shSubtitleText, fontSize: 14),
                  ),

                  const SizedBox(height: 20),

                  // ── Info cards ─────────────────────────────────────────
                  Row(
                    children: const [
                      Expanded(
                        child: InfoCard(
                          title: 'CREDIT HOURS',
                          value: '4.0',
                          icon: Icons.credit_card,
                        ),
                      ),
                      SizedBox(width: 12),
                      Expanded(
                        child: InfoCard(
                          title: 'TOTAL HOURS',
                          value: '60 hrs',
                          icon: Icons.timer_outlined,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 24),

                  // ── Course Objectives ──────────────────────────────────
                  const SectionTitle(title: 'Course Objectives'),

                  const SizedBox(height: 14),

                  Container(
                    padding: const EdgeInsets.all(16),
                    decoration: BoxDecoration(
                      color: shLightBlue,
                      borderRadius: BorderRadius.circular(14),
                    ),
                    child: const Column(
                      children: [
                        ObjectiveItem(
                          text:
                              'To provide knowledge on various data structures and their implementation for efficient data storage and retrieval.',
                        ),
                        ObjectiveItem(
                          text:
                              'To introduce basic algorithmic paradigms and analysis techniques for evaluating time and space complexity.',
                        ),
                        ObjectiveItem(
                          text:
                              'To enable students to choose appropriate data structures and algorithms for solving real-world engineering problems.',
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // ── Chapters & Topics ──────────────────────────────────
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const SectionTitle(title: 'Chapters & Topics'),
                      Container(
                        padding: const EdgeInsets.symmetric(
                            horizontal: 10, vertical: 4),
                        decoration: BoxDecoration(
                          color: shLightBlue,
                          borderRadius: BorderRadius.circular(20),
                        ),
                        child: const Text(
                          '9 UNITS',
                          style: TextStyle(
                            fontSize: 11,
                            fontWeight: FontWeight.bold,
                            color: shPrimaryBlue,
                          ),
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 14),

                  const ChapterTile(
                    index: '01',
                    title: 'Introduction to DSA',
                    subtitle: 'Definition, Efficiency, Asymptotic Notations',
                  ),
                  const ChapterTile(
                    index: '02',
                    title: 'Linear Data Structures',
                    subtitle: 'Stacks, Queues, Linked Lists',
                  ),
                  const ChapterTile(
                    index: '03',
                    title: 'Trees',
                    subtitle: 'Binary Trees, AVL Trees',
                    isActive: true,
                    subItems: [
                      'Binary Search Trees (BST)',
                      'AVL Trees & Rotation Logic',
                      'B-Trees & Multi-way search',
                    ],
                  ),
                  const ChapterTile(
                    index: '04',
                    title: 'Graphs',
                    subtitle: 'Representations, BFS, DFS',
                  ),

                  const SizedBox(height: 24),

                  // ── CTA button ─────────────────────────────────────────
                  SizedBox(
                    width: double.infinity,
                    child: ElevatedButton.icon(
                      onPressed: () {},
                      icon: const Icon(Icons.description_outlined, size: 18),
                      label: const Text(
                        'VIEW NOTES & OLD QUESTIONS',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          letterSpacing: 0.5,
                          fontSize: 14,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: shPrimaryBlue,
                        foregroundColor: Colors.white,
                        padding: const EdgeInsets.symmetric(vertical: 16),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(14),
                        ),
                        elevation: 0,
                      ),
                    ),
                  ),

                  const SizedBox(height: 20),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}