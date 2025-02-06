import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/features/about_me/presentation/widgets/carousel_item.dart';

class HobbyCarousel extends StatefulWidget {
  const HobbyCarousel({super.key});

  @override
  State<HobbyCarousel> createState() => _HobbyCarouselState();
}

class _HobbyCarouselState extends State<HobbyCarousel> {
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;

      return Container(
        width: MediaQuery.of(context).size.width,
        color: Appcolors.offWhite,
        child: Column(
          children: [
            Padding(
              padding: EdgeInsets.all(16),
              child: Text(
                'When I\'m not working, I take interest in ...',
                style:
                    AppTypography.s24w600.copyWith(color: Appcolors.darkText),
              ),
            ),
            Column(
              children: [
                CarouselSlider.builder(
                  itemCount: items.length,
                  itemBuilder: (context, index, realIndex) {
                    final item = items[index];
                    return Column(
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          width: isSmallScreen
                              ? 350
                              : MediaQuery.of(context).size.width * .35,
                          height: isSmallScreen
                              ? 350
                              : MediaQuery.of(context).size.height * .35,
                          child: ClipRRect(
                            borderRadius: BorderRadius.circular(5),
                            child: Image.asset(
                              item.image,
                              fit: BoxFit.cover,
                            ),
                          ),
                        ),
                        Text(
                          item.title,
                          style: TextStyle(
                              fontSize: 18, fontWeight: FontWeight.bold),
                        ),
                      ],
                    );
                  },
                  options: CarouselOptions(
                    height: isSmallScreen ? 400 : 600,
                    enlargeCenterPage: true,
                    autoPlay: true,
                    aspectRatio: 16 / 9,
                    viewportFraction: isSmallScreen ? 1 : .5,
                  ),
                ),
              ],
            ),
          ],
        ),
      );
    });
  }
}
