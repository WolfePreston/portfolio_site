import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/utils/widgets/footer.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/core/theme/typography.dart';
import 'package:portfolio_flutter/features/for_fun/presentation/widgets/lottie_container.dart';
import 'package:portfolio_flutter/features/for_fun/presentation/widgets/title_divider.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class ForFunPage extends StatefulWidget {
  const ForFunPage({super.key});

  @override
  State<ForFunPage> createState() => _ForFunPageState();
}

class _ForFunPageState extends State<ForFunPage> with TickerProviderStateMixin {
  late List<AnimationController> controllers;
  int? activeAnimationIndex;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        return SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              TitleDivider(
                title: 'MedVendor',
                subtitle: 'Loading and intro animations',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LottieContainer(
                    asset: Assets.images.medvendorNoOutline,
                    borderColor: Appcolors.medvendorprimary,
                    index: 0,
                  ),
                  LottieContainer(
                    asset: Assets.images.medvendor2,
                    borderColor: Appcolors.medvendorprimary,
                    index: 1,
                  ),
                ],
              ),
              TitleDivider(
                title: 'Jethro',
                subtitle: 'Lottie animations',
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  LottieContainer(
                    asset: Assets.images.jethro1,
                    borderColor: Appcolors.jethro,
                    index: 2,
                  ),
                  LottieContainer(
                    asset: Assets.images.diggingBoneUp,
                    borderColor: Appcolors.jethro,
                    index: 3,
                  ),
                ],
              ),
              TitleDivider(
                title: 'Big Creek Construction',
                subtitle: 'Loading animations',
              ),
              LottieContainer(
                asset: Assets.images.bccTruck,
                borderColor: Appcolors.darkText,
                index: 4,
              ),
              const CustomFooter(),
            ],
          ),
        );
      },
    );
  }
}
