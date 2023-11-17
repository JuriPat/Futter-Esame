import 'package:flutter/material.dart';

class SocialButton extends StatefulWidget {
  const SocialButton({super.key});

  @override
  State<SocialButton> createState() => _SocialButtonState();
}

class _SocialButtonState extends State<SocialButton> {
  var isHovered = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          isHovered = true;
        });
      },
      onExit: (_) {
        setState(() {
          isHovered = false;
        });
      },
      child: AnimatedContainer(
        duration: const Duration(microseconds: 200),
        curve: Curves.easeInOut,
        height: 56,
        decoration: BoxDecoration(
          color: isHovered ? Colors.greenAccent.shade700 : Colors.green,
          borderRadius: BorderRadius.circular(8),
        ),
        child: const Center(
          child: Text('continue'),
        ),
      ),
    );
  }
}
