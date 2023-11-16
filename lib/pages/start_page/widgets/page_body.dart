import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/widgets_global/main_button.dart';
import 'package:flutter/material.dart';

class PageBody extends StatelessWidget {
  const PageBody({
    super.key,
    required this.title,
    required this.subtitle,
    required this.middleWidget,
    required this.onButtonTap,
  });

  final String title;
  final String subtitle;
  final Widget middleWidget;
  final VoidCallback onButtonTap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          Expanded(
            flex: 3,
            child:
                Align(alignment: Alignment.bottomCenter, child: middleWidget),
          ),
          Expanded(
            flex: 2,
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                const Spacer(),
                Text(
                  title,
                  style: context.textTheme.displayLarge,
                  textAlign: TextAlign.center,
                ),
                const SizedBox(height: 24),
                Text(
                  subtitle,
                  style: context.textTheme.titleSmall,
                  textAlign: TextAlign.center,
                ),
                const Spacer(),
                MainButton(
                  title: 'Confirm',
                  onTap: onButtonTap,
                ),
                const SizedBox(height: 18),
                Text(
                  'Terms of use | Privacy Policy',
                  style: context.textTheme.titleMedium,
                ),
                const Spacer(),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
