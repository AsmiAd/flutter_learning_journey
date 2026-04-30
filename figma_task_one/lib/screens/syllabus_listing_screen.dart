import 'package:figma_task_one/screens/home_screen.dart';
import 'package:figma_task_one/screens/profile_screen.dart';
import 'package:figma_task_one/screens/syllabus_detail_screen.dart';
import 'package:figma_task_one/theme_constants.dart';
import 'package:figma_task_one/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class SyllabusListingScreen extends StatelessWidget {
  const SyllabusListingScreen({super.key});

  // ── Data ──────────────────────────────────────────────────────────────────
  static const List<Map<String, dynamic>> _firstSem = [
    {
      'code': 'CSC109',
      'title': 'Introduction to IT',
      'subtitle': 'Fundamental concepts of hardware, software, and binary logic.',
      'meta': 'Theory & Lab',
      'credits': '3 Credits',
    },
    {
      'code': 'CSC110',
      'title': 'C Programming',
      'subtitle': 'Procedural programming basics using C language structures.',
      'meta': 'Intensive Lab',
      'credits': '3 Credits',
    },
  ];

  static const List<Map<String, dynamic>> _secondSem = [
    {
      'code': 'CSC160',
      'title': 'Discrete Structures',
      'subtitle': 'Foundational mathematics for computer science logic.',
      'meta': 'Theory Only',
      'credits': '3 Credits',
    },
    {
      'code': 'CSC161',
      'title': 'Object Oriented Programming',
      'subtitle': 'Advanced programming concepts using C++ paradigms.',
      'meta': 'Major Subject',
      'credits': null,
      'highlighted': true,
    },
  ];

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
          } else if (i == 2) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const ProfileScreen()),
            );
          }
        },
      ),

      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            // ── App bar ──────────────────────────────────────────────────
            Padding(
              padding: const EdgeInsets.fromLTRB(16, 16, 16, 0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(
                    children: const [
                      Icon(Icons.menu, color: shDarkText),
                      SizedBox(width: 8),
                      Text(
                        'StudyHub Nepal',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: shPrimaryBlue,
                        ),
                      ),
                    ],
                  ),
                  CircleAvatar(
                    radius: 18,
                    backgroundColor: Colors.grey.shade300,
                  ),
                ],
              ),
            ),

            // ── Scrollable body ──────────────────────────────────────────
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [

                  // University chip
                  Container(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 12, vertical: 5),
                    decoration: BoxDecoration(
                      color: shLightBlue,
                      borderRadius: BorderRadius.circular(20),
                    ),
                    child: const Text(
                      'TU - TRIBHUVAN UNIVERSITY',
                      style: TextStyle(
                        fontSize: 11,
                        fontWeight: FontWeight.w700,
                        color: shPrimaryBlue,
                        letterSpacing: 0.5,
                      ),
                    ),
                  ),

                  const SizedBox(height: 10),

                  const Text(
                    'BSc. CSIT Syllabus',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: shPrimaryBlue,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Explore all subjects across 8 semesters',
                    style: TextStyle(color: shSubtitleText, fontSize: 13),
                  ),

                  const SizedBox(height: 16),

                  // Search bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search subjects or codes...',
                      hintStyle:
                          const TextStyle(color: shGrey, fontSize: 14),
                      prefixIcon:
                          const Icon(Icons.search, color: shGrey, size: 20),
                      suffixIcon:
                          const Icon(Icons.tune, color: shGrey, size: 20),
                      filled: true,
                      fillColor: Colors.white,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 16, vertical: 14),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(14),
                        borderSide: BorderSide.none,
                      ),
                    ),
                  ),

                  const SizedBox(height: 24),

                  // ── First Semester ─────────────────────────────────────
                  _sectionHeader('First Semester', '5 SUBJECTS'),
                  const SizedBox(height: 10),
                  ..._firstSem.map((s) => _subjectCard(context, s)),

                  const SizedBox(height: 8),

                  // ── Second Semester ────────────────────────────────────
                  _sectionHeader('Second Semester', '6 SUBJECTS'),
                  const SizedBox(height: 10),
                  ..._secondSem.map((s) => _subjectCard(context, s)),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Section header ────────────────────────────────────────────────────────
  Widget _sectionHeader(String title, String count) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.bold,
            color: shDarkText,
          ),
        ),
        Container(
          padding: const EdgeInsets.symmetric(horizontal: 10, vertical: 4),
          decoration: BoxDecoration(
            color: shLightBlue,
            borderRadius: BorderRadius.circular(20),
          ),
          child: Text(
            count,
            style: const TextStyle(
              fontSize: 11,
              fontWeight: FontWeight.bold,
              color: shPrimaryBlue,
            ),
          ),
        ),
      ],
    );
  }

  // ── Subject card ──────────────────────────────────────────────────────────
  Widget _subjectCard(BuildContext context, Map<String, dynamic> s) {
    final bool highlighted = s['highlighted'] == true;

    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SyllabusDetailScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: highlighted ? shPrimaryBlue : shCardWhite,
          borderRadius: BorderRadius.circular(16),
          boxShadow: highlighted
              ? []
              : [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.05),
                    blurRadius: 8,
                    offset: const Offset(0, 2),
                  ),
                ],
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Top row: code chip + bookmark
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: highlighted
                        ? Colors.white.withOpacity(0.2)
                        : shLightBlue,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    s['code'] as String,
                    style: TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: highlighted ? Colors.white : shPrimaryBlue,
                    ),
                  ),
                ),
                Icon(
                  Icons.bookmark_border,
                  size: 18,
                  color: highlighted ? Colors.white70 : shGrey,
                ),
              ],
            ),

            const SizedBox(height: 8),

            // Title
            Text(
              s['title'] as String,
              style: TextStyle(
                fontWeight: FontWeight.bold,
                fontSize: 16,
                color: highlighted ? Colors.white : shDarkText,
              ),
            ),

            const SizedBox(height: 4),

            // Subtitle
            Text(
              s['subtitle'] as String,
              style: TextStyle(
                fontSize: 13,
                color: highlighted ? Colors.white70 : shSubtitleText,
              ),
            ),

            // Meta row (only for non-highlighted)
            if (!highlighted) ...[
              const SizedBox(height: 10),
              Row(
                children: [
                  Icon(Icons.menu_book_outlined,
                      size: 13, color: shGrey),
                  const SizedBox(width: 4),
                  Text(s['meta'] as String,
                      style: const TextStyle(
                          fontSize: 12, color: shGrey)),
                  const SizedBox(width: 14),
                  Icon(Icons.grid_view_outlined,
                      size: 13, color: shGrey),
                  const SizedBox(width: 4),
                  Text(s['credits'] as String,
                      style: const TextStyle(
                          fontSize: 12, color: shGrey)),
                ],
              ),
            ] else ...[
              const SizedBox(height: 10),
              Row(
                children: const [
                  Icon(Icons.menu_book_outlined,
                      size: 13, color: Colors.white70),
                  SizedBox(width: 4),
                  Text(
                    'Major Subject',
                    style: TextStyle(
                        fontSize: 12, color: Colors.white70),
                  ),
                  SizedBox(width: 8),
                  Icon(Icons.auto_awesome,
                      size: 14, color: Colors.white70),
                ],
              ),
            ],
          ],
        ),
      ),
    );
  }
}