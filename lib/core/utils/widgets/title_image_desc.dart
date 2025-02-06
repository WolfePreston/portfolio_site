import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class TitleImageDesc extends StatelessWidget {
  final String title;
  final Color titleColor;
  final String description;
  final Color descriptionColor;
  final Color backgroundMain;
  final Color backgroundSub;
  final String image;
  final String? introDescription;
  const TitleImageDesc({
    super.key,
    required this.backgroundMain,
    required this.backgroundSub,
    required this.description,
    required this.image,
    required this.title,
    required this.descriptionColor,
    required this.titleColor,
    this.introDescription,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(
          width: MediaQuery.of(context).size.width,
          color: backgroundMain,
          child: Column(
            children: [
              Padding(
                padding: const EdgeInsets.all(16),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: AppTypography.s24w600.copyWith(color: titleColor),
                ),
              ),
              Image.asset(
                image,
                height: 450,
              )
            ],
          ),
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: EdgeInsets.symmetric(horizontal: 16, vertical: 8),
          color: backgroundSub,
          child: Text(
            description,
            style: AppTypography.s14w400.copyWith(color: descriptionColor),
            textAlign: TextAlign.center,
          ),
        ),
        if (introDescription != null)
          ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 700),
            child: Container(
              padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
              child: Text(
                introDescription!,
                style:
                    AppTypography.s14w400.copyWith(color: Appcolors.darkText),
              ),
            ),
          ),
      ],
    );
  }
}
