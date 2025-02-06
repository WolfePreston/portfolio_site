import 'package:flutter/material.dart';

class ScreensRow4 extends StatelessWidget {
  final String largeImage1;
  final String largeImage2;
  final String largeImage3;
  final String? largeImage4;
  final String smallImage1;
  final String smallImage2;
  final String? smallImage3;
  final double largeMaxwidth;
  final double smallMaxwidth;
  const ScreensRow4({
    super.key,
    required this.largeImage1,
    required this.largeImage2,
    required this.largeImage3,
    this.largeImage4,
    required this.smallImage1,
    required this.smallImage2,
    this.smallImage3,
    required this.largeMaxwidth,
    required this.smallMaxwidth,
  });

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return isSmallScreen
          ? Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 600),
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.7,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      smallImage1,
                    ),
                  ),
                ),
                ConstrainedBox(
                  constraints: BoxConstraints(maxHeight: 600),
                  child: Container(
                    height: MediaQuery.of(context).size.width * 0.7,
                    clipBehavior: Clip.hardEdge,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10),
                    ),
                    child: Image.asset(
                      smallImage2,
                    ),
                  ),
                ),
                if (smallImage3 != null)
                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 600),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.7,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        smallImage3!,
                      ),
                    ),
                  ),
              ],
            )
          : ConstrainedBox(
              constraints: BoxConstraints(maxWidth: largeMaxwidth),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  ConstrainedBox(
                    constraints: BoxConstraints(maxHeight: 600),
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.5,
                      clipBehavior: Clip.hardEdge,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(10),
                      ),
                      child: Image.asset(
                        largeImage1,
                      ),
                    ),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 600,
                    ),
                    child: Container(
                        height: MediaQuery.of(context).size.width * 0.5,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          largeImage2,
                        )),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(
                      maxHeight: 600,
                    ),
                    child: Container(
                        height: MediaQuery.of(context).size.width * 0.5,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          largeImage3,
                        )),
                  ),
                  if (largeImage4 != null)
                    ConstrainedBox(
                      constraints: BoxConstraints(
                        maxHeight: 600,
                      ),
                      child: Container(
                        height: MediaQuery.of(context).size.width * 0.5,
                        clipBehavior: Clip.hardEdge,
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Image.asset(
                          largeImage4!,
                        ),
                      ),
                    ),
                ],
              ),
            );
    });
  }
}
