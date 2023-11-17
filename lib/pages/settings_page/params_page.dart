import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/constants.dart';
import 'package:fin_assistant/pages/settings_page/widgets/settings_tile.dart';
import 'package:fin_assistant/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:in_app_review/in_app_review.dart';
export 'net_screen.dart';

class ParamsPage extends StatelessWidget {
  const ParamsPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          physics: const BouncingScrollPhysics(),
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
            SliverList(
              delegate: SliverChildListDelegate(
                [
                  SettingsTile(
                    iconPath: 'images/check_square.svg',
                    title: 'Privacy Policy',
                    onTap: () => context.pushNamed(Routes.netted,
                        extra: Constants.privPolU),
                  ),
                  SettingsTile(
                    iconPath: 'images/chat.svg',
                    title: 'Terms & Conditions',
                    onTap: () => context.pushNamed(Routes.netted,
                        extra: Constants.termsOfUseU),
                  ),
                  SettingsTile(
                    iconPath: 'images/chat.svg',
                    title: 'Support',
                    onTap: () => context.pushNamed(Routes.netted,
                        extra: 'https://forms.gle/s7gTCtaZtk4fSeyk9'),
                  ),
                  SettingsTile(
                    iconPath: 'images/star.svg',
                    title: 'Rate app',
                    //TODO: Add your app's appStoreId
                    onTap: () => InAppReview.instance
                        .openStoreListing(appStoreId: '6472455376'),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
