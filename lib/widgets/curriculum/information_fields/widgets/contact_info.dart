// ignore_for_file: avoid_web_libraries_in_flutter

import 'dart:io';
import 'dart:js' as js;

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:url_launcher/url_launcher.dart';

class ContactInfo extends StatefulWidget {
  const ContactInfo({super.key});

  @override
  State<ContactInfo> createState() => _ContactInfoState();
}

class _ContactInfoState extends State<ContactInfo> {
  @override
  Widget build(BuildContext context) {
    var phone = "+55 (61) 98271-2626";
    const email = 'msallesblanco@gmail.com';
    const git = 'github.com/MatheusBlanco';

    whatsapp() async {
      var androidUrl = "whatsapp://send?phone=$phone&text=Boa tarde!";
      var iosUrl = "https://wa.me/$phone?text=${Uri.parse('Boa tarde!')}";

      try {
        if (kIsWeb) {
          await launchUrl(Uri.parse(androidUrl));
        } else {
          if (Platform.isIOS) {
            await launchUrl(Uri.parse(iosUrl));
          } else {
            await launchUrl(Uri.parse(androidUrl));
          }
        }
      } on Exception {
        EasyLoading.showError('WhatsApp is not installed.');
      }
    }

    emailLaunch() async {
      const mailtoLink =
          'mailto:email@example.com?subject=Subject&body=Body%20goes%20here';
      // Convert the Mailto instance into a string.
      // Use either Dart's string interpolation
      // or the toString() method.
      if (kIsWeb) {
        js.context.callMethod('open', [mailtoLink]);
      } else {
        await launchUrl(Uri.parse(mailtoLink));
      }
    }

    gitLaunch() async {
      const link = 'https://$git';

      js.context.callMethod('open', [link]);
    }

    return Column(
      children: [
        const SizedBox(
          height: 60,
        ),
        ContactWidget(
          contact: phone,
          method: whatsapp,
          backgroundColor: Colors.green.shade600,
          foregroundColor: Colors.white,
          icon: const FaIcon(FontAwesomeIcons.whatsapp),
        ),
        const SizedBox(
          height: 20,
        ),
        ContactWidget(
          contact: email,
          method: emailLaunch,
          backgroundColor: Colors.blueAccent,
          foregroundColor: Colors.white,
          icon: const FaIcon(FontAwesomeIcons.google),
        ),
        const SizedBox(
          height: 20,
        ),
        ContactWidget(
          contact: git,
          method: gitLaunch,
          backgroundColor: Colors.black,
          foregroundColor: Colors.white,
          icon: const FaIcon(
            FontAwesomeIcons.github,
          ),
        )
      ],
    );
  }
}

class ContactWidget extends StatelessWidget {
  const ContactWidget({
    super.key,
    required this.contact,
    required this.method,
    required this.backgroundColor,
    required this.foregroundColor,
    required this.icon,
  });

  final Function() method;
  final String contact;
  final Color backgroundColor;
  final Color foregroundColor;
  final FaIcon icon;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      child: Row(
        children: [
          FloatingActionButton(
            backgroundColor: backgroundColor,
            foregroundColor: foregroundColor,
            shape: const CircleBorder(),
            onPressed: () {
              method();
            },
            child: icon,
          ),
          const SizedBox(
            width: 20,
          ),
          Text(
            contact,
            style: const TextStyle(
              fontSize: 22,
              color: Colors.grey,
            ),
            overflow: TextOverflow.ellipsis,
          )
        ],
      ),
    );
  }
}
