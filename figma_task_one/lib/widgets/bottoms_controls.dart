import 'package:flutter/material.dart';

class BottomControls extends StatelessWidget {
  const BottomControls({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        children: [

          /// Zoom Bar
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            decoration: BoxDecoration(
              color: Colors.grey[200],
              borderRadius: BorderRadius.circular(30),
            ),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const [
                Icon(Icons.zoom_out),
                Text("100%"),
                Icon(Icons.zoom_in),
              ],
            ),
          ),

          const SizedBox(height: 10),

          /// Navigation Buttons
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: const [
              Text("PREV"),
              ElevatedButton(
                onPressed: null,
                child: Text("READ"),
              ),
              Text("NEXT"),
            ],
          ),
        ],
      ),
    );
  }
}