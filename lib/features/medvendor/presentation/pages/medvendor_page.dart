import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/core/utils/widgets/closing_statement.dart';
import 'package:portfolio_flutter/core/utils/widgets/footer.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/utils/widgets/highlighted_widgets.dart';
import 'package:portfolio_flutter/core/utils/widgets/my_role.dart';
import 'package:portfolio_flutter/core/utils/widgets/next_project.dart';
import 'package:portfolio_flutter/core/utils/widgets/product_description_manager.dart';
import 'package:portfolio_flutter/core/utils/widgets/revisions.dart';
import 'package:portfolio_flutter/core/utils/widgets/screens_row_4.dart';
import 'package:portfolio_flutter/core/utils/widgets/title_image_desc.dart';
import 'package:portfolio_flutter/core/utils/widgets/users_quote.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class MedvendorPage extends StatelessWidget {
  const MedvendorPage({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          TitleImageDesc(
            title: 'MedVendor',
            titleColor: Appcolors.white,
            backgroundMain: Appcolors.medvendorprimary,
            description:
                'A mobile app connecting patients with medical facilities within their network.',
            descriptionColor: Appcolors.white,
            backgroundSub: Appcolors.medvendorprimary,
            image: Assets.images.medvendormockup.path,
            introDescription:
                'A growing startup for medical facilities by streamlining operations and fostering connections with physicians in their area. This platform makes it easier for patients to find the care they need. Free to download, physicians can create an account to input patient needs—such as required medical attention, insurance details, and zip code—and instantly access a tailored list of medical facilities that match those criteria.',
          ),
          MyRole(
            role: 'Sole UX/UI Designer',
            industry: 'Medical',
            tools: 'Figma, Flutter, VS Code, Android Studio',
            duration: 'Q3 2024',
          ),
          SizedBox(height: 64),
          UsersQuote(
              accentColor: Appcolors.medvendorprimary,
              background: Appcolors.medvendornavy,
              image: Assets.images.medvendor.doctor.path,
              person: '- Physician',
              quote:
                  '“Where can I send a new patient for a complex medical operation, with their medical coverage, and near their home?”',
              textColor: Appcolors.white),
          SizedBox(height: 64),
          ProductDescriptionManager(
            accentColor: Appcolors.medvendorprimary,
            users:
                'Physicians looking for a quick way to connect patients with a viable option for medical facilities and services.',
            product:
                'A platform designed to seamlessly connect patients with medical facilities and services. Physicians can access and share key information—such as contacts, facility documents, and more—directly from the app.',
            businessGoal:
                'Develop an easy-to-use application with robust sharing capabilities.',
            solution:
                'Design intuitive components that leverage familiar icons and functionality, enabling profiles to showcase comprehensive facility details and easily shareable content.',
          ),
          SizedBox(height: 64),
          ScreensRow4(
            largeImage1: Assets.images.medvendor.homescreen.path,
            largeImage2: Assets.images.medvendor.filter1.path,
            largeImage3: Assets.images.medvendor.filter2.path,
            largeImage4: Assets.images.medvendor.locations.path,
            smallImage1: Assets.images.medvendor.filter1.path,
            smallImage2: Assets.images.medvendor.filter2.path,
            largeMaxwidth: 1200,
            smallMaxwidth: 300,
          ),
          SizedBox(height: 64),
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 64, horizontal: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  'Functionality at the Users Fingertips',
                  textAlign: TextAlign.center,
                  style:
                      AppTypography.s36w300.copyWith(color: Appcolors.darkText),
                ),
                Text(
                  'Finding information and sharing information on Medical Facilities is the core of this app below are the components I created to help accomplish this',
                  textAlign: TextAlign.center,
                  style:
                      AppTypography.s18w300.copyWith(color: Appcolors.darkText),
                ),
              ],
            ),
          ),
          HighlightedWidgets(
            background: Appcolors.medvendorprimary,
            backgroundText: 'Components',
            description:
                'When a user opens a medical facility\'s page, the header provides two sharing options for patients: an expandable QR code for direct sharing and a share button. Additionally, users can save a facility for easy access if they visit it frequently.',
            image: Assets.images.medvendor.frame379.path,
            title: 'Sharing and Saving Capabilities',
            textColor: Appcolors.white,
          ),
          HighlightedWidgets(
            background: Appcolors.medvendorprimary,
            backgroundText: 'Coverage',
            title: 'Insurance and Medical Specialties',
            description:
                'The facility\'s page also features a list of accepted insurances. For locations that accept hundreds of plans, a search function is available to help patients quickly confirm their coverage. Additionally, all pages showcase the medical specialties and services offered at the facility.',
            image: Assets.images.medvendor.insuranceCard.path,
            image2: Assets.images.medvendor.frame382.path,
            textColor: Appcolors.white,
          ),
          SizedBox(height: 64),
          ScreensRow4(
            largeImage1: Assets.images.medvendor.homescreen.path,
            largeImage2: Assets.images.medvendor.login.path,
            largeImage3: Assets.images.medvendor.profile.path,
            smallImage1: Assets.images.medvendor.login.path,
            smallImage2: Assets.images.medvendor.profile.path,
            largeMaxwidth: 900,
            smallMaxwidth: 400,
          ),
          SizedBox(height: 64),
          Revisions(
            title: 'Development past the first Release',
            description:
                'I believe this app has significant potential for growth, particularly in standardizing the information provided by facilities. For a first release, its usability is very straightforward. However, one improvement I’d like to see is an update to the search tab and its functionality. It was removed from the initial release due to backend bugs and confusion around the process of searching and filtering locations from the home screen. That said, incorporating a well-functioning search feature could greatly reduce the time needed to find a facility and enhance the overall user experience.',
            optional: Row(
              mainAxisAlignment: MainAxisAlignment.spaceAround,
              children: [
                Container(
                  decoration: BoxDecoration(
                      color: Appcolors.offWhite,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * .05,
                      maxHeight: MediaQuery.of(context).size.width * .05,
                    ),
                    child: Image.asset(
                      Assets.images.medvendor.filterIcon.path,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
                Icon(
                  Icons.arrow_forward_ios_rounded,
                  color: Appcolors.offWhite,
                ),
                Container(
                  decoration: BoxDecoration(
                      color: Appcolors.offWhite,
                      borderRadius: BorderRadius.all(Radius.circular(5))),
                  padding: const EdgeInsets.all(8.0),
                  child: ConstrainedBox(
                    constraints: BoxConstraints(
                      maxWidth: MediaQuery.of(context).size.width * .05,
                      maxHeight: MediaQuery.of(context).size.width * .05,
                    ),
                    child: Image.asset(
                      Assets.images.medvendor.searchIcon.path,
                      height: 100,
                      width: 100,
                    ),
                  ),
                ),
              ],
            ),
          ),
          ClosingStatement(
            title: 'User Research and Testing for Future Releases',
            title1: 'Reducing Buttons',
            description1:
                'In the Title Component, there are currently three separate buttons for sharing, liking, and scanning a QR code. A potential improvement could be condensing these into a single "more" button or pop-up menu to streamline the interface. However, user testing would be essential to determine whether this change maintains usability and ensures users can still easily access these functions, even though they are not removed—just consolidated into a menu.',
            title2: 'Time Spent on Facility Pages',
            description2:
                'Currently, most Medical Facility Pages tend to be long, especially for well-established facilities offering many services. This could lead to information overload and increase the time users spend navigating the page, potentially impacting the perceived ease of use and overall information structure. To improve usability, it may be worth reconsidering the number of components on each page, as well as how and what information is displayed to ensure a more efficient and user-friendly experience.',
            title3: 'Favorites Duplicates',
            description3:
                'The Favorites page is currently organized by category, similar to the website platform. While this approach makes sense initially, an issue arises when facilities appear in multiple—or in some cases, all—categories. To better understand how users interact with favorites, user research would be valuable in analyzing how they use the feature, including the average number of saved facilities. Based on these insights, it may be worth considering removing category-based filtering and instead displaying all favorited facilities in a straightforward list.',
          ),
          NextProject(
            title: 'Big Creek Construction',
            image: Assets.images.bigcreekmockup.path,
            icon: Icons.arrow_back_rounded,
            background: Appcolors.bigcreek,
            textColor: Appcolors.darkText,
            onTap: () {
              context.go(
                '/BigCreekConstructionMobileApp',
              );
            },
          ),
          CustomFooter(),
        ],
      ),
    );
  }
}
