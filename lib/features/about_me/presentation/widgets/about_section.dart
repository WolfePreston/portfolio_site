import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class AboutSection extends StatelessWidget {
  const AboutSection({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;

      return SizedBox(
        child: Padding(
          padding: EdgeInsets.all(32),
          child: isSmallScreen
              ? Column(
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      width: MediaQuery.of(context).size.width * .5,
                      height: MediaQuery.of(context).size.width * .5,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          Assets.images.profile.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Text(
                        'I' "'" 'm Preston Wolfe',
                        style: AppTypography.s24w600,
                      ),
                    ),
                    Container(
                      // width: MediaQuery.of(context).size.width / 2,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Text(
                        '''     I hold a Bachelor's degree in Arts, Technology, and Emerging Communications (ATEC) with a specialization in UX Design from the University of Texas at Dallas. Over the past year, I have focused on enhancing my skills in UX design and development, working on projects that involve building responsive layouts, creating intuitive navigation systems, and optimizing user-centered applications. With a strong foundation in programming and application development, I am passionate about solving complex design challenges and contributing to projects that deliver impactful and engaging user experiences.''',
                        style: AppTypography.s14w400
                            .copyWith(color: Appcolors.darkText),
                      ),
                    ),
                    Container(
                      // width: MediaQuery.of(context).size.width / 2,
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      child: Text(
                        '''     As both a designer and front-end developer, I thrive at the intersection of creativity and functionality. My work involves translating complex user needs into elegant interfaces, emphasizing accessibility, responsiveness, and aesthetic cohesion. From wireframing and prototyping in Figma to developing dynamic components with frameworks like Flutter, I approach each project with a user-first mindset. I have experience crafting seamless navigation systems, building modular components, and implementing data-driven designs that adapt to diverse user requirements. My collaborative approach enables me to bridge the gap between design and development, ensuring that every detail, from visual layout to interactive elements, aligns with the project’s goals and the user's expectations.''',
                        style: AppTypography.s14w400
                            .copyWith(color: Appcolors.darkText),
                      ),
                    )
                  ],
                )
              : Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      padding:
                          EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                      width: MediaQuery.of(context).size.width * .35,
                      height: MediaQuery.of(context).size.width * .35,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(5),
                        child: Image.asset(
                          Assets.images.profile.path,
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Container(
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Text(
                            'I' "'" 'm Preston Wolfe',
                            style: AppTypography.s24w600,
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Text(
                            '''     I hold a Bachelor's degree in Arts, Technology, and Emerging Communications (ATEC) with a specialization in UX Design from the University of Texas at Dallas. Over the past year, I have focused on enhancing my skills in UX design and development, working on projects that involve building responsive layouts, creating intuitive navigation systems, and optimizing user-centered applications. With a strong foundation in programming and application development, I am passionate about solving complex design challenges and contributing to projects that deliver impactful and engaging user experiences.''',
                            style: AppTypography.s14w400
                                .copyWith(color: Appcolors.darkText),
                          ),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width / 2,
                          padding:
                              EdgeInsets.symmetric(horizontal: 16, vertical: 4),
                          child: Text(
                            '''     As both a designer and front-end developer, I thrive at the intersection of creativity and functionality. My work involves translating complex user needs into elegant interfaces, emphasizing accessibility, responsiveness, and aesthetic cohesion. From wireframing and prototyping in Figma to developing dynamic components with frameworks like Flutter, I approach each project with a user-first mindset. I have experience crafting seamless navigation systems, building modular components, and implementing data-driven designs that adapt to diverse user requirements. My collaborative approach enables me to bridge the gap between design and development, ensuring that every detail, from visual layout to interactive elements, aligns with the project’s goals and the user's expectations.''',
                            style: AppTypography.s14w400
                                .copyWith(color: Appcolors.darkText),
                          ),
                        )
                      ],
                    )
                  ],
                ),
        ),
      );
    });
  }
}
