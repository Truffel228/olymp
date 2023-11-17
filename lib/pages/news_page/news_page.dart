import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/constants.dart';
import 'package:fin_assistant/pages/home_page/widgets/news_item_widget.dart';
import 'package:fin_assistant/pages/news_page/widgets/additional_new_card.dart';
import 'package:flutter/material.dart';
export 'one_news_item_page.dart';

class NewsPage extends StatelessWidget {
  const NewsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
          slivers: [
            SliverToBoxAdapter(
              child: Padding(
                padding: const EdgeInsets.only(
                  left: 16,
                  top: 16,
                ),
                child: Text(
                  'News',
                  style: context.textTheme.displayLarge,
                ),
              ),
            ),
            SliverToBoxAdapter(
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                child: AdditionalNewCard(newsItem: Constants.extraNew),
              ),
            ),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              sliver: SliverList.builder(
                itemCount: Constants.news.length,
                itemBuilder: (context, index) {
                  final newsItem = Constants.news[index];
                  return NewsItemWidget(newsItem: newsItem);
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
