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
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 32, right: 8),
                  child: Text(
                    'The Business Goal:',
                    style: AppTypography.s18w800
                        .copyWith(color: Appcolors.darkText),
                  ),
                ),
                SizedBox(
                  width: isSmallScreen
                      ? MediaQuery.of(context).size.width * .4
                      : MediaQuery.of(context).size.width * .65,
                  child: Text(
                    'Effectively condense sections in the employee site into one so inputting hours is in a simple format, errors are mitigated, and its available on a mobile platform.',
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
                  child: Text(
                    'The Solution:',
                    style: AppTypography.s18w800
                        .copyWith(color: Appcolors.darkText),
                  ),
                ),
                SizedBox(
                  width: isSmallScreen
                      ? MediaQuery.of(context).size.width * .4
                      : MediaQuery.of(context).size.width * .65,
                  child: Text(
                    'Show users locations (job sites) with their employees below and direct them with a color indicator and informational tool tips utilizing flutters built in features.',
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                ),
              ],
            ),
          ),
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
                          width: 120,
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
                                padding: const EdgeInsets.all(16),
                                child: Text(
                                  'Job sites where users can view details and add tasks. This structure maintains the feel of the website by keeping relevant details at the user\'s attention.',
                                  style: AppTypography.s18w800
                                      .copyWith(color: Appcolors.darkText),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .8,
                                child: Text(
                                  '*users are guided with the yellow buttons, that indicate a required step or predicted next step.',
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
                          Column(
                            children: [
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .55,
                                child: Text(
                                  'Job sites where users can view details and add tasks. This structure maintains the feel of the website by keeping relevant details at the user\'s attention.',
                                  style: AppTypography.s18w800
                                      .copyWith(color: Appcolors.darkText),
                                ),
                              ),
                              SizedBox(
                                width: MediaQuery.of(context).size.width * .55,
                                child: Text(
                                  '*users are guided with the yellow buttons, that indicate a required step or predicted next step.',
                                  style: AppTypography.s18w300
                                      .copyWith(color: Appcolors.darkText),
                                ),
                              ),
                            ],
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
                      Text(
                        'Employee Cards',
                        style: AppTypography.s36w300
                            .copyWith(color: Appcolors.bigcreekblue),
                      ),
                      ClipPath(
                        child: Container(
                          color: Appcolors.bigcreekblue,
                          width: 120,
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
                          Padding(
                            padding: const EdgeInsets.all(16),
                            child: Text(
                              'Employee cards below make it accessible for the user to expand each tile similar to website features and input hours for each employee on the selected date.',
                              style: AppTypography.s18w800
                                  .copyWith(color: Appcolors.darkText),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          SizedBox(
                            width: 24,
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .55,
                            height: 120,
                            child: Text(
                              'Employee cards below make it accessible for the user to expand each tile similar to website features and input hours for each employee on the selected date.',
                              style: AppTypography.s18w800
                                  .copyWith(color: Appcolors.darkText),
                            ),
                          ),
                          SizedBox(
                            width: 8,
                          ),
                          Container(
                            clipBehavior: Clip.hardEdge,
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: Image.asset(
                              Assets.images.bigcreek.employeeCard.path,
                              height: 400,
                            ),
                          ),
                          SizedBox(
                            width: 8,
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
