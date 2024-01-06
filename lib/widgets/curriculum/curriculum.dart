import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/bookmark.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/field_collection_left.dart';

class CurriculumWidget extends StatefulWidget {
  const CurriculumWidget({super.key});

  @override
  State<CurriculumWidget> createState() => _CurriculumWidgetState();
}

class _CurriculumWidgetState extends State<CurriculumWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 100),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          FieldCollectionLeft(),
          BookMark(),
          FieldCollectionLeft(),
        ],
      ),
    );
  }
}
