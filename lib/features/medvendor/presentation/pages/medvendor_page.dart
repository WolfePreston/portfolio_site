import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/footer.dart';
import 'package:portfolio_flutter/features/medvendor/presentation/widgets/medvendor_components_1.dart';
import 'package:portfolio_flutter/features/medvendor/presentation/widgets/medvendor_components_2.dart';

import 'package:portfolio_flutter/features/medvendor/presentation/widgets/medvendor_intro.dart';
import 'package:portfolio_flutter/features/medvendor/presentation/widgets/medvendor_revisions.dart';
import 'package:portfolio_flutter/features/medvendor/presentation/widgets/medvendor_screens.dart';
import 'package:portfolio_flutter/features/medvendor/presentation/widgets/medvendor_solution.dart';
import 'package:portfolio_flutter/features/medvendor/presentation/widgets/medvendor_users.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class MedvendorPage extends StatelessWidget {
  const MedvendorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          MedvendorIntro(),
          SizedBox(
            height: 64,
          ),
          MedvendorUsers(),
          MedvendorScreens(),
          MedvendorSolution(),
          MedvendorComponents1(),
          MedvendorComponents2(),
          SizedBox(
            height: 64,
          ),
          Image.asset(
            Assets.images.medvendormockup.path,
            height: 450,
          ),
          SizedBox(
            height: 64,
          ),
          MedvendorRevisions(),
          SizedBox(
            height: 64,
          ),
          CustomFooter(),
        ],
      ),
    );
  }
}
