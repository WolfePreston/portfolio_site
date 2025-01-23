import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';

class ProjectItem {
  final String image;
  final String title;
  final String description;
  final String url;
  final Color color;

  ProjectItem({
    required this.image,
    required this.title,
    required this.description,
    required this.url,
    required this.color,
  });
}

final List<ProjectItem> projectList = [
  ProjectItem(
      image: Assets.images.bigcreekmockup.path,
      title: 'Big Creek Construction',
      description: 'Mobile Application for employee timesheets',
      url: '/BigCreekConstructionMobileApp',
      color: Appcolors.bigcreek),
  ProjectItem(
      image: Assets.images.medvendormockup.path,
      title: 'MedVendor',
      description: 'Mobile Application for searching medical facilities',
      url: '/MedVendor',
      color: Appcolors.medvendorprimary),
  // ProjectItem(
  //   image: Assets.images.bridgecare.home.path,
  //   title: 'Bridgecare+',
  //   description: 'Mobile Application for coaching international students',
  //   url: '/BridgeCare',
  //   color: Colors.transparent,
  // ),
  // ProjectItem(
  //   image: Assets.images.wellspharmacy.login.path,
  //   title: 'Wells Pharmacy',
  //   description: 'Web Application for physicians prescriptions',
  //   url: '/WellPharmacy',
  //   color: Colors.transparent,
  // )
];
