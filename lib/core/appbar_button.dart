import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class AppbarButton extends StatefulWidget {
  final VoidCallback onTap;
  final String buttonText;

  const AppbarButton({
    super.key,
    required this.onTap,
    required this.buttonText,
  });

  @override
  State<AppbarButton> createState() => _AppbarButtonState();
}

class _AppbarButtonState extends State<AppbarButton> {
  bool onHover = false;

  @override
  Widget build(BuildContext context) {
    return MouseRegion(
      onEnter: (_) {
        setState(() {
          onHover = true;
        });
      },
      onExit: (_) {
        setState(() {
          onHover = false;
        });
      },
      child: Container(
        height: 60,
        width: 150,
        decoration: BoxDecoration(
          color: onHover ? Appcolors.lightGrey : Colors.transparent,
          border: Border.all(
            color: onHover ? Appcolors.darkText : Colors.transparent,
            width: 2,
          ),
          borderRadius: BorderRadius.circular(5),
        ),
        child: InkWell(
          splashColor: Colors.transparent,
          hoverColor: Colors.transparent,
          onTap: widget.onTap,
          child: Center(
            child: Text(
              widget.buttonText,
              style: AppTypography.s18w300.copyWith(
                color: Appcolors.darkText,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
