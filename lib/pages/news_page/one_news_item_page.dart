import 'package:fin_assistant/app_theme.dart';
import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/models/one_news_item.dart';
import 'package:flutter/material.dart';

class OneNewsItemPage extends StatelessWidget {
  const OneNewsItemPage({
    super.key,
    required this.newsItem,
  });

  final OneNewsItem newsItem;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                  bottom: 36,
                ),
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: InkWell(
                    radius: 16,
                    onTap: () => Navigator.of(context).pop(null),
                    child: Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const Icon(
                          Icons.chevron_left,
                          color: AppTheme.blackFontColor,
                          size: 24,
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Text(
                          'All news',
                          style: context.textTheme.displaySmall,
                        )
                      ],
                    ),
                  ),
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 16),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      newsItem.title,
                      style: context.textTheme.displayLarge,
                    ),
                    const SizedBox(height: 24),
                    ClipRRect(
                      borderRadius: BorderRadius.circular(16),
                      child: Image.network(
                        newsItem.imagePath,
                        fit: BoxFit.fitWidth,
                      ),
                    ),
                    const SizedBox(height: 32),
                    Text(
                      newsItem.subtitle,
                      style: context.textTheme.titleLarge,
                    ),
                    const SizedBox(height: 24),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
