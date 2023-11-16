import 'package:fin_assistant/app_theme.dart';
import 'package:fin_assistant/build_context_ext.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SecondPageCard extends StatelessWidget {
  const SecondPageCard({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20),
        border: Border.all(color: AppTheme.greyFontColor),
        boxShadow: const [
          BoxShadow(
            offset: Offset(0, 4),
            color: AppTheme.greyFontColor,
            blurRadius: 20,
          ),
        ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  const SizedBox(height: 40),
                  Text(
                    'This thing works!! I like it',
                    style: context.textTheme.displaySmall,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 12,
                      ),
                      const SizedBox(width: 4),
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 12,
                      ),
                      const SizedBox(width: 4),
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 12,
                      ),
                      const SizedBox(width: 4),
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 12,
                      ),
                      const SizedBox(width: 4),
                      SvgPicture.asset(
                        'assets/icons/star.svg',
                        height: 12,
                      ),
                    ],
                  ),
                  const SizedBox(height: 24),
                  Text(
                    'Secure information, quick response and many answers for questions presented! Best way to update your refund status. SIMPLE AND FAST!! Nice app easy to use I liked it and very quick and self explanatory. Recommended!',
                    style: context.textTheme.labelMedium,
                    textAlign: TextAlign.center,
                  ),
                  const SizedBox(height: 12),
                ],
              ),
              Align(
                alignment: Alignment.topCenter,
                child: Transform.translate(
                  offset: Offset(0, -25),
                  child: Container(
                    width: 50,
                    height: 50,
                    decoration: BoxDecoration(
                      boxShadow: [
                        BoxShadow(
                          color: AppTheme.greyFontColor,
                          offset: Offset(0, 3),
                          blurRadius: 10,
                        ),
                      ],
                      color: Colors.green,
                      shape: BoxShape.circle,
                      image: DecorationImage(
                        image: AssetImage(
                            'assets/images/start_page/second_page_image.png'),
                      ),
                    ),
                  ),
                ),
              )
            ],
          ),
        ],
      ),
    );
  }
}
