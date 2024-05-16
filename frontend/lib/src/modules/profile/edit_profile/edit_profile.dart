import 'package:dash_money/src/modules/profile/edit_profile/edit_profile_mobile.dart';
import 'package:dash_money/src/modules/profile/edit_profile/edit_profile_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class EditProfilePage extends StatefulWidget {
  const EditProfilePage({super.key});

  @override
  State<EditProfilePage> createState() => _EditProfilePageState();
}

class _EditProfilePageState extends State<EditProfilePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const EditProfileWeb();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const EditProfileMobile();
          }

          return const EditProfileMobile();
        },
      ),
    );
  }
}
