import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class ClosingStatement extends StatelessWidget {
  final String title;
  final String title1;
  final String description1;
  final String title2;
  final String description2;
  final String title3;
  final String description3;
  const ClosingStatement({
    super.key,
    required this.description1,
    required this.description2,
    required this.description3,
    required this.title,
    required this.title1,
    required this.title2,
    required this.title3,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return Padding(
        padding: const EdgeInsets.symmetric(vertical: 96),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 900),
          child: Column(
            children: [
              Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                child: Text(
                  title,
                  style:
                      AppTypography.s36w300.copyWith(color: Appcolors.darkText),
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: isSmallScreen
                    ? Column(
                        children: [
                          Container(
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
                                Flexible(
                                  child: Text(
                                    title1,
                                    style: AppTypography.s18w800
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            description1,
                            style: AppTypography.s18w300
                                .copyWith(color: Appcolors.darkText),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
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
                                Flexible(
                                  child: Text(
                                    title1,
                                    style: AppTypography.s18w800
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Text(
                              description1,
                              style: AppTypography.s18w300
                                  .copyWith(color: Appcolors.darkText),
                            ),
                          ),
                        ],
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: isSmallScreen
                    ? Column(
                        children: [
                          Container(
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
                                Flexible(
                                  child: Text(
                                    title2,
                                    style: AppTypography.s18w800
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            description2,
                            style: AppTypography.s18w300
                                .copyWith(color: Appcolors.darkText),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
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
                                Flexible(
                                  child: Text(
                                    title2,
                                    style: AppTypography.s18w800
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Text(
                              description2,
                              style: AppTypography.s18w300
                                  .copyWith(color: Appcolors.darkText),
                            ),
                          )
                        ],
                      ),
              ),
              Padding(
                padding: const EdgeInsets.all(32),
                child: isSmallScreen
                    ? Column(
                        children: [
                          Container(
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
                                Flexible(
                                  child: Text(
                                    title3,
                                    style: AppTypography.s18w800
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Text(
                            description3,
                            style: AppTypography.s18w300
                                .copyWith(color: Appcolors.darkText),
                          )
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            width: 200,
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
                                Flexible(
                                  child: Text(
                                    title3,
                                    style: AppTypography.s18w800
                                        .copyWith(color: Appcolors.darkText),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Flexible(
                            child: Text(
                              description3,
                              style: AppTypography.s18w300
                                  .copyWith(color: Appcolors.darkText),
                            ),
                          )
                        ],
                      ),
              )
            ],
          ),
        ),
      );
    });
  }
}
