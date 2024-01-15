import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/widgets/contact_info.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/widgets/information_fields_widget.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/widgets/professional_experiences.dart';

class FieldCollectionRight extends StatefulWidget {
  const FieldCollectionRight({super.key});

  @override
  State<FieldCollectionRight> createState() => _FieldCollectionRightState();
}

class _FieldCollectionRightState extends State<FieldCollectionRight> {
  @override
  Widget build(BuildContext context) {
    const String position = 'right';

    return const SizedBox(
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            InformationFieldWidget(
              position: position,
              title: 'Experiência',
              child: ProfessionalExperiences(),
            ),
            InformationFieldWidget(position: position, title: 'Educação'),
            InformationFieldWidget(
              position: position,
              title: 'Contato',
              child: ContactInfo(),
            ),
          ],
        ),
      ),
    );
  }
}
