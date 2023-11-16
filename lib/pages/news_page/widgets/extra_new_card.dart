import 'package:fin_assistant/app_theme.dart';
import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/models/news_item.dart';
import 'package:fin_assistant/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ExtraNewCard extends StatelessWidget {
  const ExtraNewCard({super.key, required this.newsItem});
  final NewsItem newsItem;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => context.pushNamed(Routes.newsItem, extra: newsItem),
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16),
          border: Border.all(color: AppTheme.greyFontColor),
        ),
        padding: const EdgeInsets.all(10),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            ClipRRect(
              borderRadius: BorderRadius.circular(16),
              child: Image.network(
                newsItem.imagePath,
                fit: BoxFit.fitWidth,
              ),
            ),
            const SizedBox(height: 12),
            Text(
              newsItem.title,
              style: context.textTheme.displaySmall,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
            ),
            const SizedBox(height: 10),
            Text(
              newsItem.subtitle,
              style: context.textTheme.titleMedium,
              maxLines: 2,
              overflow: TextOverflow.ellipsis,
            )
          ],
        ),
      ),
    );
  }
}
