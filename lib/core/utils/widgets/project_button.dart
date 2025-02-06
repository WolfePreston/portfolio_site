import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class ProjectButton extends StatelessWidget {
  final String title;
  final String image;
  final Color background;
  final Color textColor;
  final VoidCallback onTap;
  final IconData icon;
  const ProjectButton({
    super.key,
    required this.title,
    required this.image,
    required this.background,
    required this.textColor,
    required this.onTap,
    required this.icon,
  });

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(10),
          color: background,
        ),
        padding: EdgeInsets.all(16),
        child: Column(
          children: [
            Image.asset(
              image,
              fit: BoxFit.fitHeight,
              height: 250,
            ),
            Text(
              title,
              style: AppTypography.s18w800.copyWith(
                color: textColor,
              ),
            ),
            Icon(
              icon,
              color: textColor,
              size: 32,
            )
          ],
        ),
      ),
    );
  }
}
