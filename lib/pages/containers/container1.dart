import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/utils/colors.dart';
import 'package:responsive_builder/responsive_builder.dart';

import '../../utils/constants.dart';

class ContainerOne extends StatefulWidget {
  const ContainerOne({super.key});

  @override
  State<ContainerOne> createState() => _ContainerOneState();
}

class _ContainerOneState extends State<ContainerOne> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: Mobile(),
      desktop: Desktop(),
    );
  }

  Widget Mobile() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w! / 10, vertical: 20),
      child: Column(
        children: [
          Container(
            height: w! / 1.2,
            width: w! / 1.2,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1), fit: BoxFit.contain)),
          ),
          SizedBox(
            height: 20,
          ),
          Text(
            'Track your \nExpenses to \nSave Money',
            textAlign: TextAlign.center,
            style: TextStyle(
                fontSize: w! / 10, fontWeight: FontWeight.bold, height: 1),
          ),
          SizedBox(
            height: 5,
          ),
          Text(
            'Helps you to organize your income and expenses',
            textAlign: TextAlign.center,
            style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
          ),
          SizedBox(
            height: 30,
          ),
          DemoContainer(),
          SizedBox(
            height: 10,
          ),
          BottomText()
        ],
      ),
    );
  }

  Widget Desktop() {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: w!/10, vertical: 20),
      child: Row(
        children: [
          Expanded(
              child: Container(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Track your \nExpenses to \nSave Money',
                      style: TextStyle(
                        fontSize: w!/20,
                        fontWeight: FontWeight.bold,
                        height: 1.2,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    const Text(
                        'Helps you to organize your income and expenses',
                      style: TextStyle(
                        color: Colors.grey,
                        fontSize: 24,
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        DemoContainer(),
                        SizedBox(width: 20),
                        BottomText()
                      ],
                    )
                  ],
                ),
              )
          ),
          Expanded(
            child: Container(
              height: 530,
              decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(illustration1),
                    fit: BoxFit.contain,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class BottomText extends StatelessWidget {
  const BottomText({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Text(
      '— Web, iOs and Android',
      style: TextStyle(color: Colors.grey.shade600, fontSize: 16),
    );
  }
}

class DemoContainer extends StatelessWidget {
  const DemoContainer({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 45,
      child: DemoButton(),
    );
  }
}

class DemoButton extends StatelessWidget {
  const DemoButton({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ElevatedButton.icon(
      style: ElevatedButton.styleFrom(
        backgroundColor: AppColors.primary,
        foregroundColor: Colors.white, // text color
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(10),
        )
      ),
      onPressed: (){},
      label: const Text('Try free demo'),
      icon: const Icon(Icons.arrow_drop_down),
    );
  }
}
