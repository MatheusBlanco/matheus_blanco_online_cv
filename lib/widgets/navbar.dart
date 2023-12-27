import 'package:flutter/material.dart';
import 'package:matheus_blanco_online_cv/utils/colors.dart';
import 'package:matheus_blanco_online_cv/utils/constants.dart';
import 'package:matheus_blanco_online_cv/utils/styles.dart';
import 'package:responsive_builder/responsive_builder.dart';

class Navbar extends StatefulWidget {
  const Navbar({super.key});

  @override
  State<Navbar> createState() => _NavbarState();
}

class _NavbarState extends State<Navbar> {
  @override
  Widget build(BuildContext context) {
    return ScreenTypeLayout(
      mobile: MobileNavbar(),
      desktop: DesktopNavbar(),
    );
  }

  Widget MobileNavbar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          const Icon(Icons.menu),
          navLogo()
        ],
      ),
    );
  }

  Widget DesktopNavbar(){
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
      height: 70,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceEvenly,
        children: [
          navLogo(),
          Row(
            children: [
              navButton('Features'),
              navButton('About us'),
              navButton('Pricing'),
              navButton('Feedback'),
            ],
          ),
          SizedBox(
            height: 45,
            child: ElevatedButton(
              style: borderedButtonStyle,
              onPressed: (){},
              child: Text('Request a demo', style: TextStyle(color: AppColors.primary),),
            ),
          )
        ],
      ),
    );
  }

  Widget navLogo() {
    return Container(
      width: 110,
      decoration: const BoxDecoration(
        image: DecorationImage(image: AssetImage(logo))
      ),
    );
  }

  Widget navButton(String text) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 10),
      child: TextButton(
        onPressed: (){},
        child: Text(text, style: const TextStyle(
          color: Colors.black,
          fontSize: 18
        ),
        ),
      ),
    );
  }
}
