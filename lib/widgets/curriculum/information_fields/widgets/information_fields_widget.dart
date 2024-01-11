import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/information_fields/widgets/darker_container.dart';

class InformationFieldWidget extends StatefulWidget {
  const InformationFieldWidget({
    super.key,
    required this.position,
    required this.title,
    this.child = const Placeholder(),
  });

  final Widget child;
  final String position;
  final String title;

  @override
  State<InformationFieldWidget> createState() => InformationFieldStateWidget();
}

class InformationFieldStateWidget extends State<InformationFieldWidget> {
  @override
  Widget build(BuildContext context) {
    var position = widget.position;
    var screenWidth = MediaQuery.of(context).size.width;
    var width = screenWidth < 700 ? screenWidth * 0.8 : screenWidth * 0.3;

    return ConstrainedBox(
      constraints: BoxConstraints(
        minHeight: 5.0,
        minWidth: width,
        maxHeight: 500,
        maxWidth: width,
      ),
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
                position == 'left'
                    ? Positioned(
                        right: 0,
                        child: DarkerContainer(
                          width: width,
                          position: position,
                          title: widget.title,
                        ),
                      )
                    : Positioned(
                        left: 0,
                        child: DarkerContainer(
                          width: width,
                          position: position,
                          title: widget.title,
                        ),
                      )
              ],
            ),
          ),
          widget.child,
        ],
      ),
    );
  }
}
