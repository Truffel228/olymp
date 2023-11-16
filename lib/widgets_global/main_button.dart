import 'package:fin_assistant/build_context_ext.dart';
import 'package:flutter/material.dart';

class MainButton extends StatelessWidget {
  const MainButton(
      {super.key, required this.title, required this.onTap, this.width});

  final String title;
  final VoidCallback onTap;
  final double? width;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        alignment: Alignment.center,
        width: width,
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(100),
          color: context.theme.primaryColor,
        ),
        child: Text(
          title,
          style: context.textTheme.labelSmall,
        ),
      ),
    );
  }
}
