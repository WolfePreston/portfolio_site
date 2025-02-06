import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class UsersQuote extends StatelessWidget {
  final String quote;
  final String person;
  final String image;
  final Color background;
  final Color accentColor;
  final Color textColor;
  const UsersQuote({
    super.key,
    required this.accentColor,
    required this.background,
    required this.image,
    required this.person,
    required this.quote,
    required this.textColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipPath(
                child: Container(
                  color: accentColor,
                  width: 50,
                  height: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 8),
                child: Text(
                  'Users',
                  style:
                      AppTypography.s36w300.copyWith(color: Appcolors.darkText),
                ),
              ),
            ],
          ),
          Column(
            children: [
              Container(
                padding: EdgeInsets.only(right: 8, left: 8, top: 36),
                color: background,
                child: isSmallScreen
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 16),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * .65,
                              child: Center(
                                child: Text(
                                  quote,
                                  style: AppTypography.s18w300
                                      .copyWith(color: textColor),
                                ),
                              ),
                            ),
                          ),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                            children: [
                              Image.asset(
                                image,
                                height: 100,
                              ),
                              Expanded(
                                child: Text(
                                  person,
                                  style: AppTypography.s18w300
                                      .copyWith(color: textColor),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.end,
                        children: [
                          Image.asset(
                            image,
                            height: 200,
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(
                                vertical: 64, horizontal: 16),
                            child: SizedBox(
                              width: MediaQuery.of(context).size.width * .3,
                              child: Center(
                                child: Text(
                                  quote,
                                  style: AppTypography.s18w300
                                      .copyWith(color: textColor),
                                ),
                              ),
                            ),
                          ),
                          Padding(
                            padding: const EdgeInsets.only(bottom: 8),
                            child: Text(
                              person,
                              style: AppTypography.s18w300
                                  .copyWith(color: textColor),
                            ),
                          ),
                        ],
                      ),
              ),
            ],
          ),
        ],
      );
    });
  }
}
