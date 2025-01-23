import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class OtherRevision extends StatelessWidget {
  const OtherRevision({super.key});

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
                'Other Revisions',
                style:
                    AppTypography.s36w300.copyWith(color: Appcolors.offWhite),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16),
              child: Text(
                'Where should checkpoints be placed to save progress as employees input their hours?',
                style:
                    AppTypography.s18w800.copyWith(color: Appcolors.offWhite),
              ),
            ),
            Text(
              'This question arose as the team began developing a working prototype. As a designer, I found this challenge to be a valuable learning experience. Moving forward on future projects, I realize the importance of anticipating the user’s journey—whether it ends in an error or a screen lacking appropriate data. Thinking ahead for such scenarios allows me to strategically place checkpoints where data can be saved or retrieved, ensuring a smoother and more seamless experience for the user.',
              style: AppTypography.s18w300.copyWith(color: Appcolors.offWhite),
            ),
          ],
        ),
      );
    });
  }
}
