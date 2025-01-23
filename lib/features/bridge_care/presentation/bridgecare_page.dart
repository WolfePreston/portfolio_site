import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class BridgecarePage extends StatelessWidget {
  const BridgecarePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          color: Appcolors.darkText,
          child: Text(
            'BridgeCare',
            style: AppTypography.s24w600.copyWith(color: Appcolors.offWhite),
          ),
        )
      ],
    );
  }
}
