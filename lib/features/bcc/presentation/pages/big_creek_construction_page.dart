import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/core/utils/widgets/footer.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/utils/widgets/closing_statement.dart';
import 'package:portfolio_flutter/core/utils/widgets/highlighted_widgets.dart';
import 'package:portfolio_flutter/core/utils/widgets/my_role.dart';
import 'package:portfolio_flutter/core/utils/widgets/next_project.dart';
import 'package:portfolio_flutter/core/utils/widgets/product_description_manager.dart';
import 'package:portfolio_flutter/core/utils/widgets/revisions.dart';
import 'package:portfolio_flutter/core/utils/widgets/screens_row_4.dart';
import 'package:portfolio_flutter/core/utils/widgets/title_image_desc.dart';
import 'package:portfolio_flutter/core/utils/widgets/users_quote.dart';
import 'package:portfolio_flutter/features/bcc/presentation/widgets/job_sites.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class BigCreekConstructionPage extends StatelessWidget {
  const BigCreekConstructionPage({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(builder: (context, constraints) {
      bool isSmallScreen = constraints.maxWidth < 870;
      return SingleChildScrollView(
        child: Column(
          children: [
            TitleImageDesc(
              backgroundMain: Appcolors.bigcreek,
              backgroundSub: Appcolors.bigcreekblue,
              description:
                  'A mobile app that assists construction supervisors input hours while away from a PC or laptop.',
              image: Assets.images.bigcreekmockup.path,
              title: 'Big Creek Construction',
              descriptionColor: Appcolors.white,
              titleColor: Appcolors.darkText,
              introDescription:
                  'Currently supervisors must go in weekly online to input hours for their employees. In this process they need to first create the job site (location) by adding tasks that were completed, add any equipment, and then open the timesheet page where they can utilize the job site created to assign hours to employees. The current process’ design is made to minimize mistakes so that the accounting department will be able to finalize the process in a timely manner.',
            ),
            MyRole(
                duration: 'Q4 2024',
                industry: 'Construction',
                role: 'Sole UX/UI Designer',
                tools: 'Figma, Flutter, VS Code, Android Studio'),
            SizedBox(
              height: 64,
            ),
            UsersQuote(
                accentColor: Appcolors.bigcreek,
                background: Appcolors.darkText,
                image: Assets.images.bigcreek.constructionWorker.path,
                person: '- Construction Supervisor',
                quote:
                    '“I need a quick method of inputting hours and tracking my employees that does not force me to have an internet connection when I am ready to do so.”',
                textColor: Appcolors.white),
            SizedBox(
              height: 64,
            ),
            ProductDescriptionManager(
              accentColor: Appcolors.bigcreek,
              users:
                  'Adults whose age can range anywhere between 30-60 years old, who have experience in the field and are looking to quickly input hours.',
              product:
                  'A mobile application that is meant to improve time being used to input hours by combining 2 different sections in the Big Creek Construction employee site and allowing users to fill hours in one place accurately.',
              businessGoal:
                  'Effectively condense sections in the employee site into one so inputting hours is in a simple format, errors are mitigated, and its available on a mobile platform.',
              solution:
                  'Show users locations (job sites) with their employees below and direct them with a color indicator and informational tool tips utilizing flutters built in features.',
            ),
            SizedBox(
              height: 64,
            ),
            Image.asset(
              Assets.images.bigcreek.stickyNotes.path,
              width: isSmallScreen
                  ? MediaQuery.of(context).size.width
                  : MediaQuery.of(context).size.width / 2,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Combining Pages, but Keeping Separate with Components',
                    textAlign: TextAlign.center,
                    style: AppTypography.s36w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                  Text(
                    'below are some of the solutions I implemented to streamline the website into a mobile platform',
                    textAlign: TextAlign.center,
                    style: AppTypography.s18w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                ],
              ),
            ),
            SizedBox(
              height: 64,
            ),
            JobSites(),
            SizedBox(
              height: 64,
            ),
            ScreensRow4(
              largeImage1: Assets.images.bigcreek.login.path,
              largeImage2: Assets.images.bigcreek.homescreen.path,
              largeImage3: Assets.images.bigcreek.offlineData.path,
              largeImage4: Assets.images.bigcreek.jobSiteAdded.path,
              smallImage1: Assets.images.bigcreek.homescreen.path,
              smallImage2: Assets.images.bigcreek.jobSiteAdded.path,
              largeMaxwidth: 1200,
              smallMaxwidth: 350,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.center,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    'Offline Indicators for Users Working in the Field without Connection',
                    textAlign: TextAlign.center,
                    style: AppTypography.s36w300
                        .copyWith(color: Appcolors.darkText),
                  ),
                  ConstrainedBox(
                    constraints: BoxConstraints(maxWidth: 900),
                    child: Text(
                      'in the middle of production we questioned how we will manage data for offline users, and below are some of the steps the software engineers and I collaborated on',
                      textAlign: TextAlign.center,
                      style: AppTypography.s18w300
                          .copyWith(color: Appcolors.darkText),
                    ),
                  ),
                ],
              ),
            ),
            HighlightedWidgets(
              background: Appcolors.bigcreekblue,
              backgroundText: '1',
              description:
                  'When first logging in, users are prompted with what downloaded data will look like and how it will function.',
              image: Assets.images.bigcreek.offlineData.path,
              title: 'Cohesive Solutions',
              textColor: Appcolors.white,
            ),
            HighlightedWidgets(
              background: Appcolors.bigcreekblue,
              backgroundText: '2',
              description:
                  'When first logging in, users are prompted with what downloaded data will look like and how it will function.',
              image: Assets.images.bigcreek.downloadingJobsite.path,
              image2: Assets.images.bigcreek.offlineJobsites.path,
              image3: Assets.images.bigcreek.menuOffline.path,
              image4: Assets.images.bigcreek.menuOnline.path,
              title: 'Cohesive Solutions',
              textColor: Appcolors.white,
            ),
            HighlightedWidgets(
              background: Appcolors.bigcreekblue,
              backgroundText: '3',
              description:
                  'Require users to download job sites before continuing with the process to limit any issues that may appear.',
              image: Assets.images.bigcreek.jobSitesForceDownload.path,
              title: 'Cohesive Solutions',
              textColor: Appcolors.white,
              imageBackground: Appcolors.darkText,
            ),
            SizedBox(
              height: 64,
            ),
            ScreensRow4(
              largeImage1: Assets.images.bigcreek.addTaskJobSite.path,
              largeImage2: Assets.images.bigcreek.addTask.path,
              largeImage3: Assets.images.bigcreek.addTaskAGC.path,
              smallImage1: Assets.images.bigcreek.addTaskJobSite.path,
              smallImage2: Assets.images.bigcreek.addTask.path,
              smallImage3: Assets.images.bigcreek.addTaskAGC.path,
              largeMaxwidth: 900,
              smallMaxwidth: 400,
            ),
            SizedBox(
              height: 64,
            ),
            Revisions(
              title: 'Other Revisions',
              question:
                  'Where should checkpoints be placed to save progress as employees input their hours?',
              description:
                  'This question arose as the team began developing a working prototype. As a designer, I found this challenge to be a valuable learning experience. Moving forward on future projects, I realize the importance of anticipating the user’s journey—whether it ends in an error or a screen lacking appropriate data. Thinking ahead for such scenarios allows me to strategically place checkpoints where data can be saved or retrieved, ensuring a smoother and more seamless experience for the user.',
            ),
            ClosingStatement(
              title: 'Understanding the big picture',
              title1: 'Expectations',
              description1:
                  'This is a nuanced process that has a lot of tedious steps where users will need to input certain government required codes and tasks that were completed by specified employees and the app needed to have a smooth experience.',
              title2: 'Reality',
              description2:
                  'While minimizing steps to create a smoother experience, the real time saving step will be downloading data and having it available for the user while offline and leaving hidden checkpoints within the process to save progress.',
              title3: 'Solutions',
              description3:
                  'In order to work effectively and not lose any work, there is a force download that requires users to download all data for a job site (resulting in 10-100mb of data cached) allowing the application to store progress on hours input and quickly displaying data that will be needed to complete the process.',
            ),
            NextProject(
              title: 'MedVendor',
              image: Assets.images.medvendormockup.path,
              icon: Icons.arrow_forward_rounded,
              background: Appcolors.medvendorprimary,
              textColor: Appcolors.white,
              onTap: () {
                context.go('/MedVendor');
              },
            ),
            CustomFooter(),
          ],
        ),
      );
    });
  }
}
