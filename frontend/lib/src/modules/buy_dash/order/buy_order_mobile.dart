import 'package:dash_money/src/components/app_bar.dart';
import 'package:dash_money/src/components/app_button.dart';
import 'package:dash_money/src/components/text_field2.dart';
import 'package:dash_money/src/modules/chat/chat.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_utils/colors.dart';
import '../../../components/drop_down_widget.dart';

class BuyOrderMobile extends StatefulWidget {
  const BuyOrderMobile({super.key});

  @override
  State<BuyOrderMobile> createState() => _BuyOrderMobileState();
}

class _BuyOrderMobileState extends State<BuyOrderMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(context: context,deviceType: "mobile"),
      body: _bodyColumn(),
    );
  }

  Widget _bodyColumn() {
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
            decoration: const BoxDecoration(color: AppColors.filledColor),
            child: const Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Buy DASH from Maargot Paulson",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  "The order is created",
                  style: TextStyle(
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          _infoColumn(),
        ],
      ),
    );
  }

  Widget _infoColumn() {
    return Padding(
      padding: const EdgeInsets.only(left: 20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Order lifecycle",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 25,
          ),
          Row(
            children: [
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
              ),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          "Transfer to seller",
                          style: TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DottedLine(
                        dashColor: AppColors.greyText,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
              ),
              const Expanded(
                flex: 3,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          "Pending seller receive the payment",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DottedLine(
                        dashColor: AppColors.greyText,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
              ),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      FittedBox(
                        child: Text(
                          "Rate",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      DottedLine(
                        dashColor: AppColors.greyText,
                      ),
                    ],
                  ),
                ),
              ),
              Container(
                height: 10,
                width: 10,
                decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  color: AppColors.primary,
                ),
              ),
              const Expanded(
                flex: 1,
                child: Padding(
                  padding: EdgeInsets.only(bottom: 8.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      FittedBox(
                        child: Text(
                          "Complete",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(
            color: AppColors.greyText,
          ),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Finish Order",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          Row(
            children: [
              const SizedBox(
                width: 180,
                child: SecondaryTextField(
                  hintText: "Enter amount",
                  textAlignment: TextAlign.center,
                  inputType: TextInputType.number,
                ),
              ),
              const SizedBox(
                width: 15,
              ),
              AppButton(
                onPressed: () {},
                text: "Buy",
                fontWeight: FontWeight.bold,
                radius: 5,
                height: 34,
              ),
            ],
          ),
          const SizedBox(
            height: 15,
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "Transfer Funds  ",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          const Row(
            children: [
              Column(
                children: [
                  Text(
                    "Amount",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$ 455 ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Text(
                    "Rate",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "\$ 45.5 for 1 DASH",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              ),
              SizedBox(
                width: 50,
              ),
              Column(
                children: [
                  Text(
                    "Quantity",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 10,
                  ),
                  Text(
                    "10 DASH ",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                  )
                ],
              )
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          const Text(
            "Transfer the funds to the seller’s account and click “Mark as paid” button. The seller will receive the notification.",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "Receiver:",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          const Text(
            "PayPal: margot@gmail.com",
            style: TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 10,
          ),
          Row(
            children: [
              AppButton(
                onPressed: () {},
                text: "Mark as paid",
                radius: 5,
                height: 34,
                textSize: 12,
                fontWeight: FontWeight.bold,
              ),
              const SizedBox(
                width: 15,
              ),
              AppButton(
                onPressed: () {},
                text: "Cancel order",
                radius: 5,
                height: 34,
                textSize: 12,
                fontWeight: FontWeight.bold,
              ),
            ],
          ),
          const SizedBox(
            height: 20,
          ),
          const Divider(),
          const SizedBox(
            height: 15,
          ),
          const Text(
            "FAQ",
            style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 15,
          ),

          DropDownWidget(
            selectedValue: "What should I do if I have been deceived?",
            hintText: "FAQ",
            hintAlignment: Alignment.center,
            dropDownList: const [
              "What should I do if I have been deceived?",
              "Can I cancel the trade?",
              "What do I do if the payment failed?",
            ],
            onChanged: (val) {

            },
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            children: [
              AppButton(
                onPressed: () {
                  Get.to(() => const ChatPage());
                },
                text: "Open chat",
                radius: 5,
                height: 34,
                fontWeight: FontWeight.bold,
                textSize: 14,
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
        ],
      ),
    );
  }
}
