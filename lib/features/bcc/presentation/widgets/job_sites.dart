import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class JobSites extends StatelessWidget {
  const JobSites({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Appcolors.lightGrey,
            child: Column(
              children: [
                SizedBox(
                  height: 36,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 36),
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      ClipPath(
                        child: Container(
                          color: Appcolors.bigcreekblue,
                          width: 120,
                          height: 25,
                        ),
                      ),
                      Text(
                        'Job Sites',
                        style: AppTypography.s36w300
                            .copyWith(color: Appcolors.bigcreekblue),
                      ),
                      ClipPath(
                        child: Container(
                          color: Colors.transparent,
                          width: isSmallScreen ? 25 : 120,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                isSmallScreen
                    ? Column(
                        children: [
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              Assets.images.bigcreek.jobSiteDetails.path,
                              height: 400,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 16, vertical: 8),
                                child: Text(
                                  'Users can select a Job Site then view details and add tasks. This structure maintains the feel of the website by keeping relevant details at the user\'s attention.',
                                  style: AppTypography.s18w800
                                      .copyWith(color: Appcolors.darkText),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Text(
                                  '*users are guided with the yellow buttons, that indicate a required step or predicted next step',
                                  style: AppTypography.s18w300
                                      .copyWith(color: Appcolors.darkText),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              Assets.images.bigcreek.jobSiteDetails.path,
                              height: 400,
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(maxWidth: 500),
                            child: Column(
                              children: [
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Text(
                                    'Job sites where users can view details and add tasks. This structure maintains the feel of the website by keeping relevant details at the user\'s attention.',
                                    style: AppTypography.s18w800
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                                Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Text(
                                    '*users are guided with the yellow buttons, that indicate a required step or predicted next step',
                                    style: AppTypography.s18w300
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: 24,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(vertical: 36),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      SizedBox(
                        width: isSmallScreen ? 60 : 120,
                      ),
                      Flexible(
                        child: Text(
                          'Employee Cards',
                          style: AppTypography.s36w300
                              .copyWith(color: Appcolors.bigcreekblue),
                        ),
                      ),
                      ClipPath(
                        child: Container(
                          color: Appcolors.bigcreekblue,
                          width: 75,
                          height: 25,
                        ),
                      ),
                    ],
                  ),
                ),
                isSmallScreen
                    ? Column(
                        children: [
                          SizedBox(
                            width: 24,
                          ),
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Appcolors.darkText,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                Assets.images.bigcreek.employeeCard.path,
                                height: 400,
                              ),
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  'Employee cards are for the user to expand and input hours for each employee on the selected date. Adding Tasks or Equipment is a guided step after a start and end time has been established.',
                                  style: AppTypography.s18w800
                                      .copyWith(color: Appcolors.darkText),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    vertical: 8, horizontal: 16),
                                child: Text(
                                  '*located below Job Sites I combined the pages together in a compact format to create an tighter flow between the two sections',
                                  style: AppTypography.s18w300
                                      .copyWith(color: Appcolors.darkText),
                                ),
                              ),
                            ],
                          ),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Column(
                            children: [
                              ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 500),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Text(
                                    'Employee cards are for the user to expand and input hours for each employee on the selected date. Adding Tasks or Equipment is a guided step after a start and end time has been established.',
                                    style: AppTypography.s18w800
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                              ),
                              ConstrainedBox(
                                constraints: BoxConstraints(maxWidth: 500),
                                child: Padding(
                                  padding: const EdgeInsets.symmetric(
                                      vertical: 8, horizontal: 16),
                                  child: Text(
                                    '*located below Job Sites I combined the pages together in a compact format to create an tighter flow between the two sections',
                                    style: AppTypography.s18w300
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              color: Appcolors.darkText,
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Image.asset(
                                Assets.images.bigcreek.employeeCard.path,
                                height: 400,
                              ),
                            ),
                          ),
                        ],
                      ),
                SizedBox(
                  height: 32,
                )
              ],
            ),
          ),
        ],
      );
    });
  }
}
