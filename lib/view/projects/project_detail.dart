import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_website_sayedali/res/constants.dart';
import 'package:portfolio_website_sayedali/view%20model/responsive.dart';
import 'package:portfolio_website_sayedali/view/projects/components/title_text.dart';
import 'package:url_launcher/url_launcher.dart';

class ProjectDetails extends StatelessWidget {
  const ProjectDetails({super.key});

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
          const SliverToBoxAdapter(
              child: TitleText(prefix: 'Chahel', title: 'E-learning App')),
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
                        child: Image.asset('assets/images/1.png', scale: 2),
                      ),
                      const SizedBox(width: 20),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset('assets/images/2.png', scale: 2),
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
                      child: Image.asset('assets/images/1.png', scale: 3),
                    ),
                    const SizedBox(height: 20),
                    Container(
                      clipBehavior: Clip.antiAlias,
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(16)),
                      child: Image.asset('assets/images/2.png', scale: 3),
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
                        child: Image.asset('assets/images/1.png', scale: 3),
                      ),
                      const SizedBox(height: 20),
                      Container(
                        clipBehavior: Clip.antiAlias,
                        decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(16)),
                        child: Image.asset('assets/images/2.png', scale: 3),
                      ),
                    ],
                  ),
                ),
                tablet: Padding(
                  padding: const EdgeInsets.all(defaultPadding),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Image.asset('assets/images/1.png'),
                      Image.asset('assets/images/2.png'),
                    ],
                  ),
                )),
          ),
          SliverToBoxAdapter(
            child: Padding(
              padding: const EdgeInsets.all(defaultPadding),
              child: Text(
                "Chahel Learning App, is a comprehensive e-learning companion available on both Android and iOS platforms. With courses spanning from kindergarten to 12th standard, students can embark on an educational journey customized to their needs. The app features exclusive access to Chahel's private YouTube channel, offering high-quality content designed to support students' academic growth. Whether mastering foundational concepts or tackling advanced topics, the Chahel Learning App provides a structured learning environment for students of all levels. With seamless access to educational resources within the app, students can focus on their studies without distractions.",
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
                      launchUrl(Uri.parse(
                          'https://play.google.com/store/apps/details?id=com.chahel_learning'));
                    },
                    icon: Image.asset(
                      'assets/icons/playstore.png',
                      scale: 18,
                      color: Colors.grey,
                    )),
              ],
            ),
          )
        ],
      ),
    );
  }
}
