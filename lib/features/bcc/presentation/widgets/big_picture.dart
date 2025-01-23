import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class BigPicture extends StatelessWidget {
  const BigPicture({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 96),
        child: Column(
          children: [
            Text(
              'Understanding the big picture',
              style: AppTypography.s36w300.copyWith(color: Appcolors.darkText),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 250,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 25,
                            height: 15,
                            color: Appcolors.bigcreek,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Expectations',
                          style: AppTypography.s18w800
                              .copyWith(color: Appcolors.darkText),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: isSmallScreen
                        ? MediaQuery.of(context).size.width * .4
                        : MediaQuery.of(context).size.width * .65,
                    child: Text(
                      'This is a nuanced process that has a lot of tedious steps where users will need to input certain government required codes and tasks that were completed by specified employees and the app needed to have a smooth experience.',
                      style: AppTypography.s18w300
                          .copyWith(color: Appcolors.darkText),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 250,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 25,
                            height: 15,
                            color: Appcolors.bigcreek,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Reality',
                          style: AppTypography.s18w800
                              .copyWith(color: Appcolors.darkText),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: isSmallScreen
                        ? MediaQuery.of(context).size.width * .4
                        : MediaQuery.of(context).size.width * .65,
                    child: Text(
                      'While minimizing steps to create a smoother experience, the real time saving step will be downloading data and having it available for the user while offline and leaving hidden checkpoints within the process to save progress.',
                      style: AppTypography.s18w300
                          .copyWith(color: Appcolors.darkText),
                    ),
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    width: 250,
                    padding: const EdgeInsets.symmetric(
                      horizontal: 16,
                    ),
                    child: Row(
                      children: [
                        ClipOval(
                          child: Container(
                            width: 25,
                            height: 15,
                            color: Appcolors.bigcreek,
                          ),
                        ),
                        SizedBox(
                          width: 8,
                        ),
                        Text(
                          'Solutions',
                          style: AppTypography.s18w800
                              .copyWith(color: Appcolors.darkText),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                    width: isSmallScreen
                        ? MediaQuery.of(context).size.width * .4
                        : MediaQuery.of(context).size.width * .65,
                    child: Text(
                      'In order to work effectively and not lose any work, there is a force download that requires users to download all data for a job site (resulting in 10-100mb of data cached) allowing the application to store progress on hours input and quickly displaying data that will be needed to complete the process.',
                      style: AppTypography.s18w300
                          .copyWith(color: Appcolors.darkText),
                    ),
                  )
                ],
              ),
            )
          ],
        ),
      );
    });
  }
}
