import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class MedvendorSolution extends StatelessWidget {
  const MedvendorSolution({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 8),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'The Business Goal:',
                      style: AppTypography.s18w800
                          .copyWith(color: Appcolors.darkText),
                    ),
                  ),
                ),
                SizedBox(
                  width: isSmallScreen
                      ? MediaQuery.of(context).size.width * .4
                      : MediaQuery.of(context).size.width * .65,
                  child: Text(
                    'Develop an easy-to-use application with robust sharing capabilities.',
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 8),
                  child: SizedBox(
                    width: 200,
                    child: Text(
                      'The Solution:',
                      style: AppTypography.s18w800
                          .copyWith(color: Appcolors.darkText),
                    ),
                  ),
                ),
                SizedBox(
                  width: isSmallScreen
                      ? MediaQuery.of(context).size.width * .4
                      : MediaQuery.of(context).size.width * .65,
                  child: Text(
                    'Design intuitive components that leverage familiar icons and functionality, enabling profiles to showcase comprehensive facility details and easily shareable content.',
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
