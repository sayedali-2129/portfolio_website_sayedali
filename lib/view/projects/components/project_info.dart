import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:portfolio_website_sayedali/view/projects/components/project_deatail.dart';
import 'package:portfolio_website_sayedali/view/projects/project_detail.dart';

import '../../../res/constants.dart';
import '../../../view model/getx_controllers/projects_controller.dart';

class ProjectStack extends StatelessWidget {
  final controller = Get.put(ProjectController());
  ProjectStack({super.key, required this.index});
  final int index;
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onHover: (value) {
        controller.onHover(index, value);
      },
      onTap: () {
        // ImageViewer(context, projectList[index].image);
        // SfPdfViewer.asset('assets/images/chahel portfolio.pdf');
        Navigator.push(
            context,
            MaterialPageRoute(
              builder: (context) => const ProjectDetails(),
            ));
      },
      borderRadius: BorderRadius.circular(30),
      child: AnimatedContainer(
        padding: const EdgeInsets.only(
            left: defaultPadding, right: defaultPadding, top: defaultPadding),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(30), color: bgColor),
        duration: const Duration(milliseconds: 500),
        child: ProjectDetail(
          index: index,
        ),
      ),
    );
  }
}
