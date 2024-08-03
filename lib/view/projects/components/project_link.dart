import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../model/project_model.dart';

class ProjectLinks extends StatelessWidget {
  final int index;
  const ProjectLinks({super.key, required this.index});
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Row(
          children: [
            IconButton(
                onPressed: () {
                  launchUrl(Uri.parse(projectList[index].link));
                },
                icon: Image.asset(
                  'assets/icons/playstore.png',
                  scale: 18,
                  color: Colors.grey,
                )),
          ],
        ),
        const Spacer(),
        TextButton(
            onPressed: () {
              launchUrl(Uri.parse(projectList[index].link));
            },
            child: Text(
              'Read More>>',
              overflow: TextOverflow.ellipsis,
              style: GoogleFonts.montserrat(
                  color: Colors.amber,
                  fontWeight: FontWeight.bold,
                  fontSize: 10),
            ))
      ],
    );
  }
}
