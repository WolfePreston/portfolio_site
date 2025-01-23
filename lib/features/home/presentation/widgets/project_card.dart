import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/features/home/presentation/widgets/projects_list.dart';

class ProjectCard extends StatefulWidget {
  final ProjectItem child;
  final double width;
  final VoidCallback ontap;
  final String image;
  final String title;
  final String description;
  final Color color;
  const ProjectCard({
    super.key,
    required this.child,
    required this.width,
    required this.ontap,
    required this.description,
    required this.image,
    required this.title,
    required this.color,
  });

  @override
  State<ProjectCard> createState() => _ProjectCardState();
}

class _ProjectCardState extends State<ProjectCard> {
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: widget.ontap,
      child: Card(
        clipBehavior: Clip.hardEdge,
        color: widget.color,
        elevation: 5,
        child: SizedBox(
          width: 300,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Container(
                height: 200,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.only(
                    topLeft: Radius.circular(10),
                    topRight: Radius.circular(10),
                  ),
                ),
                child: Image.asset(
                  widget.image,
                  fit: BoxFit.fitHeight,
                ),
              ),
              Container(
                decoration: BoxDecoration(
                  color: Appcolors.offWhite,
                  borderRadius: BorderRadius.only(
                    bottomLeft: Radius.circular(10),
                    bottomRight: Radius.circular(10),
                  ),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        widget.title,
                        style: AppTypography.s18w800
                            .copyWith(color: Appcolors.darkText),
                      ),
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 8, vertical: 4),
                      child: Text(
                        widget.description,
                        style: AppTypography.s14w400
                            .copyWith(color: Appcolors.darkText),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
