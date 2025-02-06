import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/utils/widgets/product_descriptor.dart';

class ProductDescriptionManager extends StatelessWidget {
  final String users;
  final String product;
  final String businessGoal;
  final String solution;
  final Color accentColor;
  const ProductDescriptionManager({
    super.key,
    required this.businessGoal,
    required this.product,
    required this.solution,
    required this.users,
    required this.accentColor,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          ProductDescriptor(
            title: 'The Users: ',
            description: users,
            accentColor: accentColor,
          ),
          ProductDescriptor(
            title: 'The Product: ',
            description: product,
            accentColor: accentColor,
          ),
          ProductDescriptor(
            title: 'The Business Goal: ',
            description: businessGoal,
            accentColor: accentColor,
          ),
          ProductDescriptor(
            title: 'The Solution: ',
            description: solution,
            accentColor: accentColor,
          ),
        ],
      ),
    );
  }
}
