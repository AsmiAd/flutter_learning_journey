import 'package:figma_task_one/widgets/chapter_tile.dart';
import 'package:figma_task_one/widgets/objective_item.dart';
import 'package:figma_task_one/widgets/section_tile.dart';
import 'package:flutter/material.dart';

class SyllabusDetailScreen extends StatelessWidget {
  const SyllabusDetailScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

            //need to make a common bottom navigation for all screens, so it can be easily switched between them


      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(16),
          child: ListView(
            children: [

              //top bar
              Row(
                children: [
                  const Icon(Icons.arrow_back),
                  const SizedBox(width: 10),
                  const Text(
                    "StudyHub Nepal",
                    style: TextStyle(fontWeight: FontWeight.bold),
                  ),
                  const Spacer(),
                  CircleAvatar(backgroundColor: Colors.grey[300])
                ],
              ),

              const SizedBox(height: 20),

              //tag
              Container(
                padding: const EdgeInsets.symmetric(
                    horizontal: 10, vertical: 5),
                decoration: BoxDecoration(
                  color: Colors.blue[50],
                  borderRadius: BorderRadius.circular(20),
                ),
                child: const Text(
                  "BACHELOR IN COMPUTER ENGINEERING",
                  style: TextStyle(fontSize: 10, color: Colors.blue),
                ),
              ),

              const SizedBox(height: 16),

              //title
              const Text(
                "Data Structures & Algorithms",
                style: TextStyle(
                  fontSize: 22,
                  fontWeight: FontWeight.bold,
                ),
              ),

              const SizedBox(height: 6),

              const Text(
                "CT 552 | Semester III",
                style: TextStyle(color: Colors.grey),
              ),

              const SizedBox(height: 16),

              //info cards
              Row(
                children: const [
                  Expanded(
                    child: InfoCard(title: "CREDIT HOURS", value: "4.0"),
                  ),
                  SizedBox(width: 12),
                  Expanded(
                    child: InfoCard(title: "TOTAL HOURS", value: "60 hrs"),
                  ),
                ],
              ),

              const SizedBox(height: 20),

              //course objectives
              const SectionTitle(title: "Course Objectives"),

              const SizedBox(height: 10),

              const ObjectiveItem(
                  text:
                      "To provide knowledge on various data structures and their implementation."),
              const ObjectiveItem(
                  text:
                      "To introduce paradigms and analysis techniques for evaluating time and space complexity."),
              const ObjectiveItem(
                  text:
                      "To enable students to choose appropriate data structures and algorithms."),

              const SizedBox(height: 20),

              //chapters
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const SectionTitle(title: "Chapters & Topics"),
                  Container(
                    padding: const EdgeInsets.all(6),
                    decoration: BoxDecoration(
                      color: Colors.blue[50],
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: const Text(
                      "5 UNITS",
                      style: TextStyle(fontSize: 10, color: Colors.blue),
                    ),
                  )
                ],
              ),

              const SizedBox(height: 12),

              const ChapterTile(
                index: "01",
                title: "Introduction to DSA",
                subtitle: "Definition, Efficiency",
              ),
              const ChapterTile(
                index: "02",
                title: "Linear Data Structures",
                subtitle: "Stacks, Queues, Linked Lists",
              ),
              const ChapterTile(
                index: "03",
                title: "Trees",
                subtitle: "Binary Trees, AVL Trees",
                isActive: true,
              ),
              const ChapterTile(
                index: "04",
                title: "Graphs",
                subtitle: "BFS, DFS",
              ),

              const SizedBox(height: 20),

              //button
              SizedBox(
                width: double.infinity,
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    padding: const EdgeInsets.all(16),
                    backgroundColor: Colors.blue[800],
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(12),
                    ),
                  ),
                  child: const Text("VIEW NOTES & OLD QUESTIONS"),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}