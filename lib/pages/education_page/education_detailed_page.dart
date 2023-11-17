import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/models/one_news_item.dart';
import 'package:fin_assistant/router.dart';
import 'package:fin_assistant/widgets_global/main_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class EducationDetailedPage extends StatelessWidget {
  const EducationDetailedPage({super.key, required this.course});
  final OneNewsItem course;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          SliverAppBar(
            automaticallyImplyLeading: false,
            elevation: 0,
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: InkWell(
                onTap: () => context.pop(),
                child: Row(
                  children: [
                    const Icon(
                      Icons.chevron_left,
                      color: Colors.black,
                    ),
                    const SizedBox(width: 16),
                    Text(
                      'Education',
                      style: context.textTheme.displayLarge,
                    ),
                  ],
                ),
              ),
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 32),
                  ClipRRect(
                    borderRadius: BorderRadius.circular(16),
                    child: Image.network(
                      course.imagePath,
                      fit: BoxFit.fitWidth,
                    ),
                  ),
                  const SizedBox(height: 24),
                  Text(
                    course.title,
                    style: context.textTheme.displayLarge,
                  ),
                  const SizedBox(height: 20),
                  Text(
                    course.subtitle,
                    style: context.textTheme.titleLarge,
                  ),
                  const SizedBox(height: 20),
                  MainButton(
                    width: MediaQuery.of(context).size.width * 0.7,
                    title: 'Continue',
                    onTap: () => context.push(Routes.victorine),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
