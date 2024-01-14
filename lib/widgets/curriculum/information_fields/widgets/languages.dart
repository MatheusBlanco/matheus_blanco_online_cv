import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/models/Skill.dart';
import 'package:matheus_blanco_online_cv/utils/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class LanguagesWidget extends StatefulWidget {
  const LanguagesWidget({super.key});

  @override
  State<LanguagesWidget> createState() => _LanguagesWidgetState();
}

class _LanguagesWidgetState extends State<LanguagesWidget> {
  @override
  Widget build(BuildContext context) {
    List<skill> skills = [
      skill('Português', 100),
      skill('Inglês', 80),
      skill('Japonês', 10),
    ];

    return Container(
      width: w,
      margin: const EdgeInsets.only(top: 40),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const SizedBox(
            height: 20,
          ),
          ...skills
              .map((item) => Expanded(
                    flex: 1,
                    child: CircularPercentIndicator(
                      radius: 30.0,
                      lineWidth: 10.0,
                      percent: item.knowledge / 100,
                      progressColor: const Color(0xff1E2532),
                      footer: Text(
                        item.name,
                        style: TextStyle(
                          color: Colors.grey.shade500,
                          fontSize: 14.0,
                        ),
                      ),
                    ),
                  ))
              .toList()
        ],
      ),
    );
  }
}
