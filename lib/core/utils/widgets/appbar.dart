import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/core/utils/widgets/appbar_button.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  const CustomAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isSmallScreen = constraints.maxWidth < 870;

        return AppBar(
          toolbarHeight: 124,
          titleSpacing: 24,
          backgroundColor: Appcolors.offWhite,
          title: isSmallScreen
              ? Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(2),
                    color: Appcolors.darkText,
                  ),
                  height: 100,
                  width: 100,
                  child: Padding(
                    padding: const EdgeInsets.all(15.0),
                    child: Image.asset(
                      Assets.images.icon.path,
                    ),
                  ),
                )
              : Row(
                  children: [
                    Container(
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(2),
                        color: Appcolors.darkText,
                      ),
                      height: 100,
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.all(15.0),
                        child: Image.asset(
                          Assets.images.icon.path,
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 8,
                    ),
                    Text(
                      'PRESTON WOLFE',
                      style: GoogleFonts.montserrat(
                        fontSize: 30,
                        fontWeight: FontWeight.w300,
                        letterSpacing: -3.5,
                      ),
                    ),
                  ],
                ),
          actions: isSmallScreen
              ? [
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 36),
                    child: PopupMenuButton<String>(
                      color: Appcolors.white,
                      icon: Icon(Icons.menu, color: Appcolors.darkText),
                      onSelected: (value) {
                        switch (value) {
                          case 'Projects':
                            context.go('/');
                          case 'For Fun':
                            context.go('/forFun');
                          case 'About':
                            context.go('/about');
                        }
                      },
                      itemBuilder: (context) => [
                        PopupMenuItem(
                          value: 'Projects',
                          child: Text(
                            'Projects',
                            style: AppTypography.s18w300.copyWith(
                              color: Appcolors.darkText,
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          value: 'For Fun',
                          child: Text(
                            'For Fun',
                            style: AppTypography.s18w300.copyWith(
                              color: Appcolors.darkText,
                            ),
                          ),
                        ),
                        PopupMenuItem(
                          value: 'About',
                          child: Text(
                            'About',
                            style: AppTypography.s18w300.copyWith(
                              color: Appcolors.darkText,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ]
              : [
                  AppbarButton(
                    onTap: () {
                      context.go('/');
                    },
                    buttonText: 'Projects',
                  ),
                  AppbarButton(
                    onTap: () {
                      context.go('/forFun');
                    },
                    buttonText: 'For Fun',
                  ),
                  AppbarButton(
                    onTap: () {
                      context.go('/about');
                    },
                    buttonText: 'About',
                  ),
                  const SizedBox(width: 32),
                ],
        );
      },
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(124);
}
