import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

import 'package:portfolio_flutter/core/utils/widgets/footer.dart';
import 'package:portfolio_flutter/features/home/presentation/widgets/project_card.dart';
import 'package:portfolio_flutter/features/home/presentation/widgets/projects_list.dart';

class Homepage extends StatefulWidget {
  const Homepage({super.key});

  @override
  State<Homepage> createState() => _HomepageState();
}

class _HomepageState extends State<Homepage> {
  final _projectList = projectList;

  @override
  Widget build(BuildContext context) {
    const double itemMaxWidth = 300.0;

    return Scaffold(
      body: LayoutBuilder(
        builder: (context, constraints) {
          return Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 16),
                    child: Wrap(
                      spacing: 32.0,
                      runSpacing: 32.0,
                      alignment: WrapAlignment.center,
                      children: _projectList.map((item) {
                        return ProjectCard(
                          shadowColor: item.color,
                          description: item.description,
                          image: item.image,
                          color: item.color,
                          ontap: () => context.go(item.url),
                          title: item.title,
                          width: (constraints.maxWidth / _projectList.length)
                              .clamp(0, itemMaxWidth),
                          child: item,
                        );
                      }).toList(),
                    ),
                  ),
                ),
              ),
              CustomFooter(),
            ],
          );
        },
      ),
    );
  }
}
