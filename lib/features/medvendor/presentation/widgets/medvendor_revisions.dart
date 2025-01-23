import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class MedvendorRevisions extends StatelessWidget {
  const MedvendorRevisions({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return Container(
        padding: EdgeInsets.all(32),
        width: isSmallScreen ? 400 : 600,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: Appcolors.darkText,
        ),
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.all(24.0),
              child: Text(
                'Development past the first Release',
                style:
                    AppTypography.s24w600.copyWith(color: Appcolors.offWhite),
              ),
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Appcolors.offWhite,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * .05,
                      maxHeight: MediaQuery.of(context).size.width * .05,
                    ),
                    child: Image.asset(
                      Assets.images.medvendor.filterIcon.path,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Appcolors.offWhite,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Appcolors.offWhite,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * .05,
                      maxHeight: MediaQuery.of(context).size.width * .05,
                    ),
                    child: Image.asset(
                      Assets.images.medvendor.searchIcon.path,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(24),
              child: Text(
                'I believe this app has significant potential for growth, particularly in standardizing the information provided by facilities. For a first release, its usability is very straightforward. However, one improvement I’d like to see is an update to the search tab and its functionality. It was removed from the initial release due to backend bugs and confusion around the process of searching and filtering locations from the home screen. That said, incorporating a well-functioning search feature could greatly reduce the time needed to find a facility and enhance the overall user experience.',
                style:
                    AppTypography.s18w300.copyWith(color: Appcolors.offWhite),
              ),
            ),
          ],
        ),
      );
    });
  }
}
