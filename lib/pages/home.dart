import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/widgets/curriculum/curriculum.dart';

import '../utils/constants.dart';

class Home extends StatefulWidget {
  const Home({super.key});

  @override
  State<Home> createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    w = MediaQuery.of(context).size.width;
    h = MediaQuery.of(context).size.height;

    return const Scaffold(
      body: SingleChildScrollView(
          child: Column(
        children: [CurriculumWidget()],
      )),
    );
  }
}
