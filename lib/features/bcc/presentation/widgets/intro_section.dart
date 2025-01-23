import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class IntroSection extends StatelessWidget {
  const IntroSection({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: Appcolors.bigcreek,
          child: Column(
            children: [
              Center(
                child: Text(
                  'Big Creek Construction',
                  style:
                      AppTypography.s24w600.copyWith(color: Appcolors.darkText),
                ),
              ),
              Image.asset(
                Assets.images.bigcreekmockup.path,
                height: 450,
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          height: 40,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: Appcolors.bigcreekblue,
          child: Center(
            child: Text(
              'A mobile app that assists construction supervisors input hours while away from a PC or laptop.',
              style: AppTypography.s14w400.copyWith(color: Appcolors.offWhite),
            ),
          ),
        ),
        Container(
          padding: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
          width: MediaQuery.of(context).size.width * .85,
          child: Center(
            child: Text(
              'Currently supervisors must go in weekly online to input hours for their employees. In this process they need to first create the job site (location) by adding tasks that were completed, add any equipment, and then open the timesheet page where they can utilize the job site created to assign hours to employees. The current process’ design is made to minimize mistakes so that the accounting department will be able to finalize the process in a timely manner.',
              style: AppTypography.s14w400.copyWith(color: Appcolors.darkText),
            ),
          ),
        ),
        SizedBox(
          height: 350,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Role: ',
                    style: AppTypography.s18w800
                        .copyWith(color: Appcolors.darkText),
                  ),
                  Text(
                    'Sole UX/UI Designer',
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Industry: ',
                    style: AppTypography.s18w800
                        .copyWith(color: Appcolors.darkText),
                  ),
                  Text(
                    'Construction',
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Tools: ',
                    style: AppTypography.s18w800
                        .copyWith(color: Appcolors.darkText),
                  ),
                  Text(
                    'Figma, Flutter, VS Code, Android Studio',
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  )
                ],
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Duration: ',
                    style: AppTypography.s18w800
                        .copyWith(color: Appcolors.darkText),
                  ),
                  Text(
                    'Q4 2024',
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  )
                ],
              ),
            ],
          ),
        ),
      ],
    );
  }
}
