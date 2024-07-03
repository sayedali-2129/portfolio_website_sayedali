import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../../res/constants.dart';
import 'header_info.dart';

class PersonalInfo extends StatelessWidget {
  const PersonalInfo({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const SizedBox(
          height: defaultPadding / 2,
        ),
        const AreaInfoText(title: 'Contact', text: '+91 7025492129'),
        const AreaInfoText(title: 'Email', text: 'sayedali8@gmail.com'),
        const AreaInfoText(title: 'LinkedIn', text: '@sayedali'),
        const AreaInfoText(title: 'Github', text: '@sayedali-2129'),
        const SizedBox(
          height: defaultPadding,
        ),
        Text(
          'Skills',
          style: GoogleFonts.montserrat(color: Colors.white),
        ),
        const SizedBox(
          height: defaultPadding,
        ),
      ],
    );
  }
}
