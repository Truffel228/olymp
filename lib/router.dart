import 'package:fin_assistant/models/one_news_item.dart';
import 'package:fin_assistant/pages/education_page/education_detailed_page.dart';
import 'package:fin_assistant/pages/education_page/education_page.dart';
import 'package:fin_assistant/pages/pages.dart';
import 'package:fin_assistant/pages/victorine_page/victorine_page.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

final _parentNavigatorKey = GlobalKey<NavigatorState>();

class Routes {
  static const String inoal = '/inoal';

  static const String home = '/home';

  static const String education = '/education';
  static const String educationDetailed = '/educationDetailed';
  static const String victorine = '/victorine';

  static const String income = '/income';
  static const String addIncome = '/addIncome';

  static const String news = '/news';
  static const String newsItem = '/newsItem';

  static const String params = '/params';
  static const String netted = '/netted';

  static GoRouter get router => GoRouter(
        navigatorKey: _parentNavigatorKey,
        initialLocation: inoal,
        routes: [
          GoRoute(
            path: inoal,
            pageBuilder: (context, state) => const MaterialPage(
              child: InitPage(),
            ),
          ),
          StatefulShellRoute.indexedStack(
            builder: (context, state, navigationShell) =>
                MainPage(child: navigationShell),
            branches: [
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    name: home,
                    path: home,
                    pageBuilder: (context, state) => const MaterialPage(
                      child: HomePage(),
                    ),
                  ),
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    name: education,
                    path: education,
                    pageBuilder: (context, state) => const MaterialPage(
                      child: EducationPage(),
                    ),
                  ),
                  GoRoute(
                    name: educationDetailed,
                    path: educationDetailed,
                    pageBuilder: (context, state) => MaterialPage(
                      child: EducationDetailedPage(
                          course: state.extra as OneNewsItem),
                    ),
                  ),
                  GoRoute(
                    name: victorine,
                    path: victorine,
                    pageBuilder: (context, state) => const MaterialPage(
                      child: VictorinePage(),
                    ),
                  )
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    name: income,
                    path: income,
                    pageBuilder: (context, state) => const MaterialPage(
                      child: IncomePage(),
                    ),
                  ),
                  GoRoute(
                    name: addIncome,
                    path: addIncome,
                    pageBuilder: (context, state) => const MaterialPage(
                      child: AddIncomePage(),
                    ),
                  )
                ],
              ),
              StatefulShellBranch(
                routes: [
                  GoRoute(
                    name: news,
                    path: news,
                    pageBuilder: (context, state) => const MaterialPage(
                      child: NewsPage(),
                    ),
                  ),
                ],
              ),
            ],
          ),
          GoRoute(
            parentNavigatorKey: _parentNavigatorKey,
            name: newsItem,
            path: newsItem,
            pageBuilder: (context, state) => MaterialPage(
              child: OneNewsItemPage(
                newsItem: state.extra as OneNewsItem,
              ),
            ),
          ),
          GoRoute(
            name: params,
            path: params,
            pageBuilder: (context, state) => const MaterialPage(
              child: ParamsPage(),
            ),
          ),
          GoRoute(
            name: netted,
            path: netted,
            pageBuilder: (context, state) => MaterialPage(
              child: NettedScreen(
                s: state.extra as String,
              ),
            ),
          ),
        ],
      );
}
