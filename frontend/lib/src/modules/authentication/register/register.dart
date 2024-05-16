import 'package:dash_money/src/modules/authentication/register/mobile_register.dart';
import 'package:dash_money/src/modules/authentication/register/web_resgister.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class RegisterPage extends StatefulWidget {
  const RegisterPage({super.key});

  @override
  State<RegisterPage> createState() => _RegisterPageState();
}

class _RegisterPageState extends State<RegisterPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const WebRegisterScreen();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const MobileRegisterScreen();
          }

          return const MobileRegisterScreen();
        },
      ),
    );
  }
}
