import 'package:dash_money/src/modules/profile/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../app_utils/colors.dart';
import '../../../components/app_bar.dart';

class ProfileWeb extends StatefulWidget {
  const ProfileWeb({super.key});

  @override
  State<ProfileWeb> createState() => _ProfileWebState();
}

class _ProfileWebState extends State<ProfileWeb> {
  bool feedback = false;

  List<List<String>> columnData = [
    ["Buy", "56.0", "14", "2023-02-09 09:23"],
    ["Buy", "55.8", "43", "2023-02-09 09:27"],
    ["Sell", "59.0", "03", "2023-02-09 09:43"],
    ["Buy", "55.8", "90", "2023-02-09 12:23"],
    ["Sell", "56.0", "14", "2023-02-09 12:26"],
    ["Sell", "55.8", "43", "2023-02-09 12:32"],
    ["Sell", "59.0", "03", "2023-02-09 12:36"],
    ["Buy", "55.8", "43", "2023-02-09 12:50"],
    ["Sell", "59.0", "03", "2023-02-09 09:43"],
    ["Buy", "55.8", "90", "2023-02-09 12:23"],
    ["Sell", "56.0", "14", "2023-02-09 12:26"],
    ["Sell", "55.8", "43", "2023-02-09 12:32"],
    ["Sell", "59.0", "03", "2023-02-09 12:36"],
    ["Buy", "55.8", "43", "2023-02-09 12:50"],
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: MyAppBar(context: context),
      body: _bodyColumn(),
    );
  }

  Widget _bodyColumn() {
    return SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(
          horizontal: MediaQuery.sizeOf(context).width * 0.05,
        ),
        child: Column(
          children: [
            SizedBox(
              height: MediaQuery.sizeOf(context).height * 0.05,
            ),
            _userInfoWidget(),
            const SizedBox(
              height: 25,
            ),
            Padding(
              padding: const EdgeInsets.only(left: 75),
              child: Column(
                children: [
                  const Center(
                    child: Text(
                      "Statistics",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Align(
                      alignment: Alignment.centerLeft,
                      child: Row(
                     //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          _statsColumn(title: "Trades", val: "137"),
                          const SizedBox(
                              height: 50, child: VerticalDivider()),
                          _statsColumn(title: "Trades this month", val: "30"),
                          const SizedBox(
                              height: 50, child: VerticalDivider()),
                          _statsColumn(title: "Trades as maker", val: "120"),
                          const SizedBox(
                              height: 50, child: VerticalDivider()),
                          _statsColumn(title: "Trades as taker ", val: "213"),
                          const SizedBox(
                              height: 50, child: VerticalDivider()),
                          _statsColumn(
                              title: "Avg. trade time", val: "1.4 m"),
                        ],
                      ),
                    ),
                  ),
                  const SizedBox(
                    height: 90,
                  ),
                  Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 5),
                    child: Row(
                      children: [
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              feedback = false;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: feedback == false
                                    ? Border(
                                        bottom: BorderSide(
                                            color: AppColors.primary))
                                    : Border()),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                "Recent Trades",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(height: 15, child: VerticalDivider()),
                        GestureDetector(
                          onTap: () {
                            setState(() {
                              feedback = true;
                            });
                          },
                          child: Container(
                            decoration: BoxDecoration(
                                border: feedback == true
                                    ? Border(
                                        bottom: BorderSide(
                                            color: AppColors.primary))
                                    : Border()),
                            child: MouseRegion(
                              cursor: SystemMouseCursors.click,
                              child: Text(
                                "Feedbacks",
                                style: TextStyle(
                                  fontSize: 18.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  Align(
                    alignment: Alignment.topLeft,
                    child: feedback == true
                        ? Padding(
                            padding: EdgeInsets.symmetric(horizontal: 7.3.w),
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 40,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(15),
                                      margin: EdgeInsets.only(top: 2),
                                      decoration: const BoxDecoration(
                                        color: Colors.purple,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Steve Willson",
                                          style: TextStyle(
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            for (int i = 0; i < 5; i++)
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 1),
                                                child: Icon(
                                                  Icons.star,
                                                  color: i == 4
                                                      ? Colors.grey
                                                      : Colors.yellow,
                                                  size: 16,
                                                ),
                                              ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Nice trader. Fast and safe",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(15),
                                      margin: EdgeInsets.only(top: 2),
                                      decoration: const BoxDecoration(
                                        color: Colors.brown,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Robert jr.",
                                          style: TextStyle(
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            for (int i = 0; i < 5; i++)
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 1),
                                                child: Icon(
                                                  Icons.star,
                                                  color: Colors.yellow,
                                                  size: 16,
                                                ),
                                              ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "The best trader",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Container(
                                      padding: const EdgeInsets.all(15),
                                      margin: EdgeInsets.only(top: 2),
                                      decoration: const BoxDecoration(
                                        color: Colors.blue,
                                        shape: BoxShape.circle,
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 5,
                                    ),
                                    Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          "Clara Mansopn",
                                          style: TextStyle(
                                            fontSize: 22.sp,
                                            fontWeight: FontWeight.bold,
                                          ),
                                        ),
                                        Row(
                                          children: [
                                            for (int i = 0; i < 5; i++)
                                              Padding(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 1),
                                                child: Icon(
                                                  Icons.star,
                                                  color: i == 4
                                                      ? Colors.grey
                                                      : Colors.yellow,
                                                  size: 16,
                                                ),
                                              ),
                                          ],
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Text(
                                          "Not bad. There was some issue with the payment",
                                          style: TextStyle(
                                            fontSize: 13,
                                            fontWeight: FontWeight.w500,
                                          ),
                                        )
                                      ],
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),
                          )
                        : SizedBox(
                            width: 1280.w,
                            child: Column(
                              children: [
                                SizedBox(
                                  height: 8,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Action",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.greyText,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Rate (USD)",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.greyText,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 1,
                                      child: Text(
                                        "Quantity (DASH)",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.greyText,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: Text(
                                        "Date",
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: AppColors.greyText,
                                          fontSize: 12.sp,
                                          fontWeight: FontWeight.w600,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(height: 2.h),
                                Container(
                                  height: 1,
                                  color: AppColors.greyText,
                                ),
                                SizedBox(height: 8),
                                ...columnData.map((e) {
                                  return Padding(
                                    padding: const EdgeInsets.symmetric(
                                        vertical: 1.5),
                                    child: Row(
                                      children: [
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "${e[0]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w600,
                                              color: e[0] == "Sell"
                                                  ? Colors.red
                                                  : Colors.green,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "${e[1]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 1,
                                          child: Text(
                                            "${e[2]}",
                                            textAlign: TextAlign.center,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                        Expanded(
                                          flex: 2,
                                          child: Text(
                                            "${e[3]}",
                                            textAlign: TextAlign.center,
                                            textDirection: TextDirection.ltr,
                                            style: TextStyle(
                                              fontSize: 20.sp,
                                              fontWeight: FontWeight.w600,
                                            ),
                                          ),
                                        ),
                                      ],
                                    ),
                                  );
                                }).toList(),
                                SizedBox(
                                  height: 30,
                                ),
                              ],
                            ),

                            // DataTable(
                            //   headingRowHeight: 30,
                            //   dataRowHeight: 40,
                            //   dividerThickness: 0,
                            //   headingTextStyle: TextStyle(
                            //     color: AppColors.greyText,
                            //     fontWeight: FontWeight.bold,
                            //     fontSize: 18.sp,
                            //     fontFamily: "Montserrat",
                            //   ),
                            //   columnSpacing:
                            //       MediaQuery.sizeOf(context).width * 0.12,
                            //   showBottomBorder: false,
                            //   columns: const [
                            //     DataColumn(
                            //       label: Text("Action"),
                            //     ),
                            //     DataColumn(
                            //       label: Text("Rate (USD)"),
                            //     ),
                            //     DataColumn(
                            //       label: Text("Quantity\n(DASH)"),
                            //     ),
                            //     DataColumn(
                            //       label: Text("Date"),
                            //     ),
                            //   ],
                            //   rows: [
                            //     for (int i = 0; i < 10; i++)
                            //       const DataRow(
                            //         cells: [
                            //           DataCell(
                            //             Text(
                            //               "Buy",
                            //               style: TextStyle(
                            //                   fontSize: 14,
                            //                   color: Colors.green,
                            //                   fontWeight: FontWeight.bold),
                            //             ),
                            //           ),
                            //           DataCell(
                            //             Text(
                            //               "56",
                            //               style: TextStyle(
                            //                   fontSize: 14,
                            //                   fontWeight: FontWeight.bold),
                            //             ),
                            //           ),
                            //           DataCell(
                            //             Text(
                            //               "14",
                            //               style: TextStyle(
                            //                   fontSize: 14,
                            //                   fontWeight: FontWeight.bold),
                            //             ),
                            //           ),
                            //           DataCell(
                            //             Text(
                            //               "2023-02-09 09:27",
                            //               style: TextStyle(
                            //                   fontSize: 14,
                            //                   fontWeight: FontWeight.bold),
                            //             ),
                            //           ),
                            //         ],
                            //       )
                            //   ],
                            // ),
                          ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _statsColumn({required String title, required String val}) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 8,
        ),
        Text(
          val,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
          ),
        ),
      ],
    );
  }

  Widget _userInfoWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            padding: const EdgeInsets.all(14),
            decoration: const BoxDecoration(
                shape: BoxShape.circle, color: AppColors.primary),
            child: const Center(
              child: Text(
                "M",
                style: TextStyle(
                    fontSize: 24,
                    fontWeight: FontWeight.bold,
                    color: Colors.white),
              ),
            ),
          ),
          const SizedBox(
            width: 15,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Margot Paulson",
                style: TextStyle(
                  fontSize: 18,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 15,
              ),
              const Row(
                children: [
                  Text(
                    "Rating: 4.5",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Trading: 137",
                    style: TextStyle(
                      fontSize: 12,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 6,
              ),
              const Text(
                "Fast trades without any delays",
                style: TextStyle(
                  fontSize: 12,
                  fontWeight: FontWeight.w600,
                ),
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const EditProfilePage());
                },
                child: const MouseRegion(
                  cursor: SystemMouseCursors.click,
                  child: Text(
                    "Edit Profile",
                    style: TextStyle(
                      fontSize: 11,
                      fontWeight: FontWeight.w600,
                      color: AppColors.primary,
                    ),
                  ),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
