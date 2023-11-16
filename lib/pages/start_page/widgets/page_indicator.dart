import 'package:fin_assistant/app_theme.dart';
import 'package:flutter/material.dart';

class PageIndicator extends StatelessWidget {
  const PageIndicator({
    super.key,
    required this.step,
  });

  final int step;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(
        horizontal: 24,
      ),
      child: Row(
        children: [
          IndicatorStep(active: step >= 0),
          const SizedBox(width: 4),
          IndicatorStep(active: step >= 1),
          const SizedBox(width: 4),
          IndicatorStep(active: step >= 2),
          const SizedBox(width: 4),
          IndicatorStep(active: step >= 3),
        ],
      ),
    );
  }
}

class IndicatorStep extends StatelessWidget {
  const IndicatorStep({super.key, required this.active});

  final bool active;

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: AnimatedContainer(
        duration: const Duration(milliseconds: 400),
        decoration: BoxDecoration(
            color: active ? AppTheme.blackFontColor : AppTheme.grey,
            borderRadius: BorderRadius.circular(10)),
        height: 4,
      ),
    );
  }
}
