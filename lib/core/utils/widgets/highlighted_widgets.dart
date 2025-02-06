import 'dart:async';

import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';

class HighlightedWidgets extends StatelessWidget {
  final String backgroundText;
  final String title;
  final String description;
  final Color? imageBackground;
  final String image;
  final String? image2;
  final String? image3;
  final String? image4;
  final Color background;
  final Color textColor;
  const HighlightedWidgets({
    super.key,
    required this.background,
    required this.backgroundText,
    required this.description,
    required this.image,
    required this.title,
    required this.textColor,
    this.imageBackground,
    this.image2,
    this.image3,
    this.image4,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isSmallScreen = constraints.maxWidth < 870;

        return ConstrainedBox(
          constraints: BoxConstraints(maxWidth: 1440),
          child: Padding(
            padding: const EdgeInsets.all(16),
            child: Container(
              padding: EdgeInsets.all(64),
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
                color: background,
              ),
              child: Stack(
                children: [
                  Align(
                    alignment: Alignment.bottomLeft,
                    child: FittedBox(
                      fit: BoxFit.contain,
                      child: Opacity(
                        opacity: .2,
                        child: Text(
                          backgroundText,
                          style: TextStyle(
                            fontSize: MediaQuery.of(context).size.width * .2,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ),
                  ),
                  isSmallScreen
                      ? Column(
                          children: [
                            Padding(
                              padding: const EdgeInsets.symmetric(vertical: 24),
                              child: Text(
                                title,
                                textAlign: TextAlign.center,
                                style: GoogleFonts.montserrat(
                                    fontSize:
                                        (MediaQuery.of(context).size.width *
                                                0.03)
                                            .clamp(24, 62),
                                    color: textColor),
                              ),
                            ),
                            SizedBox(width: 16),
                            if (imageBackground != null)
                              Container(
                                decoration: BoxDecoration(
                                  color: imageBackground,
                                  borderRadius: BorderRadius.circular(10),
                                ),
                                padding: EdgeInsets.all(4),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 400.0,
                                  ),
                                  child: Container(
                                    width: 250,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(image),
                                  ),
                                ),
                              ),
                            if (imageBackground == null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 400.0,
                                  ),
                                  child: Container(
                                    width: 250,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(image),
                                  ),
                                ),
                              ),
                            if (image2 != null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 400.0,
                                  ),
                                  child: Container(
                                    width: 250,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(image2!),
                                  ),
                                ),
                              ),
                            if (image3 != null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 400.0,
                                  ),
                                  child: Container(
                                    width: 250,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(image3!),
                                  ),
                                ),
                              ),
                            if (image4 != null)
                              Padding(
                                padding: const EdgeInsets.all(8.0),
                                child: ConstrainedBox(
                                  constraints: BoxConstraints(
                                    maxWidth: 400.0,
                                  ),
                                  child: Container(
                                    width: 250,
                                    clipBehavior: Clip.hardEdge,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Image.asset(image4!),
                                  ),
                                ),
                              ),
                            Padding(
                              padding: const EdgeInsets.all(8.0),
                              child: Text(
                                description,
                                style: AppTypography.s18w300
                                    .copyWith(color: textColor),
                              ),
                            ),
                          ],
                        )
                      : Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            SizedBox(
                              height: 500,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  SizedBox(
                                    width: 400,
                                    child: Text(
                                      title,
                                      style: GoogleFonts.montserrat(
                                        fontSize:
                                            (MediaQuery.of(context).size.width *
                                                    0.03)
                                                .clamp(24, 62),
                                        color: textColor,
                                      ),
                                    ),
                                  ),
                                  SizedBox(width: 16),
                                  SizedBox(
                                    width:
                                        MediaQuery.of(context).size.width * .25,
                                    child: Padding(
                                      padding: const EdgeInsets.all(8.0),
                                      child: Text(
                                        description,
                                        style: AppTypography.s18w300
                                            .copyWith(color: textColor),
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            SizedBox(
                              height: 650,
                              child: Column(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceAround,
                                children: [
                                  if (imageBackground != null)
                                    Container(
                                      decoration: BoxDecoration(
                                        color: imageBackground,
                                        borderRadius: BorderRadius.circular(10),
                                      ),
                                      padding: EdgeInsets.all(4),
                                      child: ConstrainedBox(
                                        constraints: BoxConstraints(
                                          maxWidth: 400.0,
                                        ),
                                        child: Container(
                                          width: 250,
                                          clipBehavior: Clip.hardEdge,
                                          decoration: BoxDecoration(
                                            borderRadius:
                                                BorderRadius.circular(10),
                                          ),
                                          child: Image.asset(image),
                                        ),
                                      ),
                                    ),
                                  if (imageBackground == null)
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth: 400.0,
                                      ),
                                      child: Container(
                                        width: 250,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(image),
                                      ),
                                    ),
                                  if (image2 != null)
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth: 400.0,
                                      ),
                                      child: Container(
                                        width: 250,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(image2!),
                                      ),
                                    ),
                                  if (image3 != null)
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth: 400.0,
                                      ),
                                      child: Container(
                                        width: 250,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(image3!),
                                      ),
                                    ),
                                  if (image4 != null)
                                    ConstrainedBox(
                                      constraints: BoxConstraints(
                                        maxWidth: 400.0,
                                      ),
                                      child: Container(
                                        width: 250,
                                        clipBehavior: Clip.hardEdge,
                                        decoration: BoxDecoration(
                                          borderRadius:
                                              BorderRadius.circular(10),
                                        ),
                                        child: Image.asset(image4!),
                                      ),
                                    ),
                                ],
                              ),
                            ),
                          ],
                        ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
