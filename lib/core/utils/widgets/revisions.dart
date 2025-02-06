import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class Revisions extends StatelessWidget {
  final String title;
  final String? question;
  final String description;
  final Widget? optional;
  const Revisions({
    super.key,
    required this.description,
    required this.title,
    this.question,
    this.optional,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      return Padding(
        padding: const EdgeInsets.all(16),
        child: ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 600),
          child: Container(
            padding: EdgeInsets.all(32),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
              color: Appcolors.darkText,
            ),
            child: Column(
              children: [
                Padding(
                  padding:
                      const EdgeInsets.symmetric(vertical: 24, horizontal: 16),
                  child: Text(
                    title,
                    style: AppTypography.s36w300
                        .copyWith(color: Appcolors.offWhite),
                  ),
                ),
                if (question != null)
                  Padding(
                    padding: const EdgeInsets.symmetric(vertical: 16),
                    child: Text(
                      question!,
                      style: AppTypography.s18w800
                          .copyWith(color: Appcolors.offWhite),
                    ),
                  ),
                Container(
                  child: optional,
                ),
                Padding(
                  padding: EdgeInsets.symmetric(vertical: 32, horizontal: 16),
                  child: Text(
                    description,
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.offWhite),
                  ),
                ),
              ],
            ),
          ),
        ),
      );
    });
  }
}
