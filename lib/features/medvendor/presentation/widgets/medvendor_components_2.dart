import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class MedvendorComponents2 extends StatelessWidget {
  const MedvendorComponents2({super.key});

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
                  alignment: Alignment.bottomLeft,
                  child: FittedBox(
                    fit: BoxFit.cover,
                    child: Text(
                      'Coverage',
                      style: TextStyle(
                        fontSize: MediaQuery.of(context).size.width * .11,
                        // ignore: deprecated_member_use
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
                              'Insurance and Medical Specialties',
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
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .5,
                                  ),
                                  child: Image.asset(Assets
                                      .images.medvendor.insuranceCard.path),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .5,
                                  ),
                                  child: Image.asset(
                                      Assets.images.medvendor.frame382.path),
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.all(8),
                            child: Text(
                              'The facility\'s page also features a list of accepted insurances. For locations that accept hundreds of plans, a search function is available to help patients quickly confirm their coverage. Additionally, all pages showcase the medical specialties and services offered at the facility.',
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
                          SizedBox(
                            height: 500,
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                SizedBox(
                                  width: 400,
                                  child: Text(
                                    'Insurance and Medical Specialties',
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
                                      MediaQuery.of(context).size.width * .35,
                                  child: Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      'The facility\'s page also features a list of accepted insurances. For locations that accept hundreds of plans, a search function is available to help patients quickly confirm their coverage. Additionally, all pages showcase the medical specialties and services offered at the facility.',
                                      style: AppTypography.s18w300
                                          .copyWith(color: Appcolors.offWhite),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ),
                          Column(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .25,
                                  ),
                                  child: Image.asset(Assets
                                      .images.medvendor.insuranceCard.path),
                                ),
                              ),
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth:
                                        MediaQuery.of(context).size.width * .25,
                                  ),
                                  child: Image.asset(
                                      Assets.images.medvendor.frame382.path),
                                ),
                              ),
                            ],
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
