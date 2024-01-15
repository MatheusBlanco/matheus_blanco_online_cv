import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/utils/constants.dart';
import 'package:matheus_blanco_online_cv/widgets/timeline_widget/timeline.dart';

class ProfessionalExperiences extends StatefulWidget {
  const ProfessionalExperiences({super.key});

  @override
  State<ProfessionalExperiences> createState() =>
      _ProfessionalExperiencesState();
}

class _ProfessionalExperiencesState extends State<ProfessionalExperiences> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: w,
      child: TimelineWidget(
        indicatorColor: Colors.yellow,
        indicatorSize: 10,
        gutterSpacing: 30,
        children: <Widget>[
          Container(height: 10, color: Colors.blue),
          Container(height: 5, color: Colors.blue),
          Container(height: 2, color: Colors.blue),
          Container(height: 10, color: Colors.blue),
        ],
      ),
    );
  }
}
