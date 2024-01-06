import 'dart:developer';

import 'package:flutter/material.dart';

class InformationFieldWidget extends StatefulWidget {
  const InformationFieldWidget({
    super.key,
    required this.position,
  });

  final String position;

  @override
  State<InformationFieldWidget> createState() => IinformationFieldStateWidget();
}

class IinformationFieldStateWidget extends State<InformationFieldWidget> {
  @override
  Widget build(BuildContext context) {
    var width = MediaQuery.of(context).size.width * 0.3;

    log(
      'data: $widget',
    );
    return SizedBox(
      height: MediaQuery.of(context).size.height * 0.33,
      width: width,
      child: Column(
        children: [
          Container(
            height: 60,
            width: width,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(200),
              color: Colors.yellow,
            ),
            child: Stack(
              children: [
                Positioned(
                  child: Container(
                    height: 60,
                    width: width * 0.3,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(200),
                      color: const Color(0xff353D51),
                    ),
                    child: const Text('a'),
                  ),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
