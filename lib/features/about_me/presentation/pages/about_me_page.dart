import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/footer.dart';

import 'package:portfolio_flutter/features/about_me/presentation/widgets/about_section.dart';
import 'package:portfolio_flutter/features/about_me/presentation/widgets/hobby_carousel.dart';

class AboutMePage extends StatefulWidget {
  const AboutMePage({super.key});

  @override
  State<AboutMePage> createState() => _AboutMePageState();
}

class _AboutMePageState extends State<AboutMePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            AboutSection(),
            HobbyCarousel(),
            CustomFooter(),
          ],
        ),
      ),
    );
  }
}
