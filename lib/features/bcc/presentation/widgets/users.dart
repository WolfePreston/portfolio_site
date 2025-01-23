import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class Users extends StatelessWidget {
  const Users({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            ClipPath(
              child: Container(
                color: Appcolors.bigcreek,
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
          color: Appcolors.darkText,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              SizedBox(
                width: 24,
              ),
              Image.asset(
                Assets.images.bigcreek.constructionWorker.path,
                height: 100,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .45,
                child: Center(
                  child: Text(
                    '“I need a quick method of inputting hours and tracking my employees that does not force me to have an internet connection when I am ready to do so.”',
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.offWhite),
                  ),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .25,
                child: Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(
                    '-construction supervisor',
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
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 8),
                child: Text(
                  'The Users:',
                  style:
                      AppTypography.s18w800.copyWith(color: Appcolors.darkText),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .65,
                child: Text(
                  'Adults whose age can range anywhere between 30-60 years old, who have experience in the field and are looking to quickly input hours.',
                  style:
                      AppTypography.s18w300.copyWith(color: Appcolors.darkText),
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 48, horizontal: 16),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: const EdgeInsets.only(left: 32, right: 8),
                child: Text(
                  'The Product:',
                  style:
                      AppTypography.s18w800.copyWith(color: Appcolors.darkText),
                ),
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * .6,
                child: Text(
                  'A mobile application that is meant to improve time being used to input hours by combining 2 different sections in the Big Creek Construction employee site and allowing users to fill hours in one place accurately.',
                  style:
                      AppTypography.s18w300.copyWith(color: Appcolors.darkText),
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }
}
