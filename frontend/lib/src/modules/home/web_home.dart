import 'package:dash_money/src/components/app_bar.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../app_utils/colors.dart';
import '../../components/app_button.dart';
import '../../components/drop_down_widget.dart';
import '../buy_dash/offer/buy.dart';

class WebHomeScreen extends StatefulWidget {
  const WebHomeScreen({super.key});

  @override
  State<WebHomeScreen> createState() => _WebHomeScreenState();
}

class _WebHomeScreenState extends State<WebHomeScreen> {
  String price = "Lowest to Highest";
  String rating = "Lowest to Highest";
  String currency = "\$ USD";
  String payment = "Credit Card";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context: context),
      body: SingleChildScrollView(
        child: SizedBox(
          width: MediaQuery.sizeOf(context).width,

          child: DefaultTabController(
            length: 2,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 100.w),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const SizedBox(
                    height: 40,
                  ),
                  Center(
                    child: Text(
                      "Offers",
                      style: TextStyle(
                        fontSize: 40.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat',
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 14),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        Transform.scale(
                          scale: 0.8,
                          child: Column(
                            children: [
                              Text(
                                "Amount",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.transparent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Container(
                                width: 145,
                                height: 40,
                                decoration: BoxDecoration(
                                  color: AppColors.filledColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: TabBar(
                                  labelStyle: const TextStyle(
                                    fontSize: 18,
                                    fontFamily: "Montserrat",
                                    fontWeight: FontWeight.bold,
                                  ),
                                  unselectedLabelStyle: const TextStyle(
                                    fontSize: 18,
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
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Amount",
                                  style: TextStyle(
                                    fontSize: 10.sp,
                                    color: AppColors.greyText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              Container(
                                width: 280.sp,
                                height: 50.sp,
                                decoration: BoxDecoration(
                                  color: AppColors.filledColor,
                                  borderRadius: BorderRadius.circular(5),
                                ),
                                child: Row(
                                  children: [
                                    const Expanded(
                                      child: TextField(
                                        style:   TextStyle(
                                          fontSize: 14,
                                          fontWeight: FontWeight.bold,
                                        ),
                                        decoration: InputDecoration(
                                          filled: false,
                                          isDense: true,
                                          enabledBorder: InputBorder.none,
                                          focusedBorder: InputBorder.none,
                                          border: InputBorder.none,
                                          hintText: "Amount    USD",
                                          contentPadding:
                                              EdgeInsets.only(left: 10),
                                          hintStyle: TextStyle(
                                            fontSize: 14,
                                            color: AppColors.greyText,
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
                                          fontWeight: FontWeight.w600,
                                          color: Colors.black,
                                        ),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Fiat",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.greyText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 140.w,
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
                                    height: 40,
                                    padding: const EdgeInsets.symmetric(
                                      horizontal: 10,
                                    ),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.filledColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
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
                                        child: Text("\$ USD"),
                                      ),
                                      const PopupMenuItem(
                                        value: 2,
                                        child: Text("€ Euro"),
                                      ),
                                    ];
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10.0),
                                child: Text(
                                  "Price",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.greyText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200.w,
                                child: PopupMenuButton(
                                  tooltip: "",
                                  onSelected: (value) {
                                    if (value == 1) {
                                      setState(() {
                                        price = "Lowest to Highest";
                                      });
                                    }
                                    if (value == 2) {
                                      setState(() {
                                        price = "Highest to Lowest";
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.filledColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            price,
                                            style: TextStyle(
                                              fontSize: 16.sp,
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
                                        child: Text("Lowest to Highest"),
                                      ),
                                      const PopupMenuItem(
                                        value: 2,
                                        child: Text("Highest to Lowest"),
                                      ),
                                    ];
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Rating",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.greyText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 200.w,
                                child: PopupMenuButton(
                                  tooltip: "",
                                  onSelected: (value) {
                                    if (value == 1) {
                                      setState(() {
                                        rating = "Lowest to Highest";
                                      });
                                    }
                                    if (value == 2) {
                                      setState(() {
                                        rating = "Highest to Lowest";
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.filledColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            rating,
                                            style: TextStyle(
                                              fontSize: 16.sp,
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
                                        child: Text("Lowest to Highest"),
                                      ),
                                      const PopupMenuItem(
                                        value: 2,
                                        child: Text("Highest to Lowest"),
                                      ),
                                    ];
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Padding(
                                padding: const EdgeInsets.only(left: 10),
                                child: Text(
                                  "Payment method",
                                  style: TextStyle(
                                    fontSize: 14.sp,
                                    color: AppColors.greyText,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                              ),
                              SizedBox(
                                width: 160.w,
                                child: PopupMenuButton(
                                  tooltip: "",
                                  onSelected: (value) {
                                    if (value == 1) {
                                      setState(() {
                                        payment = "Cash";
                                      });
                                    }
                                    if (value == 2) {
                                      setState(() {
                                        payment = "Credit Card";
                                      });
                                    }
                                  },
                                  child: Container(
                                    height: 40,
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 10),
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: AppColors.filledColor,
                                    ),
                                    child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        FittedBox(
                                          child: Text(
                                            payment,
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
                                        child: Text("Cash"),
                                      ),
                                      const PopupMenuItem(
                                        value: 2,
                                        child: Text("Credit Card"),
                                      ),
                                    ];
                                  },
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(
                          width: 20,
                        ),
                        Transform.scale(
                          scale: 0.8,
                          child: Column(
                            children: [
                              Text(
                                "Payment method",
                                style: TextStyle(
                                  fontSize: 14.sp,
                                  color: Colors.transparent,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              AppButton(
                                onPressed: () {},
                                text: "Filter",
                                radius: 5,
                                width: 120,
                                height: 40,
                                textSize: 14,
                                color: AppColors.filledColor,
                                textColor: Colors.black,
                                fontWeight: FontWeight.w600,
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  SizedBox(
                    width: 1500.w,
                    child: DataTable(
                      headingRowHeight: 20,
                      dataRowHeight: 70,
                      headingTextStyle: TextStyle(
                        color: AppColors.greyText,
                        fontWeight: FontWeight.bold,
                        fontSize: 18.sp,
                        fontFamily: "Montserrat",
                      ),
                      columnSpacing: 40.w,
                      showBottomBorder: false,
                      columns: [
                        DataColumn(
                          label: Padding(
                            padding: EdgeInsets.only(left: 50.w),
                            child: const Text(
                              "Maker",

                              textAlign: TextAlign.center,
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.greyText,
                                fontWeight: FontWeight.w500,
                              ),


                            ),
                          ),
                        ),
                        DataColumn(
                          label: Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: const Text("Price",
                              style: TextStyle(
                                fontSize: 14,
                                color: AppColors.greyText,
                                fontWeight: FontWeight.w500,
                              ),

                            ),
                          ),
                        ),
                        DataColumn(
                          label: Padding(
                            padding: EdgeInsets.only(left: 15.w),
                            child: const Text("Limit/Available",style: TextStyle(
                              fontSize: 14,
                              color: AppColors.greyText,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                          ),
                        ),
                        DataColumn(
                          label: Padding(
                            padding: EdgeInsets.only(left: 50.w),
                            child: const Text("Trade",style: TextStyle(
                              fontSize: 14,
                              color: AppColors.greyText,
                              fontWeight: FontWeight.w500,
                            ),
                            ),
                          ),
                        ),
                      ],
                      rows: [
                        for (int i = 0; i < 10; i++)
                          DataRow(
                            cells: [
                              DataCell(Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Align(
                                    alignment: Alignment.topLeft,
                                    child: Container(
                                      padding: const EdgeInsets.all(15),
                                      decoration: const BoxDecoration(
                                        color: AppColors.primary,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    width: 10,
                                  ),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Text(
                                        "John Doe",
                                        style: TextStyle(
                                          fontSize: 14.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                      const SizedBox(
                                        height: 10,
                                      ),
                                      Row(
                                        children: [
                                          Text(
                                            "143 orders",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 5,
                                          ),
                                          Text(
                                            "rating: 5.0",
                                            style: TextStyle(
                                              fontSize: 12.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          )
                                        ],
                                      ),
                                    ],
                                  )
                                ],
                              )),
                              DataCell(
                                Text(
                                  "45 USD",
                                  style: TextStyle(
                                      fontSize: 18.sp,
                                      fontWeight: FontWeight.bold),
                                ),
                              ),
                              DataCell(
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  children: [
                                    Text(
                                      "Available: 300 DASH",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 10,
                                    ),
                                    Text(
                                      "Limit: 200-28000 USD",
                                      style: TextStyle(
                                        fontSize: 14.sp,
                                        fontWeight: FontWeight.bold,
                                      ),
                                    ),
                                  ],
                                ),
                              ),
                              DataCell(
                                Transform.scale(
                                  scale: 0.8,
                                  child: AppButton(
                                    onPressed: () {
                                      Get.to(() => const BuyDash());
                                    },
                                    text: "Buy Dash",
                                    color: AppColors.greenButton,
                                    radius: 5,
                                    textSize: 18.sp,
                                    height: 35,
                                    width: 130,
                                  ),
                                ),
                              ),
                            ],
                          )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
