import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';
import 'package:portfolio_flutter/core/footer.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class ForFunPage extends StatelessWidget {
  const ForFunPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;

      return SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'MedVendor',
                style:
                    AppTypography.s24w600.copyWith(color: Appcolors.darkText),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'Loading and intro animations',
                style:
                    AppTypography.s14w400.copyWith(color: Appcolors.darkText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Appcolors.medvendorprimary,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Lottie.asset(
                      Assets.images.medvendorNoOutline,
                      height: isSmallScreen ? 200 : 350,
                      width: isSmallScreen ? 200 : 350,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Appcolors.medvendorprimary,
                        width: 2,
                      ),
                    ),
                    child: Lottie.asset(
                      Assets.images.medvendor2,
                      height: isSmallScreen ? 200 : 350,
                      width: isSmallScreen ? 200 : 350,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Jethro',
                style:
                    AppTypography.s24w600.copyWith(color: Appcolors.darkText),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'Lottie animations',
                style:
                    AppTypography.s14w400.copyWith(color: Appcolors.darkText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Appcolors.jethro,
                        width: 2,
                      ),
                    ),
                    child: Lottie.asset(
                      Assets.images.jethro1,
                      height: isSmallScreen ? 200 : 350,
                      width: isSmallScreen ? 200 : 350,
                    ),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Appcolors.jethro,
                        width: 2,
                      ),
                    ),
                    child: Lottie.asset(
                      alignment: AlignmentDirectional(0, 1),
                      Assets.images.diggingBoneUp,
                      height: isSmallScreen ? 200 : 350,
                      width: isSmallScreen ? 200 : 350,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                'Big Creek Construction',
                style:
                    AppTypography.s24w600.copyWith(color: Appcolors.darkText),
              ),
            ),
            Padding(
              padding: const EdgeInsets.all(2.0),
              child: Text(
                'Loading animations',
                style:
                    AppTypography.s14w400.copyWith(color: Appcolors.darkText),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Container(
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.all(
                        Radius.circular(10),
                      ),
                      border: Border.all(
                        color: Appcolors.darkText,
                        width: 2,
                      ),
                    ),
                    padding: EdgeInsets.symmetric(horizontal: 0, vertical: 0),
                    child: Lottie.asset(
                      Assets.images.bccTruck,
                      height: isSmallScreen ? 200 : 350,
                      width: isSmallScreen ? 200 : 350,
                    ),
                  ),
                ),
              ],
            ),
            CustomFooter()
          ],
        ),
      );
    });
  }
}
