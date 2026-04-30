import 'package:figma_task_one/screens/home_screen.dart';
import 'package:figma_task_one/screens/university_listing_screen.dart';
import 'package:figma_task_one/theme_constants.dart';
import 'package:figma_task_one/widgets/custom_bottom_nav.dart';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  bool _notifications = true;
  bool _darkMode = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: shBackground,

      // ── Bottom nav ─────────────────────────────────────────────────────
      bottomNavigationBar: CustomBottomNav(
        currentIndex: 2,
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
          }
        },
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              // ── App bar ────────────────────────────────────────────────
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

              const SizedBox(height: 24),

              // ── Avatar + name ──────────────────────────────────────────
              Center(
                child: Stack(
                  children: [
                    // Outer white ring
                    Container(
                      width: 92,
                      height: 92,
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        border:
                            Border.all(color: shPrimaryBlue, width: 3),
                        color: Colors.white,
                      ),
                      child: const CircleAvatar(
                        radius: 43,
                        backgroundColor: shPrimaryBlue,
                      ),
                    ),
                    // Edit badge
                    Positioned(
                      bottom: 0,
                      right: 0,
                      child: Container(
                        width: 26,
                        height: 26,
                        decoration: BoxDecoration(
                          color: shPrimaryBlue,
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: const Icon(Icons.edit,
                            color: Colors.white, size: 13),
                      ),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 12),

              const Center(
                child: Text(
                  'Aayush Shrestha',
                  style: TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                    color: shDarkText,
                  ),
                ),
              ),

              const SizedBox(height: 6),

              Center(
                child: Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 12, vertical: 4),
                  decoration: BoxDecoration(
                    color: shLightBlue,
                    borderRadius: BorderRadius.circular(20),
                  ),
                  child: const Text(
                    'LEVEL 12 • SCIENCE',
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.bold,
                      color: shPrimaryBlue,
                      letterSpacing: 0.5,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 10),

              const Padding(
                padding: EdgeInsets.symmetric(horizontal: 40),
                child: Center(
                  child: Text(
                    'Aspiring Medical Student at IOE, Kathmandu. Focused on Organic Chemistry.',
                    textAlign: TextAlign.center,
                    style: TextStyle(
                      fontSize: 13,
                      color: shSubtitleText,
                      height: 1.5,
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 20),

              // ── Stats ──────────────────────────────────────────────────
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Row(
                  children: const [
                    Expanded(
                      child: _StatCard(value: '42', label: 'NOTES READ'),
                    ),
                    SizedBox(width: 12),
                    Expanded(
                      child: _StatCard(
                          value: '12', label: 'SYLLABI CHECKED'),
                    ),
                  ],
                ),
              ),

              const SizedBox(height: 24),

              // ── Saved Notes ────────────────────────────────────────────
              _sectionHeader('Saved Notes', action: 'View All'),

              _noteCard(
                tag: 'PHYSICS',
                title: 'Thermodynamics: Laws and Applications',
                subtitle: 'Updated 2 days ago',
              ),
              _noteCard(
                tag: 'BIOLOGY',
                title: 'Cellular Respiration - Krebs Cycle',
                subtitle: 'Updated 1 week ago',
              ),

              const SizedBox(height: 8),

              // ── Recent Syllabi ─────────────────────────────────────────
              _sectionHeader('Recent Syllabi'),

              _syllabusItem(
                title: 'NEB Grade 12 - Chemistry',
                subtitle: '2080/2081 Revision',
              ),
              _syllabusItem(
                title: 'MBBS Entrance (IOM) Syllabus',
                subtitle: 'General Knowledge & Science',
              ),

              const SizedBox(height: 8),

              // ── App Settings ───────────────────────────────────────────
              _sectionHeader('App Settings'),

              // Notifications
              _switchTile(
                icon: Icons.notifications_outlined,
                title: 'Notifications',
                value: _notifications,
                onChanged: (v) => setState(() => _notifications = v),
              ),

              // Dark Mode
              _switchTile(
                icon: Icons.dark_mode_outlined,
                title: 'Dark Mode',
                value: _darkMode,
                onChanged: (v) => setState(() => _darkMode = v),
              ),

              // Language
              ListTile(
                contentPadding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 0),
                leading: const Icon(Icons.translate_outlined,
                    color: shSubtitleText, size: 22),
                title: const Text(
                  'Language (Nepali)',
                  style: TextStyle(
                    fontSize: 14,
                    color: shDarkText,
                  ),
                ),
                trailing: const Icon(Icons.chevron_right,
                    color: shGrey, size: 20),
                onTap: () {},
              ),

              const SizedBox(height: 16),

              // ── Logout ─────────────────────────────────────────────────
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: SizedBox(
                  width: double.infinity,
                  height: 52,
                  child: ElevatedButton.icon(
                    onPressed: () {},
                    icon: const Icon(Icons.logout, size: 18),
                    label: const Text(
                      'Logout',
                      style: TextStyle(
                        fontWeight: FontWeight.bold,
                        fontSize: 15,
                      ),
                    ),
                    style: ElevatedButton.styleFrom(
                      backgroundColor: const Color(0xFFFFE4E4),
                      foregroundColor: Colors.red.shade700,
                      elevation: 0,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(14),
                      ),
                    ),
                  ),
                ),
              ),

              const SizedBox(height: 24),
            ],
          ),
        ),
      ),
    );
  }

  // ── Helpers ──────────────────────────────────────────────────────────────

  Widget _sectionHeader(String title, {String? action}) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 0, 16, 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: shDarkText,
            ),
          ),
          if (action != null)
            Text(
              action,
              style: const TextStyle(
                color: shPrimaryBlue,
                fontWeight: FontWeight.w600,
                fontSize: 13,
              ),
            ),
        ],
      ),
    );
  }

  Widget _noteCard({
    required String tag,
    required String title,
    required String subtitle,
  }) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 10),
      padding: const EdgeInsets.all(14),
      decoration: shCardDecoration,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  padding: const EdgeInsets.symmetric(
                      horizontal: 8, vertical: 3),
                  decoration: BoxDecoration(
                    color: shLightBlue,
                    borderRadius: BorderRadius.circular(6),
                  ),
                  child: Text(
                    tag,
                    style: const TextStyle(
                      fontSize: 10,
                      fontWeight: FontWeight.bold,
                      color: shPrimaryBlue,
                    ),
                  ),
                ),
                const SizedBox(height: 6),
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: shDarkText,
                  ),
                ),
                const SizedBox(height: 4),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 12, color: shSubtitleText),
                ),
              ],
            ),
          ),
          const Icon(Icons.bookmark, color: shPrimaryBlue, size: 20),
        ],
      ),
    );
  }

  Widget _syllabusItem({required String title, required String subtitle}) {
    return Container(
      margin: const EdgeInsets.fromLTRB(16, 0, 16, 10),
      padding: const EdgeInsets.symmetric(horizontal: 14, vertical: 12),
      decoration: shCardDecoration,
      child: Row(
        children: [
          Container(
            width: 38,
            height: 38,
            decoration: BoxDecoration(
              color: shLightBlue,
              borderRadius: BorderRadius.circular(10),
            ),
            child: const Icon(Icons.description_outlined,
                color: shPrimaryBlue, size: 18),
          ),
          const SizedBox(width: 12),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  title,
                  style: const TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 14,
                    color: shDarkText,
                  ),
                ),
                const SizedBox(height: 2),
                Text(
                  subtitle,
                  style: const TextStyle(
                      fontSize: 12, color: shSubtitleText),
                ),
              ],
            ),
          ),
          const Icon(Icons.chevron_right, color: shGrey, size: 20),
        ],
      ),
    );
  }

  Widget _switchTile({
    required IconData icon,
    required String title,
    required bool value,
    required ValueChanged<bool> onChanged,
  }) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Icon(icon, color: shSubtitleText, size: 22),
          const SizedBox(width: 14),
          Expanded(
            child: Text(
              title,
              style: const TextStyle(fontSize: 14, color: shDarkText),
            ),
          ),
          Switch(
            value: value,
            onChanged: onChanged,
            activeColor: shPrimaryBlue,
          ),
        ],
      ),
    );
  }
}

// ── Stat card ─────────────────────────────────────────────────────────────────
class _StatCard extends StatelessWidget {
  final String value;
  final String label;

  const _StatCard({required this.value, required this.label});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 16),
      decoration: shCardDecoration,
      child: Column(
        children: [
          Text(
            value,
            style: const TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 22,
              color: shPrimaryBlue,
            ),
          ),
          const SizedBox(height: 4),
          Text(
            label,
            style: const TextStyle(fontSize: 11, color: shGrey),
          ),
        ],
      ),
    );
  }
}