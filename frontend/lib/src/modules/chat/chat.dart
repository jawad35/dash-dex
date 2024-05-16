import 'package:dash_money/src/modules/chat/mobile_chat.dart';
import 'package:dash_money/src/modules/chat/web_chart.dart';
import 'package:flutter/material.dart';

import 'package:responsive_builder/responsive_builder.dart';

class ChatPage extends StatefulWidget {
  const ChatPage({super.key});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: ResponsiveBuilder(
        builder: (context, sizingInformation) {
          if (sizingInformation.deviceScreenType == DeviceScreenType.desktop) {
            return const WebChat();
          }

          if (sizingInformation.deviceScreenType == DeviceScreenType.tablet) {
            return const MobileChatScreen();
          }

          return const MobileChatScreen();
        },
      ),
    );
  }
}
