import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/constants.dart';
import 'package:fin_assistant/pages/settings_page/widgets/settings_tile.dart';
import 'package:fin_assistant/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:in_app_review/in_app_review.dart';
export 'net_screen.dart';

class SettingsPage extends StatelessWidget {
  const SettingsPage({super.key});

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
                    title: 'Privacy policy',
                    onTap: () => context.pushNamed(Routes.net,
                        extra: Constants.privacyPolicyUrl),
                  ),
                  SettingsTile(
                    iconPath: 'images/chat.svg',
                    title: 'Terms of use',
                    onTap: () => context.pushNamed(Routes.net,
                        extra: Constants.termsOfUseUrl),
                  ),
                  SettingsTile(
                    iconPath: 'images/star.svg',
                    title: 'Rate app',
                    //TODO: Add your app's appStoreId
                    onTap: () => InAppReview.instance
                        .openStoreListing(appStoreId: '6468774780'),
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
