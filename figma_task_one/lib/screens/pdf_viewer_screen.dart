import 'package:figma_task_one/widgets/action_card.dart';
import 'package:figma_task_one/widgets/bottoms_controls.dart';
import 'package:flutter/material.dart';

class PhysicsScreen extends StatelessWidget {
  const PhysicsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey[100],

      floatingActionButton: FloatingActionButton(
        onPressed: () {},
        backgroundColor: Colors.blue[800],
        child: const Icon(Icons.download),
      ),

      body: SafeArea(
        child: Column(
          children: [

            /// 🔹 Top Bar
            Padding(
              padding: const EdgeInsets.all(16),
              child: Row(
                children: const [
                  Icon(Icons.arrow_back),
                  SizedBox(width: 10),
                  Expanded(
                    child: Text(
                      "IOE Entrance - Physics",
                      style: TextStyle(fontWeight: FontWeight.bold),
                    ),
                  ),
                  Icon(Icons.bookmark_border),
                  SizedBox(width: 10),
                  Icon(Icons.share),
                ],
              ),
            ),

            /// 🔹 Subtitle
            const Text(
              "UNIT 2: THERMODYNAMICS",
              style: TextStyle(fontSize: 11, color: Colors.grey),
            ),

            const SizedBox(height: 10),

            /// 🔹 Content Card
            Expanded(
              child: Container(
                margin: const EdgeInsets.all(16),
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(20),
                ),
                child: ListView(
                  children: [

                    /// Page Indicator
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Container(
                          width: 60,
                          height: 4,
                          color: Colors.grey[300],
                        ),
                        const Text(
                          "PAGE 01 / 12",
                          style:
                              TextStyle(fontSize: 10, color: Colors.grey),
                        )
                      ],
                    ),

                    const SizedBox(height: 20),

                    /// Title
                    const Text(
                      "Laws of Thermodynamics",
                      style: TextStyle(
                          fontSize: 22, fontWeight: FontWeight.bold),
                    ),

                    const SizedBox(height: 10),

                    const Text(
                      "Thermodynamics is the branch of physics that deals with relationships between heat and energy...",
                      style: TextStyle(color: Colors.grey),
                    ),

                    const SizedBox(height: 20),

                    /// First Law Card
                    Container(
                      padding: const EdgeInsets.all(16),
                      decoration: BoxDecoration(
                        color: Colors.blue[50],
                        borderRadius: BorderRadius.circular(14),
                        border: Border(
                          left: BorderSide(
                            color: Colors.blue,
                            width: 4,
                          ),
                        ),
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: const [
                          Text(
                            "FIRST LAW",
                            style: TextStyle(
                                fontWeight: FontWeight.bold,
                                color: Colors.blue),
                          ),
                          SizedBox(height: 6),
                          Text("ΔU = Q - W",
                              style: TextStyle(fontWeight: FontWeight.bold)),
                          SizedBox(height: 6),
                          Text(
                            "Change in internal energy is equal to heat added minus work done.",
                            style: TextStyle(fontSize: 12),
                          ),
                        ],
                      ),
                    ),

                    const SizedBox(height: 20),

                    /// Buttons Row
                    Row(
                      children: [
                        Expanded(
                          child: ActionCard(
                            icon: Icons.science,
                            title: "EXPERIMENTAL\nSETUP",
                          ),
                        ),
                        const SizedBox(width: 10),
                        Expanded(
                          child: ActionCard(
                            icon: Icons.show_chart,
                            title: "P-V DIAGRAM",
                          ),
                        ),
                      ],
                    ),

                    const SizedBox(height: 40),
                  ],
                ),
              ),
            ),

            /// 🔹 Bottom Controls
            const BottomControls(),
          ],
        ),
      ),
    );
  }
}