import 'package:flutter/material.dart';
import 'package:real_estate/constants.dart';
import 'package:real_estate/models/projects.dart';
import 'package:real_estate/responsive.dart';

import 'project_card.dart';

class Projects extends StatelessWidget {
  const Projects({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          'Our Projects',
          style: Theme.of(context).textTheme.headline6,
        ),
        Responsive(
          desktop: BuildGridView(
            itemCount: demoProjects.length,
            crossAxitCount: 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          tablet: BuildGridView(
            itemCount: demoProjects.length,
            crossAxitCount: MediaQuery.of(context).size.width < 900 ? 2 : 3,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobileLarg: BuildGridView(
            itemCount: demoProjects.length,
            crossAxitCount: 2,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
          mobile: BuildGridView(
            itemCount: demoProjects.length,
            crossAxitCount: 1,
            childAspectRatio: 0.75,
            itemBuilder: (context, index) => ProjectCard(
              project: demoProjects[index],
            ),
          ),
        ),
      ],
    );
  }

  GridView BuildGridView({
    required int itemCount,
    required int crossAxitCount,
    required double childAspectRatio,
    required IndexedWidgetBuilder itemBuilder,
  }) {
    return GridView.builder(
        shrinkWrap: true,
        itemCount: itemCount,
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: crossAxitCount,
          childAspectRatio: childAspectRatio,
          crossAxisSpacing: kDefaultPadding,
          mainAxisSpacing: kDefaultPadding,
        ),
        itemBuilder: itemBuilder);
  }
}

