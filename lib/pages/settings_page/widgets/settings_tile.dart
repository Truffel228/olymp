import 'package:fin_assistant/app_theme.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SettingsTile extends StatelessWidget {
  const SettingsTile(
      {super.key, required this.iconPath, required this.title, this.onTap});
  final String iconPath;
  final String title;
  final VoidCallback? onTap;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Padding(
        padding: const EdgeInsets.only(left: 16, bottom: 16),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            SvgPicture.asset(iconPath),
            const SizedBox(width: 12),
            Text(
              title,
              style: const TextStyle(
                fontSize: 12,
                color: AppTheme.blackFontColor,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
