import 'package:flutter/material.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class ScreensRow2 extends StatelessWidget {
  const ScreensRow2({super.key});

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
            child: Image.asset(Assets.images.bigcreek.addTaskJobSite.path),
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
            child: Image.asset(Assets.images.bigcreek.addTask.path),
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
            child: Image.asset(Assets.images.bigcreek.addTaskAGC.path),
          ),
        ),
      ],
    );
  }
}
