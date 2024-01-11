import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/widgets/about_me_info.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/widgets/information_fields_widget.dart';

class FieldCollectionLeft extends StatefulWidget {
  const FieldCollectionLeft({super.key});

  @override
  State<FieldCollectionLeft> createState() => _FieldCollectionLeftState();
}

class _FieldCollectionLeftState extends State<FieldCollectionLeft> {
  @override
  Widget build(BuildContext context) {
    const String position = 'left';

    return const SizedBox(
      child: Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            InformationFieldWidget(
              position: position,
              title: 'Sobre mim',
              child: AboutMeInfo(),
            ),
            InformationFieldWidget(position: position, title: 'Skills'),
            InformationFieldWidget(position: position, title: 'Línguas'),
          ],
        ),
      ),
    );
  }
}
