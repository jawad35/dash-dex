import 'package:dash_money/src/modules/home/mobile_home.dart';
import 'package:dash_money/src/modules/home/web_home.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const WebHomeScreen();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const MobileHomeScreen();
          }

          return const MobileHomeScreen();
        },
      ),
    );
  }
}
