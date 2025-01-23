import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class MedvendorIntro extends StatelessWidget {
  const MedvendorIntro({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return Column(
        children: [
          Container(
            width: MediaQuery.of(context).size.width,
            color: Appcolors.medvendorprimary,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Image.asset(
                    Assets.images.medvendor.homescreen.path,
                    height: isSmallScreen ? 200 : 400,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Image.asset(
                    Assets.images.medvendor.login.path,
                    height: isSmallScreen ? 225 : 400,
                  ),
                ),
                Padding(
                  padding:
                      const EdgeInsets.symmetric(horizontal: 16, vertical: 32),
                  child: Image.asset(
                    Assets.images.medvendor.profile.path,
                    height: isSmallScreen ? 200 : 400,
                  ),
                ),
              ],
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 100,
            color: Appcolors.medvendorprimary,
            child: Center(
              child: Text(
                'MedVendor',
                style:
                    AppTypography.s24w600.copyWith(color: Appcolors.offWhite),
              ),
            ),
          ),
          Container(
            width: MediaQuery.of(context).size.width,
            height: 40,
            padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
            color: Appcolors.medvendorprimary,
            child: Center(
              child: Text(
                'A mobile app connecting patients with medical facilities within their network.',
                style:
                    AppTypography.s14w400.copyWith(color: Appcolors.offWhite),
              ),
            ),
          ),
          Container(
            padding: EdgeInsets.symmetric(vertical: 48, horizontal: 16),
            width: MediaQuery.of(context).size.width * .85,
            child: Center(
              child: Text(
                'A growing startup for medical facilities by streamlining operations and fostering connections with physicians in their area. This platform makes it easier for patients to find the care they need. Free to download, physicians can create an account to input patient needs—such as required medical attention, insurance details, and zip code—and instantly access a tailored list of medical facilities that match those criteria.',
                style:
                    AppTypography.s14w400.copyWith(color: Appcolors.darkText),
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
                      'Medical',
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
                      'Q3 2024',
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
    });
  }
}
