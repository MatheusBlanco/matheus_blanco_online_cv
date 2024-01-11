import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/widgets/information_fields_widget.dart';

class FieldCollectionRight extends StatefulWidget {
  const FieldCollectionRight({super.key});

  @override
  State<FieldCollectionRight> createState() => _FieldCollectionRightState();
}

class _FieldCollectionRightState extends State<FieldCollectionRight> {
  @override
  Widget build(BuildContext context) {
    const String position = 'right';

    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: const Padding(
        padding: EdgeInsets.only(left: 40, right: 40),
        child: Column(
          children: [
            InformationFieldWidget(position: position, title: 'Contato'),
            InformationFieldWidget(position: position, title: 'Experiência'),
            InformationFieldWidget(position: position, title: 'Educação'),
          ],
        ),
      ),
    );
  }
}
