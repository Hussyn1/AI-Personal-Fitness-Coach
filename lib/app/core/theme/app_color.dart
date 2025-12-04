import 'package:flutter/material.dart';

class AppColors {
  // Primary Colors - Vibrant and Energetic
  static const Color primary = Color(0xFF6C63FF); // Electric Purple
  static const Color primaryLight = Color(0xFF9D97FF);
  static const Color primaryDark = Color(0xFF4B43E0);
  
  // Secondary Colors - Accent and Energy
  static const Color secondary = Color(0xFF00D9A3); // Mint Green
  static const Color secondaryLight = Color(0xFF5CFFDB);
  static const Color secondaryDark = Color(0xFF00A67C);
  
  // Background Colors
  static const Color background = Color(0xFF0F0F1E); // Deep Dark Blue
  static const Color backgroundLight = Color(0xFF1A1A2E); // Lighter Dark
  static const Color surface = Color(0xFF16213E); // Card Background
  static const Color surfaceLight = Color(0xFF1F2D4D);
  
  // Text Colors
  static const Color textPrimary = Color(0xFFFFFFFF); // White
  static const Color textSecondary = Color(0xFFB4B4C8); // Light Gray
  static const Color textHint = Color(0xFF6B6B7F); // Muted Gray
  
  // Status Colors
  static const Color success = Color(0xFF00D9A3); // Green
  static const Color error = Color(0xFFFF5252); // Red
  static const Color warning = Color(0xFFFFB800); // Amber
  static const Color info = Color(0xFF4FC3F7); // Light Blue
  
  // Gradient Colors
  static const LinearGradient primaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF6C63FF),
      Color(0xFF9D97FF),
    ],
  );
  
  static const LinearGradient secondaryGradient = LinearGradient(
    begin: Alignment.topLeft,
    end: Alignment.bottomRight,
    colors: [
      Color(0xFF00D9A3),
      Color(0xFF5CFFDB),
    ],
  );
  
  static const LinearGradient darkGradient = LinearGradient(
    begin: Alignment.topCenter,
    end: Alignment.bottomCenter,
    colors: [
      Color(0xFF0F0F1E),
      Color(0xFF1A1A2E),
    ],
  );
  
  // Additional UI Colors
  static const Color cardBorder = Color(0xFF2A2A3E);
  static const Color divider = Color(0xFF2A2A3E);
  static const Color shimmer = Color(0xFF2A2A3E);
  
  // Chart Colors
  static const List<Color> chartColors = [
    Color(0xFF6C63FF),
    Color(0xFF00D9A3),
    Color(0xFFFFB800),
    Color(0xFFFF5252),
    Color(0xFF4FC3F7),
  ];
}