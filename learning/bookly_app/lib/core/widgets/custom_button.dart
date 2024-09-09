import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  const CustomButton({
    super.key,
    required this.onPressed,
    this.backgroundColor = Colors.white,
    this.borderRadius = BorderRadius.zero,
    this.child,
  });

  final VoidCallback onPressed;
  final Color backgroundColor;
  final BorderRadius borderRadius;
  final Widget? child;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: onPressed,
      style: TextButton.styleFrom(
          backgroundColor: backgroundColor,
          shape: RoundedRectangleBorder(borderRadius: borderRadius)),
      child: Center(
        child: child,
      ),
    );
  }
}
