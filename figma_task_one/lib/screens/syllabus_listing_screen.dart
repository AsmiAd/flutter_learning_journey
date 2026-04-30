import 'package:flutter/material.dart';

class SyllabusListingScreen extends StatelessWidget {
  const SyllabusListingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      //need to make a common bottom navigation for all screens, so it can be easily switched between them


      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 1,
        items: const [
          BottomNavigationBarItem(icon: Icon(Icons.home), label: "HOME"),
          BottomNavigationBarItem(icon: Icon(Icons.explore), label: "BROWSE"),
          BottomNavigationBarItem(icon: Icon(Icons.person), label: "PROFILE"),
        ],
      ),

      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),

          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [

              //top bar
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: const [
                  Row(
                    children: [
                      Icon(Icons.menu),
                      SizedBox(width: 8),
                      Text("StudyHub Nepal",
                          style: TextStyle(fontWeight: FontWeight.bold)),
                    ],
                  ),
                  CircleAvatar(radius: 16),
                ],
              ),

              const SizedBox(height: 20),

              //title section
              const Text(
                "BSc. CSIT Syllabus",
                style: TextStyle(
                    fontSize: 22, fontWeight: FontWeight.bold),
              ),
              const SizedBox(height: 4),
              const Text(
                "Explore all subjects across semesters",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 16),

              //search bar
              TextField(
                decoration: InputDecoration(
                  hintText: "Search subjects or codes...",
                  prefixIcon: const Icon(Icons.search),
                  suffixIcon: const Icon(Icons.tune),
                  filled: true,
                  fillColor: Colors.grey[200],
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(12),
                    borderSide: BorderSide.none,
                  ),
                ),
              ),

              const SizedBox(height: 20),

              //scrollable content
              Expanded(
                child: ListView(
                  children: [

                    //first semester
                    _sectionHeader("First Semester", "5 SUBJECTS"),

                    _subjectCard(
                      title: "Introduction to IT",
                      subtitle:
                          "Fundamental concepts of hardware, software, and binary logic.",
                    ),

                    _subjectCard(
                      title: "C Programming",
                      subtitle:
                          "Procedural programming basics using C language.",
                    ),

                    const SizedBox(height: 16),

                    //second semester
                    _sectionHeader("Second Semester", "6 SUBJECTS"),

                    _subjectCard(
                      title: "Discrete Structures",
                      subtitle:
                          "Foundational mathematics for computer science logic.",
                    ),

                    //highlighted card
                    _subjectCard(
                      title: "Object Oriented Programming",
                      subtitle:
                          "Advanced programming concepts using C++ paradigms.",
                      isHighlighted: true,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  //section header
  Widget _sectionHeader(String title, String count) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 10),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(title,
              style:
                  const TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
          Text(count, style: const TextStyle(color: Colors.blue)),
        ],
      ),
    );
  }

  //subject card
  Widget _subjectCard({
    required String title,
    required String subtitle,
    bool isHighlighted = false,
  }) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isHighlighted ? Colors.blue[900] : Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [

          Text(
            title,
            style: TextStyle(
              fontWeight: FontWeight.bold,
              fontSize: 16,
              color: isHighlighted ? Colors.white : Colors.black,
            ),
          ),

          const SizedBox(height: 4),

          Text(
            subtitle,
            style: TextStyle(
              color: isHighlighted ? Colors.white70 : Colors.grey,
            ),
          ),
        ],
      ),
    );
  }
}