import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/bookmark.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/field_collection_left.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/field_collection_right.dart';
import 'package:responsive_builder/responsive_builder.dart';

class CurriculumWidget extends StatefulWidget {
  const CurriculumWidget({super.key});

  @override
  State<CurriculumWidget> createState() => _CurriculumWidgetState();
}

class _CurriculumWidgetState extends State<CurriculumWidget> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: mobileCurriculum(),
      desktop: desktopCurriculum(),
    );
  }

  Widget mobileCurriculum() {
    return Container(
      width: MediaQuery.of(context).size.width,
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 20),
      child: const Column(
        children: [
          BookMark(),
          SizedBox(height: 20),
          FieldCollectionLeft(),
          SizedBox(height: 20),
          FieldCollectionRight(),
        ],
      ),
    );
  }

  Widget desktopCurriculum() {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 0, vertical: 100),
      child: const Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          FieldCollectionLeft(),
          BookMark(),
          FieldCollectionRight(),
        ],
      ),
    );
  }
}
