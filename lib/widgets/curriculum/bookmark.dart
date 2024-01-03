import 'package:flutter/material.dart';

class BookMark extends StatefulWidget {
  const BookMark({super.key});

  @override
  State<BookMark> createState() => _BookMarkState();
}

class _BookMarkState extends State<BookMark> {
  @override
  Widget build(BuildContext context) {
    const width = 333.8;
    return Column(
      children: [
        Stack(
          children: [
            Container(
              height: MediaQuery.of(context).size.height,
              width: width,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: const Color(0xffD9E3ED),
              ),
            ),
            PositionedContainer(
              width: width,
              top: 10,
              left: 10,
              height: MediaQuery.of(context).size.height * 0.98,
              color: const Color(0xff353D51),
            ),
            const PositionedContainer(
              width: width * 0.93,
              top: 20,
              left: 20,
              height: width * 0.88,
              color: Color(0xff1E2532),
            ),
            const PositionedContainer(
              width: width * 0.866,
              top: 30,
              left: 30,
              height: width * 0.82,
              color: Colors.white,
            ),
            const PositionedContainer(
              width: width * 0.8,
              top: 40,
              left: 40,
              height: width * 0.76,
              color: Colors.yellow,
            ),
          ],
        ),
      ],
    );
  }
}

class PositionedContainer extends StatelessWidget {
  const PositionedContainer({
    super.key,
    required this.width,
    required this.top,
    required this.left,
    required this.height,
    required this.color,
  });

  final color;
  final double left;
  final double top;
  final height;
  final double width;

  @override
  Widget build(BuildContext context) {
    return Positioned(
        top: top,
        left: left,
        child: Container(
          height: height,
          width: width * 0.94,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(200),
            color: color,
          ),
        ));
  }
}
