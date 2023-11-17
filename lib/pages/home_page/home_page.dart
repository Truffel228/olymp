import 'dart:async';
import 'dart:convert';

import 'package:fin_assistant/app_theme.dart';
import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/constants.dart';
import 'package:fin_assistant/models/income.dart';
import 'package:fin_assistant/pages/home_page/widgets/news_item_widget.dart';
import 'package:fin_assistant/router.dart';
import 'package:fin_assistant/widgets_global/main_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:go_router/go_router.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  late final SharedPreferences _sharedPrefs;
  late final StreamController<bool> _updateStream;
  var balance = 0;

  @override
  void initState() {
    super.initState();
    _sharedPrefs = context.read<SharedPreferences>();
    _updateStream = context.read<StreamController<bool>>();
    _updateStream.stream.listen(_update);
    _update(null);
  }

  void _update(_) {
    var b = 0;
    final cachedIncomes = _sharedPrefs.getString('incomes') ?? '';
    if (cachedIncomes.isEmpty) {
      return;
    }

    final decode = jsonDecode(cachedIncomes) as List<dynamic>;

    final incomes = decode.map((e) => Income.fromJson(e)).toList();

    for (var income in incomes) {
      b += income.amount;
    }
    setState(() {
      balance = b;
    });
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: CustomScrollView(
        physics: const BouncingScrollPhysics(),
        slivers: [
          SliverAppBar(
            elevation: 0,
            backgroundColor: Colors.white,
            title: Padding(
              padding: const EdgeInsets.only(bottom: 16),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(
                    'Home',
                    style: context.textTheme.displayLarge,
                  ),
                  InkWell(
                    onTap: () => context.push(Routes.params),
                    child: SvgPicture.asset('images/settings.svg'),
                  ),
                ],
              ),
            ),
            pinned: true,
          ),
          SliverToBoxAdapter(
            child: Container(
              margin: const EdgeInsets.only(
                left: 16,
                right: 16,
                top: 8,
                bottom: 24,
              ),
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(20),
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  SizedBox(
                    height: 60,
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'images/card_bg.png',
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Card',
                            style: context.textTheme.titleMedium,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Card balance',
                              style: context.textTheme.titleLarge,
                            ),
                            Text(
                              '\$${balance.toStringAsFixed(2)}',
                              style: context.textTheme.displayLarge,
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      'Education',
                      style: context.textTheme.displaySmall,
                    ),
                  ),
                  const SizedBox(height: 20),
                  SizedBox(
                    height: 80,
                    child: Row(
                      children: [
                        Container(
                          width: 120,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(12),
                            image: const DecorationImage(
                              fit: BoxFit.cover,
                              image: AssetImage(
                                'images/educ.png',
                              ),
                            ),
                          ),
                          padding: const EdgeInsets.all(8),
                          alignment: Alignment.bottomRight,
                          child: Text(
                            'Card',
                            style: context.textTheme.titleMedium,
                          ),
                        ),
                        const SizedBox(width: 16),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                          children: [
                            Text(
                              'Education tests',
                              style: context.textTheme.displayLarge,
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text('Training completed:',
                                    style: context.textTheme.titleLarge),
                                const SizedBox(height: 2),
                                const Text(
                                  '26% out of 100%',
                                  style: TextStyle(
                                    color: Color(0xFF007AFF),
                                    fontWeight: FontWeight.w700,
                                    fontSize: 10,
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(height: 24),
                  MainButton(
                    title: 'Continue training',
                    onTap: () => context.go(Routes.education),
                  ),
                  const SizedBox(height: 32),
                ],
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
              child: Row(
                children: [
                  const Expanded(
                    child: Text(
                      'News',
                      style: TextStyle(
                        color: AppTheme.blackFontColor,
                        fontWeight: FontWeight.w700,
                        fontSize: 11,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () => context.go(Routes.news),
                    child: Text(
                      'View all',
                      style: TextStyle(
                        color: context.theme.primaryColor,
                        fontSize: 10,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
          SliverPadding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            sliver: SliverList.builder(
              itemCount: 2,
              itemBuilder: (context, index) {
                final newsItem = Constants.news[index];
                return NewsItemWidget(newsItem: newsItem);
              },
            ),
          ),
        ],
      ),
    );
  }
}
