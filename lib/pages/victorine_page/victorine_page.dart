import 'package:fin_assistant/app_theme.dart';
import 'package:fin_assistant/build_context_ext.dart';
import 'package:fin_assistant/constants.dart';
import 'package:fin_assistant/router.dart';
import 'package:fin_assistant/widgets_global/main_button.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class VictorinePage extends StatefulWidget {
  const VictorinePage({super.key});

  @override
  State<VictorinePage> createState() => _VictorinePageState();
}

class _VictorinePageState extends State<VictorinePage> {
  int _questionIndex = 0;
  bool pass = false;

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
                      'Test',
                      style: context.textTheme.displayLarge,
                    ),
                  ],
                ),
              ),
            ),
            pinned: true,
          ),
          pass
              ? SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      children: [
                        const Spacer(),
                        Image.asset(
                          'images/hooray.png',
                          width: MediaQuery.of(context).size.width * 0.4,
                          height: MediaQuery.of(context).size.width * 0.4,
                        ),
                        const Spacer(flex: 2),
                        Text(
                          'A perfect score ',
                          style: context.textTheme.displaySmall,
                        ),
                        const Spacer(),
                        Text(
                          'We are proud of you! You have shown a great result. Keep up the good work!',
                          style: context.textTheme.titleLarge,
                          textAlign: TextAlign.center,
                        ),
                        const Spacer(),
                        Container(
                          padding: const EdgeInsets.all(12),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(199),
                            color: const Color(0xFF06BCFE).withOpacity(0.1),
                          ),
                          child: Text(
                            '10/10 correct answers',
                            style: context.textTheme.displaySmall,
                          ),
                        ),
                        const Spacer(flex: 2),
                        MainButton(
                          title: 'Continue',
                          onTap: () => context.go(Routes.education),
                        ),
                        const Spacer(),
                      ],
                    ),
                  ),
                )
              : SliverFillRemaining(
                  hasScrollBody: false,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 16),
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          'Question ${_questionIndex + 1} of 10',
                          style: context.textTheme.titleLarge,
                        ),
                        Text(
                          Constants.questions[_questionIndex].quesiton,
                          style: context.textTheme.displaySmall,
                        ),
                        Column(
                          children: List.generate(
                            Constants.questions[_questionIndex].answers.length,
                            (index) {
                              final answer = Constants
                                  .questions[_questionIndex].answers[index];

                              return GestureDetector(
                                onTap: () {
                                  if (index ==
                                      Constants.questions[_questionIndex]
                                          .rightAnwerIndex) {
                                    if (_questionIndex == 9) {
                                      setState(() {});
                                      pass = true;
                                      return;
                                    }
                                    setState(() {
                                      _questionIndex++;
                                    });
                                  } else {
                                    setState(() {
                                      _questionIndex = 0;
                                    });
                                  }
                                },
                                child: Container(
                                  alignment: Alignment.center,
                                  margin: const EdgeInsets.only(bottom: 8),
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(12),
                                    border: Border.all(
                                        color: AppTheme.greyFontColor2),
                                  ),
                                  padding: const EdgeInsets.all(12),
                                  child: Text(
                                    answer,
                                    style: context.textTheme.displaySmall,
                                  ),
                                ),
                              );
                            },
                          ),
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
