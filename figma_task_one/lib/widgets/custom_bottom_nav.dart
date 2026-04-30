import 'package:figma_task_one/theme_constants.dart';
import 'package:flutter/material.dart';

class CustomBottomNav extends StatelessWidget {
  final int currentIndex;
  final ValueChanged<int> onTap;

  const CustomBottomNav({
    super.key,
    required this.currentIndex,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return BottomNavigationBar(
      currentIndex: currentIndex,
      onTap: onTap,
      selectedItemColor: shPrimaryBlue,
      unselectedItemColor: shGrey,
      backgroundColor: shCardWhite,
      selectedLabelStyle: const TextStyle(
        fontWeight: FontWeight.bold,
        fontSize: 11,
      ),
      unselectedLabelStyle: const TextStyle(fontSize: 11),
      items: [
        BottomNavigationBarItem(
          icon: Icon(currentIndex == 0 ? Icons.home : Icons.home_outlined),
          label: 'HOME',
        ),
        BottomNavigationBarItem(
          icon: Icon(
            currentIndex == 1 ? Icons.explore : Icons.explore_outlined,
          ),
          label: 'BROWSE',
        ),
        BottomNavigationBarItem(
          icon: Icon(currentIndex == 2 ? Icons.person : Icons.person_outline),
          label: 'PROFILE',
        ),
      ],
    );
  }
}