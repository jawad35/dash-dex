import 'package:dash_money/src/modules/profile/profile/profile_mobile.dart';
import 'package:dash_money/src/modules/profile/profile/profile_web.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

class ProfilePage extends StatefulWidget {
  const ProfilePage({super.key});

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const ProfileWeb();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const ProfileMobile();
          }

          return const ProfileMobile();
        },
      ),
    );
  }
}
