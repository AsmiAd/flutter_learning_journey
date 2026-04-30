import 'package:figma_task_one/screens/profile_screen.dart';
import 'package:figma_task_one/screens/university_listing_screen.dart';
import 'package:figma_task_one/theme_constants.dart';
import 'package:figma_task_one/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shBackground,

      // ── Floating search button ─────────────────────────────────────────
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: shPrimaryBlue,
        child: const Icon(Icons.search, color: Colors.white),
      ),

      // ── Bottom navigation ──────────────────────────────────────────────
      bottomNavigationBar: CustomBottomNav(
        currentIndex: 0,
        onTap: (i) {
          if (i == 1) {
            Navigator.pushReplacement(
              context,
              MaterialPageRoute(builder: (_) => const UniversityListingScreen()),
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

                  // Welcome text
                  const Text(
                    'WELCOME BACK',
                    style: TextStyle(
                      fontSize: 11,
                      color: shGrey,
                      letterSpacing: 1.2,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Your Academic\nCurator.',
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                      color: shDarkText,
                      height: 1.2,
                    ),
                  ),

                  const SizedBox(height: 20),

                  // ── Featured card ──────────────────────────────────────
                  Container(
                    padding: const EdgeInsets.all(20),
                    decoration: BoxDecoration(
                      gradient: const LinearGradient(
                        colors: [Color(0xFF1A2A8F), Color(0xFF2D3FBD)],
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                      ),
                      borderRadius: BorderRadius.circular(18),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        // Chip
                        Container(
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 4),
                          decoration: BoxDecoration(
                            color: const Color(0xFFFFF0E0),
                            borderRadius: BorderRadius.circular(20),
                          ),
                          child: const Text(
                            'FEATURED NOTICE',
                            style: TextStyle(
                              fontSize: 10,
                              fontWeight: FontWeight.bold,
                              color: Color(0xFFD97706),
                              letterSpacing: 0.5,
                            ),
                          ),
                        ),
                        const SizedBox(height: 12),
                        const Text(
                          'Prepare for IOE Entrance 2024',
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                            fontSize: 18,
                          ),
                        ),
                        const SizedBox(height: 6),
                        const Text(
                          'Exclusive prep materials and model sets now available for all engineering aspirants.',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 13,
                          ),
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),

                  // ── Quick action chips ─────────────────────────────────
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Row(
                      children: [
                        _quickChip(Icons.description_outlined, 'Notes'),
                        const SizedBox(width: 10),
                        _quickChip(Icons.help_outline, 'Past Questions'),
                        const SizedBox(width: 10),
                        _quickChip(Icons.play_circle_outline, 'Videos'),
                      ],
                    ),
                  ),

                  const SizedBox(height: 24),

                  // ── Section header ─────────────────────────────────────
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'First Semester',
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 18,
                              color: shDarkText,
                            ),
                          ),
                          Text(
                            'Bachelor of Engineering (IOE)',
                            style: TextStyle(
                              color: shGrey,
                              fontSize: 13,
                            ),
                          ),
                        ],
                      ),
                      Text(
                        'View All',
                        style: TextStyle(
                          color: shPrimaryBlue,
                          fontWeight: FontWeight.w600,
                          fontSize: 13,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 14),

                  // ── Subject cards ──────────────────────────────────────
                  _subjectCard(
                    code: 'SH101',
                    icon: Icons.functions,
                    iconBg: shLightBlue,
                    title: 'Engineering Mathematics I',
                    subtitle: 'Calculus, Analytical Geometry, and Vectors.',
                    units: '8 Units',
                    marks: '80 Marks',
                  ),
                  _subjectCard(
                    code: 'SH102',
                    icon: Icons.bolt,
                    iconBg: shLightBlue,
                    title: 'Engineering Physics',
                    subtitle: 'Optics, Nuclear Physics, and Electromagnetism.',
                    units: '12 Units',
                    marks: '80 Marks',
                  ),
                  _subjectCard(
                    code: 'CT101',
                    icon: Icons.slideshow,
                    iconBg: const Color(0xFFFFEBE5),
                    title: 'Computer Programming',
                    subtitle: 'C Programming Fundamentals and Logic.',
                    units: '6 Units',
                    marks: '80 Marks',
                  ),

                  // ── Small list-style card ──────────────────────────────
                  Container(
                    margin: const EdgeInsets.only(bottom: 12),
                    padding: const EdgeInsets.symmetric(
                        horizontal: 14, vertical: 12),
                    decoration: shCardDecoration,
                    child: Row(
                      children: [
                        CircleAvatar(
                          radius: 20,
                          backgroundColor: Colors.grey.shade200,
                          child: const Icon(Icons.architecture,
                              color: shGrey, size: 20),
                        ),
                        const SizedBox(width: 12),
                        const Expanded(
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Engineering Drawing I',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  fontSize: 14,
                                  color: shDarkText,
                                ),
                              ),
                              Text(
                                'Practical Focused • SH103',
                                style:
                                    TextStyle(color: shGrey, fontSize: 12),
                              ),
                            ],
                          ),
                        ),
                        const Icon(Icons.chevron_right, color: shGrey),
                      ],
                    ),
                  ),

                  const SizedBox(height: 8),

                  // ── Recommended Reads ──────────────────────────────────
                  const Text(
                    'Recommended Reads',
                    style: TextStyle(
                      fontWeight: FontWeight.bold,
                      fontSize: 18,
                      color: shDarkText,
                    ),
                  ),

                  const SizedBox(height: 12),

                  Row(
                    children: [
                      Expanded(child: _bookCard("Thomas' Calculus", '14th Edition')),
                      const SizedBox(width: 12),
                      Expanded(child: _bookCard('Resnick & Halliday', 'Physics Principles')),
                    ],
                  ),

                  const SizedBox(height: 80), // space for FAB
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  // ── Helpers ──────────────────────────────────────────────────────────────

  Widget _quickChip(IconData icon, String label) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 10),
      decoration: BoxDecoration(
        color: shLightBlue,
        borderRadius: BorderRadius.circular(30),
      ),
      child: Row(
        children: [
          Icon(icon, size: 16, color: shPrimaryBlue),
          const SizedBox(width: 6),
          Text(
            label,
            style: const TextStyle(
              fontSize: 13,
              fontWeight: FontWeight.w600,
              color: shPrimaryBlue,
            ),
          ),
        ],
      ),
    );
  }

  Widget _subjectCard({
    required String code,
    required IconData icon,
    required Color iconBg,
    required String title,
    required String subtitle,
    required String units,
    required String marks,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(14),
      decoration: shCardDecoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          // Icon box
          Container(
            width: 44,
            height: 44,
            decoration: BoxDecoration(
              color: iconBg,
              borderRadius: BorderRadius.circular(12),
            ),
            child: Icon(icon, color: shPrimaryBlue, size: 22),
          ),
          const SizedBox(width: 12),
          // Text content
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
                const SizedBox(height: 3),
                Text(
                  subtitle,
                  style:
                      const TextStyle(color: shSubtitleText, fontSize: 12),
                ),
                const SizedBox(height: 8),
                Row(
                  children: [
                    const Icon(Icons.grid_view,
                        size: 13, color: shGrey),
                    const SizedBox(width: 4),
                    Text(units,
                        style: const TextStyle(
                            fontSize: 12, color: shGrey)),
                    const SizedBox(width: 12),
                    const Icon(Icons.star_border,
                        size: 13, color: shGrey),
                    const SizedBox(width: 4),
                    Text(marks,
                        style: const TextStyle(
                            fontSize: 12, color: shGrey)),
                  ],
                ),
              ],
            ),
          ),
          // Code badge
          Container(
            padding:
                const EdgeInsets.symmetric(horizontal: 8, vertical: 3),
            decoration: BoxDecoration(
              color: shLightBlue,
              borderRadius: BorderRadius.circular(6),
            ),
            child: Text(
              code,
              style: const TextStyle(
                fontSize: 10,
                fontWeight: FontWeight.bold,
                color: shPrimaryBlue,
              ),
            ),
          ),
        ],
      ),
    );
  }

  Widget _bookCard(String title, String subtitle) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          height: 120,
          decoration: BoxDecoration(
            color: Colors.grey.shade200,
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(height: 6),
        Text(
          title,
          style: const TextStyle(
            fontWeight: FontWeight.bold,
            fontSize: 13,
            color: shDarkText,
          ),
          overflow: TextOverflow.ellipsis,
        ),
        Text(
          subtitle,
          style: const TextStyle(fontSize: 11, color: shGrey),
          overflow: TextOverflow.ellipsis,
        ),
      ],
    );
  }
}