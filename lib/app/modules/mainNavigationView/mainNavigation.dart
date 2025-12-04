import 'package:ai_personal_fitness_coach/app/modules/home/view/home_view.dart';
import 'package:ai_personal_fitness_coach/app/modules/nutrition/view/nutrition_view.dart';
import 'package:ai_personal_fitness_coach/app/modules/profile/view/profile_view.dart';
import 'package:ai_personal_fitness_coach/app/modules/workout/view/workout_view.dart';
import 'package:flutter/material.dart';

class MainNavigationView extends StatefulWidget {
  const MainNavigationView({Key? key}) : super(key: key);

  @override
  State<MainNavigationView> createState() => _MainNavigationViewState();
}

class _MainNavigationViewState extends State<MainNavigationView> {
  int _currentIndex = 0;

  final List<Widget> _screens = const [
    HomeView(),
    WorkoutListView(),
    NutritionView(),
    ProfileView(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: IndexedStack(index: _currentIndex, children: _screens),
      bottomNavigationBar: _buildBottomNavigationBar(),
    );
  }

  Widget _buildBottomNavigationBar() {
    return BottomNavigationBar(
      currentIndex: _currentIndex,
      onTap: (index) {
        setState(() => _currentIndex = index);
      },
      backgroundColor: const Color(0xFF16213E),
      type: BottomNavigationBarType.fixed,
      selectedItemColor: const Color(0xFF6C63FF),
      unselectedItemColor: const Color(0xFFB4B4C8),
      elevation: 10,

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home_rounded), label: "Home"),
        BottomNavigationBarItem(
          icon: Icon(Icons.fitness_center_rounded),
          label: "Workouts",
        ),
        BottomNavigationBarItem(
          icon: Icon(Icons.restaurant_rounded),
          label: "Nutrition",
        ),

        BottomNavigationBarItem(
          icon: Icon(Icons.person_rounded),
          label: "Profile",
        ),
      ],
    );
  }
}

// Placeholder screens (replace with your actual screens)
