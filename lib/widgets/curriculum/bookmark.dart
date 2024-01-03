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
    return Stack(
      children: [
        Container(
          height: MediaQuery.of(context).size.height * 0.7,
          width: width,
          decoration: const BoxDecoration(
              borderRadius: BorderRadius.only(
                topLeft: Radius.circular(200),
                topRight: Radius.circular(200),
              ),
            color: Color(0xffD9E3ED),
          ),
        ),
        Positioned(
          top: 10,
          left: 10,
          child: Container(
            height: MediaQuery.of(context).size.height * 0.7,
            width: width *0.94,
            decoration: const BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(200),
                  topRight: Radius.circular(200),
                ),
              color: Color(0xff353D51),
            ),
          )
        ),
        Positioned(
            top: 20,
            left: 20,
            child: Container(
              height: width * 0.88,
              width: width * 0.88,
              decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(200),
                color: const Color(0xff1E2532),
              ),
            )
        ),
        Positioned(
            top: 30,
            left: 30,
            child: Container(
              height: width * 0.82,
              width: width * 0.82,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.white,
              ),
            )
        ),
        Positioned(
            top: 40,
            left: 40,
            child: Container(
              height: width * 0.76,
              width: width * 0.76,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(200),
                color: Colors.yellow,
              ),
            )
        )
      ],
    );
  }
}
