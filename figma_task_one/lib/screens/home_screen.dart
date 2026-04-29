import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      //floating search button
      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        child: const Icon(Icons.search),
      ),

      //need to make a common bottom navigation for all screens, so it can be easily switched between them

      //-bottom navigation
      bottomNavigationBar: BottomNavigationBar(
        currentIndex: 0,
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
                      Text(
                        "StudyHub Nepal",
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                    ],
                  ),
                  CircleAvatar(radius: 16),
                ],
              ),

              const SizedBox(height: 20),

              //welcome text
              const Text(
                "WELCOME BACK",
                style: TextStyle(fontSize: 12, color: Colors.grey),
              ),
              const SizedBox(height: 4),
              const Text(
                "Your Academic\nCurator.",
                style: TextStyle(fontSize: 26, fontWeight: FontWeight.bold),
              ),

              const SizedBox(height: 20),

              //expanded scrollable 
              Expanded(
                child: ListView(
                  children: [

                    //featured card
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        gradient: const LinearGradient(
                          colors: [Colors.blue, Colors.indigo],
                        ),
                        borderRadius: BorderRadius.circular(16),
                      ),
                      child: const Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text("FEATURED NOTICE",
                              style: TextStyle(color: Colors.white70)),
                          SizedBox(height: 8),
                          Text(
                            "Prepare for IOE Entrance 2024",
                            style: TextStyle(
                                color: Colors.white,
                                fontWeight: FontWeight.bold),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 16),

                    //quick action
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        _quickButton("Notes"),
                        _quickButton("Fast Questions"),
                        _quickButton("More"),
                      ],
                    ),

                    const SizedBox(height: 20),

                    //section header
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: const [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text("First Semester",
                                style: TextStyle(
                                    fontWeight: FontWeight.bold, fontSize: 18)),
                            Text("Bachelor of Engineering (IOE)",
                                style: TextStyle(color: Colors.grey)),
                          ],
                        ),
                        Text("View All",
                            style: TextStyle(color: Colors.blue)),
                      ],
                    ),

                    const SizedBox(height: 16),

                    //subject cards
                    _subjectCard("Engineering Mathematics I",
                        "Calculus, Analytical Geometry"),
                    _subjectCard("Engineering Physics",
                        "Optics, Nuclear Physics"),
                    _subjectCard("Computer Programming",
                        "C Programming Fundamentals"),

                    const SizedBox(height: 20),

                    //recommended reads
                    const Text(
                      "Recommended Reads",
                      style:
                          TextStyle(fontWeight: FontWeight.bold, fontSize: 18),
                    ),

                    const SizedBox(height: 10),

                    Row(
                      children: [
                        Expanded(child: _bookPlaceholder("Thomas' Calculus")),
                        const SizedBox(width: 10),
                        Expanded(child: _bookPlaceholder("Resnick & Halliday")),
                      ],
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

  //quick button widget
  Widget _quickButton(String text) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 14),
      decoration: BoxDecoration(
        color: Colors.grey[200],
        borderRadius: BorderRadius.circular(12),
      ),
      child: Text(text),
    );
  }

  //subject card
  Widget _subjectCard(String title, String subtitle) {
    return Container(
      margin: const EdgeInsets.only(bottom: 12),
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(title,
              style:
                  const TextStyle(fontWeight: FontWeight.bold, fontSize: 16)),
          const SizedBox(height: 4),
          Text(subtitle, style: const TextStyle(color: Colors.grey)),
        ],
      ),
    );
  }

  //book placeholder
  Widget _bookPlaceholder(String title) {
    return Column(
      children: [
        Container(
          height: 100,
          decoration: BoxDecoration(
            color: Colors.grey[300],
            borderRadius: BorderRadius.circular(12),
          ),
        ),
        const SizedBox(height: 6),
        Text(title, overflow: TextOverflow.ellipsis),
      ],
    );
  }
}