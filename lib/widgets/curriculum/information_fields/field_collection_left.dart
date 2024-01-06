import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/information_fields_widget.dart';

class FieldCollectionLeft extends StatefulWidget {
  const FieldCollectionLeft({super.key});

  @override
  State<FieldCollectionLeft> createState() => _FieldCollectionLeftState();
}

class _FieldCollectionLeftState extends State<FieldCollectionLeft> {
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: MediaQuery.of(context).size.height,
      child: const Padding(
        padding: EdgeInsets.only(left: 80, right: 80),
        child: Column(
          children: [
            InformationFieldWidget(
              position: 'left',
            ),
          ],
        ),
      ),
    );
  }
}
