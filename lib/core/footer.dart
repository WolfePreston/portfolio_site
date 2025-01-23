import 'package:flutter/material.dart';
import 'package:portfolio_flutter/core/theme/colors.dart';
import 'package:portfolio_flutter/gen/assets.gen.dart';
import 'package:url_launcher/url_launcher.dart';

class CustomFooter extends StatelessWidget {
  const CustomFooter({super.key});

  @override
  Widget build(BuildContext context) {
    return BottomAppBar(
      color: Appcolors.offWhite,
      child: InkWell(
        hoverColor: Colors.transparent,
        onTap: () {
          _launchURL();
        },
        child: Container(
          decoration: BoxDecoration(
            border: Border(
              top: BorderSide(
                color: Appcolors.lightGrey,
                width: 1,
              ),
            ),
          ),
          width: MediaQuery.of(context).size.width,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(
                width: 24,
                height: 24,
                child: Image.asset(
                  Assets.images.linkedin.path,
                  fit: BoxFit.fill,
                ),
              ),
              Container(
                padding: EdgeInsets.only(left: 8),
                child: Text('Connect with me on Linkedin!'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

Future<void> _launchURL() async {
  final Uri url =
      Uri.parse('https://www.linkedin.com/in/preston-wolfe-759270201/');
  if (await canLaunchUrl(url)) {
    await launchUrl(url, mode: LaunchMode.externalApplication);
  } else {
    throw 'Could not launch $url';
  }
}
