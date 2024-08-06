import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_sayedali/model/project_model.dart';
import 'package:portfolio_website_sayedali/res/constants.dart';
import 'package:portfolio_website_sayedali/view%20model/responsive.dart';
import 'package:portfolio_website_sayedali/view/projects/components/title_text.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key, required this.project});
  final Project project;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        // crossAxisAlignment: CrossAxisAlignment.start,
        slivers: [
          if (Responsive.isMobile(context))
            const SliverToBoxAdapter(
              child: SizedBox(
                height: defaultPadding,
              ),
            ),
          SliverToBoxAdapter(child: TitleText(prefix: '', title: project.name)),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: defaultPadding,
            ),
          ),
          SliverToBoxAdapter(
            child: Responsive(
                desktop: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset(project.image1, scale: 2),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset(project.image2, scale: 2),
                      ),
                    ],
                  ),
                ),
                largeMobile: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      child: Image.asset(project.image1, scale: 3),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      child: Image.asset(project.image2, scale: 3),
                    ),
                  ],
                ),
                mobile: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset(project.image1, scale: 3),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset(project.image2, scale: 3),
                      ),
                    ],
                  ),
                ),
                tablet: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset(project.image1, scale: 4),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset(project.image2, scale: 4),
                      ),
                    ],
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 50, vertical: 20),
              child: Text(
                project.description,
                textAlign: TextAlign.center,
                style: GoogleFonts.montserrat(color: Colors.grey, height: 1.5),
              ),
            ),
          ),
          SliverToBoxAdapter(
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButton(
                    onPressed: () {
                      launchUrl(Uri.parse(project.link));
                    },
                    icon: Image.asset(
                      'assets/icons/playstore.png',
                      scale: 18,
                      color: Colors.grey,
                    )),
              ],
            ),
          ),
          const SliverToBoxAdapter(
            child: SizedBox(
              height: 20,
            ),
          )
        ],
      ),
    );
  }
}
