import 'package:fin_assistant/pages/start_page/widgets/widgets.dart';
import 'package:fin_assistant/router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class StartPage extends StatefulWidget {
  const StartPage({super.key});

  @override
  State<StartPage> createState() => _StartPageState();
}

class _StartPageState extends State<StartPage> {
  var _currentPage = 0;
  final PageController _controller = PageController();

  void _onNextTap() => _controller.nextPage(
        duration: const Duration(milliseconds: 400),
        curve: Curves.decelerate,
      );

  void _onLastPageTap() => context.goNamed(Routes.home);

  @override
  void initState() {
    super.initState();
    _controller.addListener(() => setState(() {
          _currentPage = _controller.page?.round() ?? 0;
        }));
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          PageView(
            controller: _controller,
            children: [
              PageBody(
                middleWidget: Image.asset(
                  'assets/images/start_page/first_page_image.png',
                  fit: BoxFit.fitWidth,
                ),
                title: 'Basic information about your bank account',
                subtitle: 'Including balance sheet, expenses, major news',
                onButtonTap: _onNextTap,
              ),
              PageBody(
                middleWidget: const SecondPageCard(),
                title: 'We value your feedback',
                subtitle:
                    'Every day we are getting better due to your ratings and reviews — that helps us protect your accounts.',
                onButtonTap: _onNextTap,
              ),
              PageBody(
                middleWidget: Image.asset(
                  'assets/images/start_page/third_page_image.png',
                  fit: BoxFit.fitWidth,
                ),
                title: 'Add your income',
                subtitle:
                    'Add your regular and irregular income sources. Click the "Add Income" button and enter information about the source of income',
                onButtonTap: _onNextTap,
              ),
              PageBody(
                middleWidget: Image.asset(
                  'assets/images/start_page/fourth_page_image.png',
                  fit: BoxFit.fitWidth,
                ),
                title: 'Keep track of your income',
                subtitle:
                    'Here, you can manage and track your primary sources of income',
                onButtonTap: _onLastPageTap,
              ),
            ],
          ),
          Align(
            alignment: const Alignment(0, -0.75),
            child: PageIndicator(step: _currentPage),
          ),
        ],
      ),
    );
  }
}
