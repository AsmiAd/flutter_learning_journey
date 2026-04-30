import 'package:flutter/material.dart';

class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  int currentIndex = 1;

  final List<Map<String, String>> universities = [
    {
      "name": "Tribhuvan University",
      "location": "Kirtipur, Kathmandu",
      "tag": "Central University"
    },
    {
      "name": "Kathmandu University",
      "location": "Dhulikhel, Kavre",
      "tag": "Autonomous"
    },
    {
      "name": "Pokhara University",
      "location": "Lekhnath, Pokhara",
      "tag": "Regional Hub"
    },
    {
      "name": "Purbanchal University",
      "location": "Biratnagar, Morang",
      "tag": "Eastern Nepal"
    },
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      /// 🔹 Bottom Navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: (index) {
          setState(() => currentIndex = index);
        },
        selectedItemColor: Colors.blue,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "Home"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "Browse"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "Profile"),
        ],
      ),

      /// 🔹 Main Content
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              /// 🔹 Header
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text(
                    "StudyHub Nepal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  CircleAvatar(
                    radius: 14,
                    backgroundColor: Colors.grey[300],
                  )
                ],
              ),

              const SizedBox(height: 20),

              /// 🔹 Title
              const Text(
                "Academic Institutions",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                "Discover top-tier higher education opportunities across Nepal.",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 16),

              /// 🔹 Search Bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search universities...",
                  prefixIcon: const Icon(Icons.search),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 16),

              /// 🔹 List
              Expanded(
                child: ListView.builder(
                  itemCount: universities.length,
                  itemBuilder: (context, index) {
                    final uni = universities[index];

                    return Container(
                      margin: const EdgeInsets.only(bottom: 12),
                      padding: const EdgeInsets.all(14),
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(14),
                        boxShadow: [
                          BoxShadow(
                            color: Colors.grey.withOpacity(0.1),
                            blurRadius: 6,
                          )
                        ],
                      ),
                      child: Row(
                        children: [
                          /// Placeholder image
                          Container(
                            width: 50,
                            height: 50,
                            decoration: BoxDecoration(
                              color: Colors.grey[300],
                              borderRadius: BorderRadius.circular(10),
                            ),
                          ),

                          const SizedBox(width: 12),

                          /// Text Content
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  uni["tag"]!,
                                  style: TextStyle(
                                    fontSize: 10,
                                    color: Colors.blue[700],
                                    fontWeight: FontWeight.w600,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  uni["name"]!,
                                  style: const TextStyle(
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  uni["location"]!,
                                  style: const TextStyle(
                                    color: Colors.grey,
                                    fontSize: 12,
                                  ),
                                ),
                              ],
                            ),
                          ),

                          const Icon(Icons.chevron_right),
                        ],
                      ),
                    );
                  },
                ),
              ),

              const SizedBox(height: 10),

              /// 🔹 Highlight Card
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.blue[800],
                  borderRadius: BorderRadius.circular(16),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const Text(
                      "Entrance Prep 2024",
                      style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 16,
                      ),
                    ),
                    const SizedBox(height: 8),
                    const Text(
                      "Get the latest syllabus and model questions.",
                      style: TextStyle(color: Colors.white70),
                    ),
                    const SizedBox(height: 12),
                    ElevatedButton(
                      onPressed: () {},
                      style: ElevatedButton.styleFrom(
                        backgroundColor: Colors.white,
                        foregroundColor: Colors.blue,
                      ),
                      child: const Text("Access Guide"),
                    )
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}