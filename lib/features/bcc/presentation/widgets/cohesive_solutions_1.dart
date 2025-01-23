import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class CohesiveSolutions1 extends StatelessWidget {
  const CohesiveSolutions1({super.key});

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
                      '1',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .2,
                        // ignore: deprecated_member_use
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
                              ConstrainedBox(
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
                                  child: Image.asset(
                                      Assets.images.bigcreek.offlineData.path),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: Text(
                              'When first logging in, users are prompted with what downloaded data will look like and how it will function.',
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
                                'When first logging in, users are prompted with what downloaded data will look like and how it will function.',
                                style: AppTypography.s18w300
                                    .copyWith(color: Appcolors.offWhite),
                              ),
                            ),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxHeight: 400.0,
                            ),
                            child: Container(
                              height: MediaQuery.of(context).size.width * 0.5,
                              clipBehavior: Clip.hardEdge,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                              ),
                              child: Image.asset(
                                  Assets.images.bigcreek.offlineData.path),
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
