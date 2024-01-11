import 'package:flutter/material.dart';

class DarkerContainer extends StatelessWidget {
  const DarkerContainer({
    super.key,
    required this.width,
    required this.position,
    required this.title,
  });

  final String position;
  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: width * 0.61,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(150),
        color: Colors.white,
      ),
      child: Stack(children: [
        position == 'left'
            ? Positioned(
                right: 0,
                child: DarkPill(
                  width: width,
                  title: title,
                ),
              )
            : Positioned(
                left: 0,
                child: DarkPill(width: width, title: title),
              ),
      ]),
    );
  }
}

class DarkPill extends StatelessWidget {
  const DarkPill({
    super.key,
    required this.width,
    required this.title,
  });

  final double width;
  final String title;

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 60,
      width: width * 0.59,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(200),
        color: const Color(0xff353D51),
      ),
      child: Align(
        alignment: Alignment.center,
        child: Text(
          title,
          style: const TextStyle(
            color: Colors.white,
            fontSize: 24,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}
