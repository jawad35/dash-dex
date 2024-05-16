import 'package:dash_money/src/modules/authentication/login/mobile_login.dart';
import 'package:dash_money/src/modules/authentication/login/web_login.dart';
import 'package:dash_money/src/modules/authentication/welcome/mobile_welcome.dart';
import 'package:dash_money/src/modules/authentication/welcome/web_welcome.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class WelcomePage extends StatefulWidget {
  const WelcomePage({super.key});

  @override
  State<WelcomePage> createState() => _WelcomePageState();
}

class _WelcomePageState extends State<WelcomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const WebWelcome();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const MobileWelcomeScreen();
          }

          return const MobileWelcomeScreen();
        },
      ),
    );
  }
}
