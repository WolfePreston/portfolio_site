import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/utils/widgets/project_button.dart';

class NextProject extends StatelessWidget {
  final String title;
  final String image;
  final Color background;
  final Color textColor;
  final VoidCallback onTap;
  final IconData icon;
  const NextProject({
    super.key,
    required this.background,
    required this.icon,
    required this.image,
    required this.onTap,
    required this.textColor,
    required this.title,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 64),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProjectButton(
              title: title,
              image: image,
              icon: icon,
              background: background,
              textColor: textColor,
              onTap: onTap),
        ],
      ),
    );
  }
}
