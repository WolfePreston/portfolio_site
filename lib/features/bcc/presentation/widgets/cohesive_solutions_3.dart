// ignore_for_file: deprecated_member_use

import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class CohesiveSolutions3 extends StatelessWidget {
  const CohesiveSolutions3({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isSmallScreen = constraints.maxWidth < 870;

        return Padding(
          padding: const EdgeInsets.all(16),
          child: Container(
            padding: EdgeInsets.all(64),
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Appcolors.bigcreekblue,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomLeft,
                  child: FittedBox(
                    fit: BoxFit.contain,
                    child: Text(
                      '3',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .2,
                        color: Colors.white.withOpacity(0.1),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                isSmallScreen
                    ? Column(
                        children: [
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              SizedBox(
                                width: isSmallScreen ? 100 : 300,
                                child: Text(
                                  'Cohesive Solutions',
                                  style: AppTypography.s18w800
                                      .copyWith(color: Appcolors.offWhite),
                                ),
                              ),
                              SizedBox(width: 16),
                              Container(
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                  color: Appcolors.darkText,
                                ),
                                padding: EdgeInsets.all(4),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxHeight: 400.0,
                                  ),
                                  child: Container(
                                    height:
                                        MediaQuery.of(context).size.width * 0.5,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(Assets.images.bigcreek
                                        .jobSitesForceDownload.path),
                                  ),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'Require users to download job sites before continuing with the process to limit any issues that may appear.',
                              style: AppTypography.s18w300
                                  .copyWith(color: Appcolors.offWhite),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            'Cohesive Solutions',
                            style: AppTypography.s18w800
                                .copyWith(color: Appcolors.offWhite),
                          ),
                          SizedBox(width: 16),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .25,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'Require users to download job sites before continuing with the process to limit any issues that may appear.',
                                style: AppTypography.s18w300
                                    .copyWith(color: Appcolors.offWhite),
                              ),
                            ),
                          ),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(10),
                              color: Appcolors.darkText,
                            ),
                            padding: EdgeInsets.all(4),
                            child: ConstrainedBox(
                              constraints: BoxConstraints(
                                maxHeight: 400.0,
                              ),
                              child: Container(
                                height: MediaQuery.of(context).size.width * 0.5,
                                clipBehavior: Clip.hardEdge,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                child: Image.asset(Assets.images.bigcreek
                                    .jobSitesForceDownload.path),
                              ),
                            ),
                          ),
                        ],
                      ),
              ],
            ),
          ),
        );
      },
    );
  }
}
