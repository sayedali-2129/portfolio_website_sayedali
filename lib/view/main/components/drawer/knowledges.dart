import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';

import 'knowledge.dart';

class Knowledges extends StatelessWidget {
  const Knowledges({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        const Divider(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10),
          child: Text(
            'Knowledge',
            style: GoogleFonts.montserrat(color: Colors.white),
          ),
        ),
        const KnowledgeText(knowledge: 'Flutter, Dart'),
        const KnowledgeText(knowledge: 'Firebase, Provider'),
        const KnowledgeText(knowledge: 'Git, Github'),
      ],
    );
  }
}
