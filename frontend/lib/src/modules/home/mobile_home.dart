import 'package:dash_money/src/app_utils/colors.dart';
import 'package:dash_money/src/app_utils/images.dart';
import 'package:dash_money/src/components/app_bar.dart';
import 'package:dash_money/src/components/app_button.dart';
import 'package:dash_money/src/components/drop_down_widget.dart';
import 'package:dash_money/src/modules/buy_dash/offer/buy.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MobileHomeScreen extends StatefulWidget {
  const MobileHomeScreen({super.key});

  @override
  State<MobileHomeScreen> createState() => _MobileHomeScreenState();
}

class _MobileHomeScreenState extends State<MobileHomeScreen> {
  bool public = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context: context, deviceType: "mobile"),
      body: _bodyColumn(),
    );
  }

  Widget _bodyColumn() {
    return DefaultTabController(
      length: 2,
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 15),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: 120,
                  height: 35,
                  decoration: BoxDecoration(
                    color: AppColors.filledColor,
                    borderRadius: BorderRadius.circular(5),
                  ),
                  child: TabBar(
                    labelStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelStyle: const TextStyle(
                      fontSize: 12,
                      fontFamily: "Montserrat",
                      fontWeight: FontWeight.bold,
                    ),
                    unselectedLabelColor: Colors.black,
                    labelColor: Colors.white,
                    indicatorSize: TabBarIndicatorSize.tab,
                    indicator: BoxDecoration(
                        color: AppColors.greenButton,
                        borderRadius: BorderRadius.circular(5)),
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
                GestureDetector(
                  onTap: () {
                    _filter();
                  },
                  child: SvgPicture.asset(
                    AppImages.filterIcon,
                    height: 20,
                  ),
                ),
              ],
            ),
          ),
          const Divider(),
          Expanded(
            child: ListView.separated(
              itemCount: 6,
              shrinkWrap: true,
              separatorBuilder: (context, index) {
                return const Divider();
              },
              itemBuilder: (context, index) {
                return Container(
                  padding:
                      const EdgeInsets.symmetric(vertical: 10, horizontal: 15),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            height: 25,
                            width: 25,
                            decoration: const BoxDecoration(
                              color: AppColors.primary,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "John Doe",
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Price",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.greyText,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "45 USD",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                              Text(
                                "Available: 300 DASH",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Text(
                                "Limit: 200-28000 USD",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  Text(
                                    "Payment methods:",
                                    style: TextStyle(
                                      fontSize: 10,
                                      color: AppColors.greyText,
                                    ),
                                  ),
                                  SizedBox(
                                    width: 5,
                                  ),
                                  Text(
                                    "SWIFT",
                                    style: TextStyle(
                                      fontSize: 10,
                                      fontWeight: FontWeight.bold,
                                    ),
                                  ),
                                ],
                              ),
                            ],
                          )
                        ],
                      ),
                      Column(
                        children: [
                          const Row(
                            children: [
                              Text(
                                "143 orders",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              SizedBox(
                                width: 5,
                              ),
                              Text(
                                "rating: 5.0",
                                style: TextStyle(
                                  fontSize: 10,
                                  fontWeight: FontWeight.bold,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(
                            height: 15,
                          ),
                          AppButton(
                            onPressed: () {
                              Get.to(() => const BuyDash());
                            },
                            text: "Buy Dash",
                            color: AppColors.greenButton,
                            radius: 5,
                            textSize: 12,
                            height: 40,
                          )
                        ],
                      )
                    ],
                  ),
                );
              },
            ),
          ),
        ],
      ),
    );
  }

  _filter() {
    showModalBottomSheet(
      backgroundColor: Colors.white,
      context: context,
      isScrollControlled: true,
      builder: (builder) => Padding(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const SizedBox(
              height: 15,
            ),
            const Center(
              child: Text(
                "Filter",
                style: TextStyle(
                  fontSize: 16,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
            const SizedBox(
              height: 15,
            ),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey.shade200,
                borderRadius: BorderRadius.circular(10),
              ),
              child: Row(
                children: [
                  const Expanded(
                    child: TextField(
                      style:
                          TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
                      decoration: InputDecoration(
                        enabledBorder: InputBorder.none,
                        focusedBorder: InputBorder.none,
                        border: InputBorder.none,
                        hintText: "Amount",
                        contentPadding: EdgeInsets.only(left: 10),
                        hintStyle: TextStyle(
                          fontSize: 12,
                          color: AppColors.greyText,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                    child: VerticalDivider(),
                  ),
                  TextButton(
                    onPressed: () {},
                    child: const Text(
                      "Search",
                      style: TextStyle(
                        fontSize: 14,
                        fontWeight: FontWeight.bold,
                        color: Colors.black,
                      ),
                    ),
                  )
                ],
              ),
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Fiat",
              style: TextStyle(
                fontSize: 12,
                color: AppColors.greyText,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropDownWidget(
              dropDownList: const [
                "USD",
                "Euro",
              ],
              selectedValue: "USD",
              onChanged: (val) {},
              hintText: "\$ USD",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Price",
              style: TextStyle(
                fontSize: 12,
                color: AppColors.greyText,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropDownWidget(
              dropDownList: const [
                "Lowest to highest",
                "Highest to lowest",
              ],
              selectedValue: "Lowest to highest",
              onChanged: (val) {},
              hintText: "Lowest to highest",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Rating",
              style: TextStyle(
                fontSize: 12,
                color: AppColors.greyText,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropDownWidget(
              dropDownList: const [
                "Lowest to highest",
                "Highest to lowest",
              ],
              selectedValue: "Lowest to highest",
              onChanged: (val) {},
              hintText: "Lowest to highest",
            ),
            const SizedBox(
              height: 20,
            ),
            const Text(
              "Payment method",
              style: TextStyle(
                fontSize: 12,
                color: AppColors.greyText,
                fontWeight: FontWeight.bold,
              ),
            ),
            DropDownWidget(
              dropDownList: const [
                "Credit Card",
                "Cash",
              ],
              selectedValue: "Cash",
              onChanged: (val) {},
              hintText: "Select payment method",
            ),
            const SizedBox(
              height: 30,
            ),
            Center(
              child: AppButton(
                onPressed: () {},
                text: "Filter",
                radius: 10,
                width: 150,
                textSize: 14,
                color: AppColors.filledColor,
                height: 45,
                textColor: Colors.black,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(
              height: 40,
            ),
          ],
        ),
      ),
    );
  }
}
