import 'package:flutter/material.dart';
import 'package:portfolio_website_sayedali/view/certifications/certifications.dart';
import 'package:portfolio_website_sayedali/view/intro/introduction.dart';
import 'package:portfolio_website_sayedali/view/main/main_view.dart';
import 'package:portfolio_website_sayedali/view/projects/project_view.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return MainView(pages: [
      const Introduction(),
      ProjectsView(),
      Certifications(),
    ]);
  }
}
