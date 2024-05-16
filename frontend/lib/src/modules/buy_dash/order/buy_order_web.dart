import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../app_utils/colors.dart';
import '../../../app_utils/images.dart';
import '../../../components/app_bar.dart';
import '../../../components/app_button.dart';
import '../../../components/drop_down_widget.dart';
import '../../../components/text_field2.dart';
import '../../profile/profile/profile.dart';

class BuyOrderWeb extends StatefulWidget {
  const BuyOrderWeb({super.key});

  @override
  State<BuyOrderWeb> createState() => _BuyOrderWebState();
}

class _BuyOrderWebState extends State<BuyOrderWeb> {
  final TextEditingController _textContoller = TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(context: context),
      body: _bodyColumn(),
    );
  }

  Widget _bodyColumn() {
    return Row(
      children: [
        SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                width: MediaQuery.sizeOf(context).width,
                padding: EdgeInsets.fromLTRB(
                    MediaQuery.sizeOf(context).width * 0.05,
                    30,
                    MediaQuery.sizeOf(context).width * 0.05,
                    10),
                decoration: const BoxDecoration(color: AppColors.filledColor),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      "Buy DASH from Margot Paulson",
                      style: TextStyle(
                        fontSize: 18.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    Text(
                      "The order is created",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
              ),
              const SizedBox(
                height: 10,
              ),
              _infoColumn(),
            ],
          ),
        ),
      ],
    );
  }

  Widget _infoColumn() {
    return Padding(
      padding: EdgeInsets.only(left: MediaQuery.sizeOf(context).width * 0.05),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            width: MediaQuery.sizeOf(context).width * 0.6,
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "Order lifecycle",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Row(
                  children: [
                    Container(
                      height: 9.w,
                      width: 9.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                    ),
                    SizedBox(
                      width: 125.w,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                " Transfer to seller",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const DottedLine(
                              dashColor: AppColors.greyText,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 9.w,
                      width: 9.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                    ),
                    SizedBox(
                      width: 270.w,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                " Pending seller receive the payment",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const DottedLine(
                              dashColor: AppColors.greyText,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 9.w,
                      width: 9.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                    ),
                    SizedBox(
                      width: 125.w,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                " Rate",
                                style: TextStyle(
                                  fontSize: 16.sp,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                            ),
                            const DottedLine(
                              dashColor: AppColors.greyText,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Container(
                      height: 9.w,
                      width: 9.w,
                      decoration: const BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.primary,
                      ),
                    ),
                    SizedBox(
                      width: 100,
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 8.0),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            FittedBox(
                              child: Text(
                                " Complete",
                                style: TextStyle(
                                  fontSize: 16.sp,
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
                  height: 10,
                ),
                const SizedBox(
                  child: Divider(
                    color: AppColors.greyText,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Finish Order",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                SizedBox(
                  height: 16.h,
                ),
                Row(
                  children: [
                    SizedBox(
                      width: 260.w,
                      height: 35,
                      child: const SecondaryTextField(
                        hintText: "Enter amount",
                        // dense: true,
                        contentPadding: EdgeInsets.only(bottom: 11),
                        textAlignment: TextAlign.center,
                        inputType: TextInputType.number,
                      ),
                    ),
                    SizedBox(
                      width: 30.w,
                    ),
                    AppButton(
                      onPressed: () {},
                      text: "Buy",
                      fontWeight: FontWeight.bold,
                      radius: 5,
                      width: 110.w,
                      textSize: 12,
                      height: 35,
                    ),
                  ],
                ),
                const SizedBox(
                  height: 25,
                ),
                const SizedBox(child: Divider()),
                const SizedBox(
                  height: 8,
                ),
                Text(
                  "Transfer Funds  ",
                  style: TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding: const EdgeInsets.only(left: 30),
                  child: Row(
                    children: [
                      Column(
                        children: [
                          Text(
                            "Amount",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 455 ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 126.w,
                      ),
                      Column(
                        children: [
                          Text(
                            "Rate",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "\$ 45.5 for 1 DASH",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      ),
                      SizedBox(
                        width: 126.w,
                      ),
                      Column(
                        children: [
                          Text(
                            "Quantity",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          ),
                          const SizedBox(
                            height: 10,
                          ),
                          Text(
                            "10 DASH ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w600,
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 40,
                ),
                Text(
                  "Transfer the funds to the seller’s account and click “Mark as paid” button. The seller will receive the notification.",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                Text(
                  "Receiver:",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 12,
                ),
                Text(
                  "PayPal: margot@gmail.com",
                  style: TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                Row(
                  children: [
                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        width: 110.w,
                        height: 35,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Mark as paid",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 36.w,
                    ),


                    MouseRegion(
                      cursor: SystemMouseCursors.click,
                      child: Container(
                        width: 110.w,
                        height: 35,
                        decoration: BoxDecoration(
                          color: AppColors.primary,
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Center(
                          child: Text(
                            "Cancel order",
                            style: TextStyle(
                                fontSize: 12.sp,
                                fontWeight: FontWeight.w600,
                                color: Colors.white),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 40,
                ),
                const Divider(),
                Text(
                  "FAQ",
                  style:
                      TextStyle(fontSize: 20.sp, fontWeight: FontWeight.w600),
                ),
                const SizedBox(
                  height: 10,
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
                  height: 30,
                ),
              ],
            ),
          ),
          const SizedBox(
            width: 60,
          ),
          Container(
            height: 535,
            width: MediaQuery.sizeOf(context).width * 0.24,
            margin: EdgeInsets.only(top: 60),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(15),
              border: Border.all(color: AppColors.greyText),
            ),
            child: Column(
              children: [
                Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(15),
                    border: Border.all(color: AppColors.greyText),
                    color: AppColors.filledColor,
                  ),
                  child: Row(
                    children: [
                      Container(
                        padding: const EdgeInsets.all(10),
                        decoration: const BoxDecoration(
                          shape: BoxShape.circle,
                          color: AppColors.primary,
                        ),
                        child: const Text(
                          "M",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                            color: Colors.white,
                          ),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Margot Paulson",
                            style: TextStyle(
                              fontSize: 16,
                              fontWeight: FontWeight.bold,
                            ),
                          ),
                          SizedBox(
                            height: 5,
                          ),
                          Row(
                            children: [
                              GestureDetector(
                                onTap: () {
                                  Get.to(() => const ProfilePage());
                                },
                                child: const Text(
                                  "View Profile",
                                  style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                      color: AppColors.primary),
                                ),
                              ),
                              const SizedBox(
                                height: 10,
                                child: VerticalDivider(
                                  color: AppColors.primary,
                                ),
                              ),
                              const Text(
                                "Report",
                                style: TextStyle(
                                    fontSize: 10,
                                    fontWeight: FontWeight.bold,
                                    color: AppColors.primary),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
                Expanded(
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 15),
                    child: Column(
                      children: [
                        const SizedBox(
                          height: 15,
                        ),
                        const Text(
                          "2022-02-01 15:45",
                          style: TextStyle(
                            fontSize: 10,
                            fontWeight: FontWeight.bold,
                            color: AppColors.greyText,
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.filledColor,
                              width: 2,
                            ),
                          ),
                          child: const Text(
                            "You have marked the order as paid. Please wait the seller to confirm it",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Container(
                          padding: const EdgeInsets.all(7),
                          decoration: BoxDecoration(
                            color: Colors.white,
                            borderRadius: BorderRadius.circular(10),
                            border: Border.all(
                              color: AppColors.filledColor,
                              width: 2,
                            ),
                          ),
                          child: const Text(
                            "Your payment has been received. Your DASH have been sent to your wallet",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
                Container(
                  height: 1,
                  color: AppColors.greyText,
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Expanded(
                      child: TextField(
                        controller: _textContoller,
                        decoration: const InputDecoration(
                          hintText: "Write message...",
                          hintStyle: TextStyle(
                              fontSize: 14, color: AppColors.greyText),
                          contentPadding: EdgeInsets.symmetric(horizontal: 20),
                          enabledBorder: InputBorder.none,
                          focusedBorder: InputBorder.none,
                          border: InputBorder.none,
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {},
                      child: SvgPicture.asset(
                        AppImages.attachment,
                        height: 15,
                      ),
                    ),
                    SizedBox(
                      width: 12,
                    ),
                    InkWell(
                      onTap: () {
                        _textContoller.clear();
                        setState(() {});
                      },
                      child: SvgPicture.asset(
                        AppImages.send,
                        height: 15,
                      ),
                    ),
                    const SizedBox(
                      width: 17,
                    ),
                  ],
                ),
                SizedBox(
                  height: 5,
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
