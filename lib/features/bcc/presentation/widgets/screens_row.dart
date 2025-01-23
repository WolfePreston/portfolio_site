import 'package:flutter/material.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class ScreensRow extends StatelessWidget {
  const ScreensRow({super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceAround,
      children: [
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 600.0,
          ),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.5,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(Assets.images.bigcreek.login.path),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 600.0,
          ),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.5,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(Assets.images.bigcreek.homescreen.path),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 600.0,
          ),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.5,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(Assets.images.bigcreek.offlineData.path),
          ),
        ),
        ConstrainedBox(
          constraints: BoxConstraints(
            maxHeight: 600.0,
          ),
          child: Container(
            height: MediaQuery.of(context).size.width * 0.5,
            clipBehavior: Clip.hardEdge,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(10),
            ),
            child: Image.asset(Assets.images.bigcreek.jobSiteAdded.path),
          ),
        ),
      ],
    );
  }
}
