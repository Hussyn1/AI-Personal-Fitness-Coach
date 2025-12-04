import 'package:flutter/material.dart';

/// Gradient Text Widget
class GradientText extends StatelessWidget {
  final String text;
  final TextStyle? style;
  final List<Color>? gradientColors;

  const GradientText({
    Key? key,
    required this.text,
    this.style,
    this.gradientColors,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ShaderMask(
      shaderCallback: (bounds) => LinearGradient(
        colors: gradientColors ?? 
            [const Color(0xFF6C63FF), const Color(0xFF00D9A3)],
      ).createShader(bounds),
      child: Text(
        text,
        style: (style ?? const TextStyle(fontSize: 32, fontWeight: FontWeight.bold))
            .copyWith(color: Colors.white),
      ),
    );
  }
}

/// Loading Widget
class LoadingWidget extends StatelessWidget {
  const LoadingWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return const Center(
      child: CircularProgressIndicator(
        color: Color(0xFF6C63FF),
      ),
    );
  }
}

/// Custom Checkbox with Label
class CustomCheckbox extends StatelessWidget {
  final bool value;
  final ValueChanged<bool?> onChanged;
  final String label;

  const CustomCheckbox({
    Key? key,
    required this.value,
    required this.onChanged,
    required this.label,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        SizedBox(
          height: 24,
          width: 24,
          child: Checkbox(
            value: value,
            onChanged: onChanged,
            activeColor: const Color(0xFF6C63FF),
            side: const BorderSide(color: Color(0xFF2A2A3E)),
          ),
        ),
        const SizedBox(width: 8),
        Text(
          label,
          style: const TextStyle(
            color: Color(0xFFB4B4C8),
            fontSize: 14,
          ),
        ),
      ],
    );
  }
}