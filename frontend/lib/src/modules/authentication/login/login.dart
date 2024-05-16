import 'package:dash_money/src/modules/authentication/login/mobile_login.dart';
import 'package:dash_money/src/modules/authentication/login/web_login.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class LoginPage extends StatefulWidget {
  const LoginPage({super.key});

  @override
  State<LoginPage> createState() => _LoginPageState();
}

class _LoginPageState extends State<LoginPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const WebLogin();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const MobileLoginScreen();
          }

          return const MobileLoginScreen();
        },
      ),
    );
  }
}
