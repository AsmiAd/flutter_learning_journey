import 'package:figma_task_one/screens/home_screen.dart';
import 'package:figma_task_one/screens/profile_screen.dart';
import 'package:figma_task_one/screens/syllabus_listing_screen.dart';
import 'package:figma_task_one/theme_constants.dart';
import 'package:figma_task_one/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class UniversityListingScreen extends StatelessWidget {
  const UniversityListingScreen({super.key});

  static const List<Map<String, String>> _universities = [
    {
      'name': 'Tribhuvan University',
      'location': 'Kirtipur, Kathmandu',
      'tag': 'CENTRAL UNIVERSITY',
    },
    {
      'name': 'Kathmandu University',
      'location': 'Dhulikhel, Kavre',
      'tag': 'AUTONOMOUS',
    },
    {
      'name': 'Pokhara University',
      'location': 'Lekhnath, Pokhara',
      'tag': 'REGIONAL HUB',
    },
    {
      'name': 'Purbanchal University',
      'location': 'Biratnagar, Morang',
      'tag': 'EASTERN NEPAL',
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

            // ── Scrollable content ───────────────────────────────────────
            Expanded(
              child: ListView(
                padding: const EdgeInsets.all(16),
                children: [

                  // Title block
                  const Text(
                    'Academic Institutions',
                    style: TextStyle(
                      fontSize: 26,
                      fontWeight: FontWeight.bold,
                      color: shPrimaryBlue,
                    ),
                  ),
                  const SizedBox(height: 4),
                  const Text(
                    'Discover top-tier higher education\nopportunities across Nepal.',
                    style: TextStyle(color: shSubtitleText, fontSize: 13),
                  ),

                  const SizedBox(height: 20),

                  // Search bar
                  TextField(
                    decoration: InputDecoration(
                      hintText: 'Search universities...',
                      hintStyle:
                          const TextStyle(color: shGrey, fontSize: 14),
                      prefixIcon:
                          const Icon(Icons.search, color: shGrey, size: 20),
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

                  const SizedBox(height: 20),

                  // University list
                  ..._universities.map((uni) => _uniCard(context, uni)),

                  const SizedBox(height: 8),

                  // ── Academic highlights header ──────────────────────────
                  Row(
                    children: const [
                      Icon(Icons.auto_awesome,
                          color: Color(0xFFB45309), size: 18),
                      SizedBox(width: 6),
                      Text(
                        'Academic Highlights',
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 17,
                          color: shDarkText,
                        ),
                      ),
                    ],
                  ),

                  const SizedBox(height: 12),

                  // ── Highlight card ─────────────────────────────────────
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
                    child: Stack(
                      children: [
                        // Background icon
                        Positioned(
                          right: -10,
                          bottom: -10,
                          child: Icon(
                            Icons.school,
                            size: 90,
                            color: Colors.white.withOpacity(0.08),
                          ),
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            const Text(
                              'Entrance Prep 2024',
                              style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                                fontSize: 20,
                              ),
                            ),
                            const SizedBox(height: 8),
                            const Text(
                              'Get the latest syllabus and model questions for all TU, KU, and PU entrance examinations.',
                              style: TextStyle(
                                color: Colors.white70,
                                fontSize: 13,
                              ),
                            ),
                            const SizedBox(height: 16),
                            OutlinedButton(
                              onPressed: () {},
                              style: OutlinedButton.styleFrom(
                                foregroundColor: Colors.white,
                                side: const BorderSide(color: Colors.white),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                              ),
                              child: const Text(
                                'Access Guide',
                                style: TextStyle(
                                  fontWeight: FontWeight.bold,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),

                  const SizedBox(height: 16),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _uniCard(BuildContext context, Map<String, String> uni) {
    return GestureDetector(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(builder: (_) => const SyllabusListingScreen()),
        );
      },
      child: Container(
        margin: const EdgeInsets.only(bottom: 12),
        padding: const EdgeInsets.all(14),
        decoration: shCardDecoration,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            // Tag chip
            Container(
              padding:
                  const EdgeInsets.symmetric(horizontal: 10, vertical: 3),
              decoration: BoxDecoration(
                color: shLightBlue,
                borderRadius: BorderRadius.circular(20),
              ),
              child: Text(
                uni['tag']!,
                style: const TextStyle(
                  fontSize: 10,
                  fontWeight: FontWeight.w700,
                  color: shPrimaryBlue,
                  letterSpacing: 0.5,
                ),
              ),
            ),
            const SizedBox(height: 8),
            Row(
              children: [
                // Placeholder logo
                Container(
                  width: 52,
                  height: 52,
                  decoration: BoxDecoration(
                    color: shBackground,
                    borderRadius: BorderRadius.circular(10),
                  ),
                ),
                const SizedBox(width: 14),
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        uni['name']!,
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 16,
                          color: shDarkText,
                        ),
                      ),
                      const SizedBox(height: 4),
                      Row(
                        children: [
                          const Icon(Icons.location_on_outlined,
                              size: 13, color: shGrey),
                          const SizedBox(width: 3),
                          Text(
                            uni['location']!,
                            style: const TextStyle(
                                color: shGrey, fontSize: 12),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                const Icon(Icons.chevron_right, color: shGrey),
              ],
            ),
          ],
        ),
      ),
    );
  }
}