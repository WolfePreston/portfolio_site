import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/footer.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/big_picture.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/cohesive_solutions_1.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/cohesive_solutions_2.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/cohesive_solutions_3.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/intro_section.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/job_sites.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/other_revision.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/screens_row.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/screens_row_2.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/users.dart';

class BigCreekConstructionPage extends StatelessWidget {
  const BigCreekConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          IntroSection(),
          SizedBox(
            height: 64,
          ),
          Users(),
          ScreensRow(),
          JobSites(),
          SizedBox(
            height: 64,
          ),
          CohesiveSolutions1(),
          CohesiveSolutions2(),
          CohesiveSolutions3(),
          SizedBox(
            height: 64,
          ),
          ScreensRow2(),
          SizedBox(
            height: 64,
          ),
          OtherRevision(),
          BigPicture(),
          CustomFooter(),
        ],
      ),
    );
  }
}
