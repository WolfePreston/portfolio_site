import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/appbar.dart';

class BaseScreen extends StatelessWidget {
  final Widget child;

  const BaseScreen({
    super.key,
    required this.child,
  });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppBar(),
      body: child,
    );
  }
}
