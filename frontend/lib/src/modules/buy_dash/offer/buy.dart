import 'package:dash_money/src/modules/buy_dash/offer/buy_dash_mobile.dart';
import 'package:dash_money/src/modules/buy_dash/offer/buy_dash_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BuyDash extends StatefulWidget {
  const BuyDash({super.key});

  @override
  State<BuyDash> createState() => _BuyDashState();
}

class _BuyDashState extends State<BuyDash> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const BuyDashWeb();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const BuyDashMobile();
          }

          return const BuyDashMobile();
        },
      ),
    );
  }
}
