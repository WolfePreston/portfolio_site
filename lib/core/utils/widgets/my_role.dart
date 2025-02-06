import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class MyRole extends StatelessWidget {
  final String role;
  final String industry;
  final String tools;
  final String duration;
  const MyRole({
    super.key,
    required this.duration,
    required this.industry,
    required this.role,
    required this.tools,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      height: 350,
      child: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Role: ',
                  style:
                      AppTypography.s18w800.copyWith(color: Appcolors.darkText),
                ),
                Expanded(
                  child: Text(
                    role,
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                )
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Industry: ',
                  style:
                      AppTypography.s18w800.copyWith(color: Appcolors.darkText),
                ),
                Expanded(
                  child: Text(
                    industry,
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                )
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Tools: ',
                  style:
                      AppTypography.s18w800.copyWith(color: Appcolors.darkText),
                ),
                Expanded(
                  child: Text(
                    tools,
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                )
              ],
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(maxWidth: 400),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Duration: ',
                  style:
                      AppTypography.s18w800.copyWith(color: Appcolors.darkText),
                ),
                Expanded(
                  child: Text(
                    duration,
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
