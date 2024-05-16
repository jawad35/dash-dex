import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../app_utils/colors.dart';
import '../../../app_utils/images.dart';
import '../../../components/app_bar.dart';
import '../../../components/app_button.dart';
import '../../../components/text_field2.dart';
import '../order/buy_order.dart';

class BuyDashWeb extends StatefulWidget {
  const BuyDashWeb({super.key});

  @override
  State<BuyDashWeb> createState() => _BuyDashWebState();
}

class _BuyDashWebState extends State<BuyDashWeb> {
  String currency = "USD";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(context: context),
      body: _bodyColumn(),
    );
  }

  Widget _bodyColumn() {
    return Column(
      children: [
        Container(
          width: MediaQuery.sizeOf(context).width,
          padding: EdgeInsets.symmetric(
            vertical: 15,
            horizontal: MediaQuery.sizeOf(context).width * 0.07,
          ),
          decoration: const BoxDecoration(
            color: AppColors.filledColor,
          ),
          child: const Text(
            "Create new offer",
            style: TextStyle(
              fontSize: 14,
              fontWeight: FontWeight.bold,
            ),
          ),
        ),
        const SizedBox(
          height: 25,
        ),
        Expanded(
          child: DefaultTabController(

            length: 2,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: EdgeInsets.symmetric(
                      horizontal: MediaQuery.sizeOf(context).width * 0.07),
                  child: Container(
                    height: 34,
                    // width: MediaQuery.sizeOf(context).width * 0.55,
                    width: 1076.w,
                    decoration: const BoxDecoration(
                      color: AppColors.filledColor,
                    ),
                    child: TabBar(
                      labelStyle: TextStyle(
                        fontSize: 20.sp,
                        fontWeight: FontWeight.bold,
                        fontFamily: "Montserrat",
                      ),
                      unselectedLabelStyle: TextStyle(
                          fontSize: 20.sp,
                          fontWeight: FontWeight.bold,
                          fontFamily: "Montserrat"),
                      unselectedLabelColor: Colors.black,
                      labelColor: Colors.black,
                      indicatorSize: TabBarIndicatorSize.tab,
                      indicator: const BoxDecoration(
                        color: AppColors.greyFilled,
                      ),
                      dividerColor: Colors.transparent,
                      tabs: const [
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
                // const SizedBox(
                //   height: 30,
                // ),
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
      padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.07),
      child: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "I want to buy DASH with",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Row(
                children: [
                  SvgPicture.asset(
                    AppImages.dash,
                    height: 40.w,
                    width: 40.w,
                  ),
                  SizedBox(
                    width: 24.w,
                  ),
                  SvgPicture.asset(AppImages.arrow, height: 10, width: 40.w),
                  SizedBox(
                    width: 19.w,
                  ),
                  SizedBox(
                    width: 200.w,
                    child: PopupMenuButton(
                      tooltip: "",
                      onSelected: (value) {
                        if (value == 1) {
                          setState(() {
                            currency = "\$ USD";
                          });
                        }
                        if (value == 2) {
                          setState(() {
                            currency = "€ Euro";
                          });
                        }
                      },
                      child: Container(
                        height: 35,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 10,
                        ),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(5),
                          color: AppColors.filledColor,
                        ),
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            FittedBox(
                              child: Text(
                                "   ",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.greyText,
                                ),
                              ),
                            ),
                            FittedBox(
                              child: Text(
                                currency,
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.bold,
                                  color: AppColors.greyText,
                                ),
                              ),
                            ),
                            const Icon(Icons.arrow_drop_down,
                                color: AppColors.greyText)
                          ],
                        ),
                      ),
                      itemBuilder: (context) {
                        return [
                          const PopupMenuItem(
                            value: 1,
                            child: Text("USD"),
                          ),
                          const PopupMenuItem(
                            value: 2,
                            child: Text("Euro"),
                          ),
                        ];
                      },
                    ),
                  ),
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 1076.w,
              child: const DottedLine(
                dashColor: AppColors.greyText,
                dashLength: 1.5,
                dashGapLength: 2,
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Rate",
                style: TextStyle(
                  fontSize: 22.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Current rate for 1 DASH",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 2,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "\$ 54.5",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                width: 250,
                height: 35,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(5),
                  child: const TextField(
                    keyboardType: TextInputType.number,
                    textAlign: TextAlign.start,
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.bold,
                    ),
                    decoration: InputDecoration(
                      contentPadding: EdgeInsets.only(left: 10, top: 5),
                      suffixIcon: Padding(
                        padding: EdgeInsets.only(top: 10),
                        child: Text(
                          "USD",
                          style: TextStyle(
                            fontSize: 12,
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
                        fontSize: 12,
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                width: 250,
                height: 35,
                child: SecondaryTextField(
                  hintText: "Total Amount",
                  contentPadding: EdgeInsets.only(left: 10, bottom: 11),
                  inputType: TextInputType.number,
                  controller: TextEditingController(),
                ),
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 1076.w,
              child: const DottedLine(
                dashColor: AppColors.greyText,
                dashLength: 1.5,
                dashGapLength: 2,
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: Text(
                "Limit",
                style: TextStyle(
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 5),
              child: SizedBox(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(
                      width: 194.w,
                      height: 35,
                      child: const SecondaryTextField(
                        hintText: "From",
                        textAlignment: TextAlign.center,
                        inputType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    SvgPicture.asset(
                      AppImages.arrow,
                      height: 10,
                      width: 40.w,
                    ),
                    SizedBox(
                      width: 7.w,
                    ),
                    SizedBox(
                      width: 194.w,
                      // height: 35,
                      child: const SecondaryTextField(
                        hintText: "To",
                        textAlignment: TextAlign.center,
                        inputType: TextInputType.number,
                      ),
                    )
                  ],
                ),
              ),
            ),
            const SizedBox(
              height: 25,
            ),
            SizedBox(
              width: 1076.w,
              child: const DottedLine(
                dashColor: AppColors.greyText,
                dashLength: 1.5,
                dashGapLength: 2,
              ),
            ),
            const SizedBox(
              height: 30,
            ),
            Container(
              margin: EdgeInsets.only(
                  left: (194 * 2 + 40 + 14).w +
                      MediaQuery.sizeOf(context).width * 0.07 / 2 -
                      3.w),
              // color: Colors.red,
              child: Align(
                alignment: Alignment.topLeft,
                child: SizedBox(
                  width: 161.29.w,
                  height: 42.83.h,
                  child: Align(
                    alignment: Alignment.topLeft,
                    child: AppButton(
                      onPressed: () {
                        Get.to(() => const BuyOrder());
                      },
                      text: "Publish",
                      radius: 5,
                      textSize: 20.sp,

                      // fontWeight: FontWeight.bold,
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              height: 30,
            ),
          ],
        ),
      ),
    );
  }
}
