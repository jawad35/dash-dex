import 'package:dash_money/src/modules/buy_dash/order/buy_order_mobile.dart';
import 'package:dash_money/src/modules/buy_dash/order/buy_order_web.dart';
import 'package:flutter/material.dart';
import 'package:responsive_builder/responsive_builder.dart';

class BuyOrder extends StatefulWidget {
  const BuyOrder({super.key});

  @override
  State<BuyOrder> createState() => _BuyOrderState();
}

class _BuyOrderState extends State<BuyOrder> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const BuyOrderWeb();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const BuyOrderMobile();
          }

          return const BuyOrderMobile();
        },
      ),
    );
  }
}
