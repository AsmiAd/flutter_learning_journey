import 'package:flutter/material.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xfff3f4f6),

      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 2,
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.search), label: "Browse"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            children: [

              /// Header
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: const [
                    Text("StudyHub Nepal",
                        style: TextStyle(fontWeight: FontWeight.bold)),
                    CircleAvatar(radius: 16, backgroundColor: Colors.grey),
                  ],
                ),
              ),

              /// Profile
              Column(
                children: const [
                  CircleAvatar(
                    radius: 40,
                    backgroundColor: Colors.white,
                    child: CircleAvatar(
                      radius: 36,
                      backgroundColor: Colors.blue,
                    ),
                  ),
                  SizedBox(height: 10),
                  Text("Aayush Shrestha",
                      style:
                          TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
                  Text("LEVEL 12 • SCIENCE",
                      style: TextStyle(color: Colors.blue, fontSize: 12)),
                  Padding(
                    padding: EdgeInsets.symmetric(horizontal: 40, vertical: 8),
                    child: Text(
                      "Aspiring Medical Student at IOE, Kathmandu. Focused on Organic Chemistry.",
                      textAlign: TextAlign.center,
                      style: TextStyle(fontSize: 13, color: Colors.black54),
                    ),
                  ),
                ],
              ),

              /// Stats
              Padding(
                padding: const EdgeInsets.all(16),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  children: const [
                    StatCard(title: "42", subtitle: "NOTES READ"),
                    StatCard(title: "12", subtitle: "SYLLABI CHECKED"),
                  ],
                ),
              ),

              /// Saved Notes
              sectionTitle("Saved Notes", action: "View All"),
              noteCard("PHYSICS", "Thermodynamics: Laws and Applications",
                  "Updated 2 days ago"),
              noteCard("BIOLOGY", "Cellular Respiration - Krebs Cycle",
                  "Updated 1 week ago"),

              /// Recent Syllabi
              sectionTitle("Recent Syllabi"),
              listItem("NEB Grade 12 - Chemistry"),
              listItem("MBBS Entrance (IOM)"),

              /// Settings
              sectionTitle("App Settings"),
              switchItem("Notifications", true),
              switchItem("Dark Mode", false),
              listItem("Language (Nepali)"),

              /// Logout
              Padding(
                padding: const EdgeInsets.all(16),
                child: ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.red.shade200,
                    minimumSize: const Size(double.infinity, 50),
                    shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10)),
                  ),
                  onPressed: () {},
                  child: const Text("Logout"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Title
  static Widget sectionTitle(String title, {String? action}) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          if (action != null)
            Text(action, style: const TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  /// Note Card
  static Widget noteCard(String tag, String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 6),
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade100,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(tag,
              style: const TextStyle(fontSize: 10, color: Colors.blue)),
          const SizedBox(height: 4),
          Text(title, style: const TextStyle(fontWeight: FontWeight.bold)),
          const SizedBox(height: 4),
          Text(subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.black54)),
        ],
      ),
    );
  }

  /// List Item
  static Widget listItem(String title) {
    return ListTile(
      title: Text(title),
      trailing: const Icon(Icons.chevron_right),
    );
  }

  /// Switch Item
  static Widget switchItem(String title, bool value) {
    return StatefulBuilder(
      builder: (context, setState) {
        return SwitchListTile(
          title: Text(title),
          value: value,
          onChanged: (val) {
            setState(() {});
          },
        );
      },
    );
  }
}

/// Stat Card Widget
class StatCard extends StatelessWidget {
  final String title;
  final String subtitle;

  const StatCard({super.key, required this.title, required this.subtitle});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 140,
      padding: const EdgeInsets.all(12),
      decoration: BoxDecoration(
        color: Colors.grey.shade200,
        borderRadius: BorderRadius.circular(10),
      ),
      child: Column(
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 18)),
          const SizedBox(height: 4),
          Text(subtitle,
              style: const TextStyle(fontSize: 12, color: Colors.black54)),
        ],
      ),
    );
  }
}