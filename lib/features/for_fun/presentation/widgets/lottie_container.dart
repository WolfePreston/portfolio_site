import 'package:flutter/material.dart';
import 'package:lottie/lottie.dart';

class LottieContainer extends StatelessWidget {
  final String asset;
  final Color borderColor;
  final int index;
  const LottieContainer(
      {required this.asset,
      required this.borderColor,
      required this.index,
      super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(16.0),
      child: ConstrainedBox(
        constraints: const BoxConstraints(maxWidth: 450, maxHeight: 450),
        child: Container(
          clipBehavior: Clip.hardEdge,
          decoration: BoxDecoration(
            borderRadius: const BorderRadius.all(Radius.circular(10)),
            border: Border.all(color: borderColor, width: 2),
          ),
          child: Lottie.asset(asset,
              fit: BoxFit.fitWidth,
              width: (MediaQuery.of(context).size.width / 2) - 40,
              height: (MediaQuery.of(context).size.width / 2) - 40,
              alignment: Alignment(0, 1)),
        ),
      ),
    );
  }
}
