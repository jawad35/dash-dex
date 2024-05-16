import 'package:dash_money/src/app_utils/colors.dart';
import 'package:dash_money/src/app_utils/images.dart';
import 'package:dash_money/src/components/app_bar.dart';
import 'package:dash_money/src/components/app_button.dart';
import 'package:dash_money/src/components/drop_down_widget.dart';
import 'package:dash_money/src/components/text_field2.dart';
import 'package:dash_money/src/modules/buy_dash/order/buy_order.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class BuyDashMobile extends StatefulWidget {
  const BuyDashMobile({super.key});

  @override
  State<BuyDashMobile> createState() => _BuyDashMobileState();
}

class _BuyDashMobileState extends State<BuyDashMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(context: context,deviceType: "mobile",),
      body: _bodyColumn(),
    );
  }

  Widget _bodyColumn() {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          decoration: const BoxDecoration(color: AppColors.filledColor),
          child: const Text(
            "Create new offer",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 15,
        ),
        Expanded(
          child: DefaultTabController(
            length: 2,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Container(
                    height: 30,
                    decoration: const BoxDecoration(
                      color: AppColors.greyFilled,
                    ),
                    child: const TabBar(
                      labelStyle:
                          TextStyle(fontSize: 14, fontWeight: FontWeight.bold),
                      unselectedLabelStyle: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                      ),
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: BoxDecoration(
                        color: AppColors.filledColor,
                      ),
                      dividerColor: Colors.transparent,
                      tabs: [
                        Tab(
                          text: "Buy",
                        ),
                        Tab(
                          text: "Sell",
                        ),
                      ],
                    ),
                  ),
                ),
                Expanded(
                  child: TabBarView(
                    children: [
                      _buy(),
                      _buy(),
                    ],
                  ),
                )
              ],
            ),
          ),
        )
      ],
    );
  }

  Widget _buy() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 20,
            ),
            const Text(
              "I want to buy DASH with",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Row(
              children: [
                SvgPicture.asset(
                  AppImages.dash,
                  height: 40,
                ),
                const SizedBox(
                  width: 15,
                ),
                SvgPicture.asset(
                  AppImages.arrow,
                  height: 15,
                ),
                const SizedBox(
                  width: 15,
                ),
                SizedBox(
                  width: 150,
                  child: DropDownWidget(
                    selectedValue: "USD",
                    hintText: "USD",
                    hintAlignment: Alignment.center,
                    dropDownList: const [
                      "USD",
                      "Euro",
                    ],
                    onChanged: (val) {},
                  ),
                ),
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const DottedLine(
              dashColor: AppColors.greyText,
            ),
            const SizedBox(
              height: 15,
            ),
            const Text(
              "Rate",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "Current rate for 1 DASH",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            const Text(
              "54.5 \$",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            SizedBox(
              width: 250,
              child: ClipRRect(
                borderRadius: BorderRadius.circular(5),
                child: const TextField(
                  keyboardType: TextInputType.number,
                  decoration: InputDecoration(
                    suffixIcon: Padding(
                      padding: EdgeInsets.only(right: 8.0, top: 14),
                      child: Text(
                        "USD",
                        style: TextStyle(
                          fontSize: 14,
                          color: AppColors.greyFilled,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    fillColor: AppColors.filledColor,
                    filled: true,
                    enabledBorder: InputBorder.none,
                    focusedBorder: InputBorder.none,
                    border: InputBorder.none,
                    hintText: "Enter your price",
                    hintStyle: TextStyle(
                      color: AppColors.greyFilled,
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 250,
              child: SecondaryTextField(
                hintText: "Total Amount",
                inputType: TextInputType.number,
                controller: TextEditingController(),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const DottedLine(
              dashColor: AppColors.greyText,
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Limit",
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
                const Expanded(
                  child: SecondaryTextField(
                    hintText: "From",
                    textAlignment: TextAlign.center,
                    inputType: TextInputType.number,
                  ),
                ),
                const SizedBox(
                  width: 10,
                ),
                SvgPicture.asset(
                  AppImages.arrow,
                  height: 10,
                ),
                const SizedBox(
                  width: 10,
                ),
                const Expanded(
                  child: SecondaryTextField(
                    hintText: "To",
                    textAlignment: TextAlign.center,
                    inputType: TextInputType.number,
                  ),
                )
              ],
            ),
            const SizedBox(
              height: 35,
            ),
            const DottedLine(
              dashColor: AppColors.greyText,
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: AppButton(
                onPressed: () {
                  Get.to(() => const BuyOrder());
                },
                text: "Publish",
                radius: 5,
                height: 45,
                width: 150,
                fontWeight: FontWeight.bold,
              ),
            )
          ],
        ),
      ),
    );
  }
}
