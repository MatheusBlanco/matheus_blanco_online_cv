import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/models/Skill.dart';
import 'package:matheus_blanco_online_cv/utils/constants.dart';
import 'package:percent_indicator/percent_indicator.dart';

class MySkillsWidget extends StatefulWidget {
  const MySkillsWidget({super.key});

  @override
  State<MySkillsWidget> createState() => _MySkillsWidgetState();
}

class _MySkillsWidgetState extends State<MySkillsWidget> {
  @override
  Widget build(BuildContext context) {
    List<skill> skills = [
      skill('React', 100),
      skill('BackEnd', 60),
      skill('SQL', 40),
      skill('Flutter', 60),
      skill('Requisitos', 60),
      skill('CSS', 80),
      skill('HTML', 80),
      skill('React Native', 80),
    ];

    return Container(
      width: w,
      margin: const EdgeInsets.only(top: 40),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ...skills
              .map((item) => Column(children: [
                    Row(
                      children: [
                        Expanded(
                          flex: 1,
                          child: Text(
                            item.name,
                            style: TextStyle(
                              fontWeight: FontWeight.bold,
                              fontSize: 16,
                              color: Colors.grey.shade700,
                            ),
                          ),
                        ),
                        Expanded(
                          flex: 2,
                          child: SizedBox(
                            height: 15,
                            width: w! * 0.2,
                            child: LinearPercentIndicator(
                              lineHeight: 7,
                              percent: item.knowledge / 100,
                              backgroundColor: Colors.grey.shade300,
                              progressColor: Colors.yellow,
                              barRadius: const Radius.circular(16),
                            ),
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                  ]))
              .toList()
        ],
      ),
    );
  }
}
