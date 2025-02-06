import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class TitleDivider extends StatelessWidget {
  final String title;
  final String subtitle;
  const TitleDivider({
    required this.subtitle,
    required this.title,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8.0),
          child: Text(
            title,
            style: AppTypography.s24w600.copyWith(color: Appcolors.darkText),
          ),
        ),
        Padding(
          padding: const EdgeInsets.all(2.0),
          child: Text(
            subtitle,
            style: AppTypography.s14w400.copyWith(color: Appcolors.darkText),
          ),
        ),
      ],
    );
  }
}
