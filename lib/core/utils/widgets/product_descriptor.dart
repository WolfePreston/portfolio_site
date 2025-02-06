import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class ProductDescriptor extends StatelessWidget {
  final String title;
  final String description;
  final Color accentColor;

  const ProductDescriptor({
    super.key,
    required this.title,
    required this.description,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isSmallScreen = constraints.maxWidth < 870;
        return Padding(
          padding: EdgeInsets.symmetric(
            vertical: isSmallScreen ? 16 : 48,
          ),
          child: ConstrainedBox(
            constraints: const BoxConstraints(maxWidth: 650),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(
                  width: 20,
                  height: 23,
                  color: Colors.transparent,
                  child: CustomPaint(
                    painter: TrianglePainter(accentColor),
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 16, right: 8),
                  child: ConstrainedBox(
                    constraints:
                        BoxConstraints(maxWidth: isSmallScreen ? 120 : 250),
                    child: Text(
                      title,
                      style: AppTypography.s18w800
                          .copyWith(color: Appcolors.darkText),
                    ),
                  ),
                ),
                Expanded(
                  child: SizedBox(
                    width: MediaQuery.of(context).size.width * .4,
                    child: Text(
                      description,
                      style: AppTypography.s18w300
                          .copyWith(color: Appcolors.darkText),
                    ),
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}

class TrianglePainter extends CustomPainter {
  final Color color;

  TrianglePainter(this.color);

  @override
  void paint(Canvas canvas, Size size) {
    final paint = Paint()
      ..color = color
      ..style = PaintingStyle.fill;

    final path = Path();
    path.moveTo(2 / 2, 0);
    path.lineTo(0, size.height);
    path.lineTo(size.width, size.height / 2);
    path.close();

    canvas.drawPath(path, paint);
  }

  @override
  bool shouldRepaint(covariant CustomPainter oldDelegate) {
    return false;
  }
}
