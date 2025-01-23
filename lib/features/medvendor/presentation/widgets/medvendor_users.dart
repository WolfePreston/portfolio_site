import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class MedvendorUsers extends StatelessWidget {
  const MedvendorUsers({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.start,
            children: [
              ClipPath(
                child: Container(
                  color: Appcolors.medvendorprimary,
                  width: 50,
                  height: 25,
                ),
              ),
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 8),
                child: Text(
                  'Users',
                  style:
                      AppTypography.s36w300.copyWith(color: Appcolors.darkText),
                ),
              ),
            ],
          ),
          Container(
            height: 220,
            color: Appcolors.medvendornavy,
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.end,
              children: [
                SizedBox(
                  width: 24,
                ),
                Image.asset(
                  Assets.images.medvendor.doctor.path,
                  height: isSmallScreen ? 100 : 200,
                ),
                SizedBox(
                  width: isSmallScreen
                      ? MediaQuery.of(context).size.width * .35
                      : MediaQuery.of(context).size.width * .45,
                  child: Center(
                    child: Text(
                      '“Where can I send a new patient for a complex medical operation, with their medical coverage, and near their home?”',
                      style: isSmallScreen
                          ? AppTypography.s14w400
                              .copyWith(color: Appcolors.offWhite)
                          : AppTypography.s18w300
                              .copyWith(color: Appcolors.offWhite),
                    ),
                  ),
                ),
                SizedBox(
                  width: MediaQuery.of(context).size.width * .25,
                  child: Padding(
                    padding: const EdgeInsets.only(bottom: 8),
                    child: Text(
                      '-Physician',
                      style: AppTypography.s18w300
                          .copyWith(color: Appcolors.offWhite),
                    ),
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
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      'The Users:',
                      style: AppTypography.s18w800
                          .copyWith(color: Appcolors.medvendornavy),
                    ),
                  ),
                ),
                SizedBox(
                  width: isSmallScreen
                      ? MediaQuery.of(context).size.width * .4
                      : MediaQuery.of(context).size.width * .65,
                  child: Text(
                    'Physicians looking for a quick way to connect patients with a viable option for medical facilities and services.',
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
                  child: SizedBox(
                    width: 150,
                    child: Text(
                      'The Product:',
                      style: AppTypography.s18w800
                          .copyWith(color: Appcolors.medvendornavy),
                    ),
                  ),
                ),
                SizedBox(
                  width: isSmallScreen
                      ? MediaQuery.of(context).size.width * .4
                      : MediaQuery.of(context).size.width * .65,
                  child: Text(
                    'A platform designed to seamlessly connect patients with medical facilities and services. Physicians can access and share key information—such as contacts, facility documents, and more—directly from the app.',
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                ),
              ],
            ),
          ),
        ],
      );
    });
  }
}
