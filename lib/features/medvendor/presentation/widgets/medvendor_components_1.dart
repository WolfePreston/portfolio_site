import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class MedvendorComponents1 extends StatelessWidget {
  const MedvendorComponents1({super.key});

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
              color: Appcolors.medvendorprimary,
            ),
            child: Stack(
              children: [
                Align(
                  alignment: Alignment.bottomCenter,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'components',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .2,
                        color: Colors.white.withOpacity(0.2),
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                ),
                isSmallScreen
                    ? Column(
                        children: [
                          Padding(
                            padding: const EdgeInsets.symmetric(vertical: 24),
                            child: Text(
                              'Sharing and saving capabilities',
                              textAlign: TextAlign.center,
                              style: GoogleFonts.montserrat(
                                fontSize:
                                    (MediaQuery.of(context).size.width * 0.03)
                                        .clamp(24, 62),
                                color: Appcolors.offWhite,
                              ),
                            ),
                          ),
                          SizedBox(width: 16),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * .35,
                            ),
                            child: Image.asset(
                                Assets.images.medvendor.frame379.path),
                          ),
                          SizedBox(
                            width: MediaQuery.of(context).size.width * .8,
                            child: Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                'When a user opens a medical facility\'s page, the header provides two sharing options for patients: an expandable QR code for direct sharing and a share button. Additionally, users can save a facility for easy access if they visit it frequently.',
                                style: AppTypography.s18w300
                                    .copyWith(color: Appcolors.offWhite),
                              ),
                            ),
                          ),
                        ],
                      )
                    : Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            height: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 400,
                                  child: Text(
                                    'Sharing and saving capabilities',
                                    style: GoogleFonts.montserrat(
                                      fontSize:
                                          (MediaQuery.of(context).size.width *
                                                  0.03)
                                              .clamp(24, 62),
                                      color: Appcolors.offWhite,
                                    ),
                                  ),
                                ),
                                SizedBox(width: 16),
                                SizedBox(
                                  width:
                                      MediaQuery.of(context).size.width * .25,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'When a user opens a medical facility\'s page, the header provides two sharing options for patients: an expandable QR code for direct sharing and a share button. Additionally, users can save a facility for easy access if they visit it frequently.',
                                      style: AppTypography.s18w300
                                          .copyWith(color: Appcolors.offWhite),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          ConstrainedBox(
                            constraints: BoxConstraints(
                              maxWidth: MediaQuery.of(context).size.width * .35,
                            ),
                            child: Image.asset(
                                Assets.images.medvendor.frame379.path),
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
