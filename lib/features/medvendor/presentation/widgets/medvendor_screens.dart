import 'package:flutter/material.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class MedvendorScreens extends StatelessWidget {
  const MedvendorScreens({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 600.0,
            ),
            child: Container(
              height: MediaQuery.of(context).size.width * .35,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(Assets.images.medvendor.homescreen.path),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 600.0,
            ),
            child: Container(
              height: MediaQuery.of(context).size.width * .35,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(Assets.images.medvendor.filter1.path),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 600.0,
            ),
            child: Container(
              height: MediaQuery.of(context).size.width * .35,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(Assets.images.medvendor.filter2.path),
            ),
          ),
          ConstrainedBox(
            constraints: BoxConstraints(
              maxHeight: 600.0,
            ),
            child: Container(
              height: MediaQuery.of(context).size.width * .35,
              clipBehavior: Clip.hardEdge,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(10),
              ),
              child: Image.asset(Assets.images.medvendor.locations.path),
            ),
          ),
        ],
      ),
    );
  }
}
