import 'package:dash_money/src/app_utils/colors.dart';
import 'package:dash_money/src/components/app_bar.dart';
import 'package:dash_money/src/modules/profile/edit_profile/edit_profile.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ProfileMobile extends StatefulWidget {
  const ProfileMobile({super.key});

  @override
  State<ProfileMobile> createState() => _ProfileMobileState();
}

class _ProfileMobileState extends State<ProfileMobile> {
  bool feedback = false;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context: context, deviceType: "mobile"),
      body: _bodyColumn(),
    );
  }

  Widget _bodyColumn() {
    return SingleChildScrollView(
      child: Column(
        children: [
          const SizedBox(
            height: 15,
          ),
          _userInfoWidget(),
          const SizedBox(
            height: 15,
          ),
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
            height: 15,
          ),
          Center(
            child: Padding(
              padding: const EdgeInsets.only(
                  left: 15.0, right: 8, top: 8, bottom: 8),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  _statsColumn(title: "Trades", val: "137"),
                  const SizedBox(height: 50, child: VerticalDivider()),
                  _statsColumn(title: "This month", val: "30"),
                  const SizedBox(height: 50, child: VerticalDivider()),
                  _statsColumn(title: "Maker", val: "120"),
                  const SizedBox(height: 50, child: VerticalDivider()),
                  _statsColumn(title: "Taker ", val: "213"),
                  const SizedBox(height: 50, child: VerticalDivider()),
                  _statsColumn(title: "Avg. time", val: "1.4 m"),
                ],
              ),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Row(
              children: [
                GestureDetector(
                  onTap: () {
                    setState(() {
                      feedback = false;
                    });
                  },
                  child: Text(
                    "Recent Trades",
                    style: TextStyle(
                      decoration:
                          feedback == false ? TextDecoration.underline : null,
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
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
                  child: Text(
                    "Feedback",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                      decoration:
                          feedback == true ? TextDecoration.underline : null,
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(
            height: 15,
          ),
          feedback == true
              ? Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Colors.purple,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Steve Willson",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 14,
                                    ),
                                ],
                              ),
                              const Text(
                                "Nice trader. Fast and safe",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Colors.brown,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                "Robert jr.",
                                style: TextStyle(
                                  fontSize: 14,
                                  fontWeight: FontWeight.bold,
                                ),
                              ),
                              Row(
                                children: [
                                  for (int i = 0; i < 5; i++)
                                    const Icon(
                                      Icons.star,
                                      color: Colors.yellow,
                                      size: 14,
                                    ),
                                ],
                              ),
                              const Text(
                                "The best trader",
                                style: TextStyle(
                                  fontSize: 14,
                                ),
                              )
                            ],
                          )
                        ],
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      Row(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Container(
                            padding: const EdgeInsets.all(15),
                            decoration: const BoxDecoration(
                              color: Colors.blue,
                              shape: BoxShape.circle,
                            ),
                          ),
                          const SizedBox(
                            width: 10,
                          ),
                          Expanded(
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                const Text(
                                  "Clara Mansopn",
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontWeight: FontWeight.bold,
                                  ),
                                ),
                                Row(
                                  children: [
                                    for (int i = 0; i < 5; i++)
                                      const Icon(
                                        Icons.star,
                                        color: Colors.yellow,
                                        size: 14,
                                      ),
                                  ],
                                ),
                                const Text(
                                  "Not bad. There was some issue with the payment",
                                  style: TextStyle(
                                    fontSize: 14,
                                  ),
                                )
                              ],
                            ),
                          )
                        ],
                      )
                    ],
                  ),
                )
              : DataTable(
                  headingTextStyle: const TextStyle(
                    color: AppColors.greyText,
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                  columnSpacing: 8,
                  showBottomBorder: false,
                  columns: const [
                    DataColumn(
                        label: Center(
                      child: Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: Text('Action'),
                      ),
                    )),
                    DataColumn(
                      label: Padding(
                        padding: EdgeInsets.fromLTRB(8, 8, 8, 8),
                        child: SizedBox(width: 60, child: Text("Rate (USD)")),
                      ),
                    ),
                    DataColumn(
                      label: Expanded(child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          Text("Quantity\n(DASH)"),
                        ],
                      )),
                    ),
                    DataColumn(
                      label: Expanded(
                        child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                              padding: EdgeInsets.all(8.0),
                              child: Text("Date"),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                  rows: [
                    for (int i = 0; i < 10; i++)
                      const DataRow(
                        cells: [
                          DataCell(
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 8.0),
                              child: Text(
                                "Buy",
                                style: TextStyle(
                                    fontSize: 12,
                                    color: Colors.green,
                                    fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          DataCell(
                            Padding(
                              padding: EdgeInsets.symmetric(horizontal: 18.0),
                              child: Text(
                                "56",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          DataCell(
                            Padding(
                              padding: EdgeInsets.fromLTRB(8, 0, 8, 0),
                              child: Text(
                                "14",
                                style: TextStyle(
                                    fontSize: 12, fontWeight: FontWeight.bold),
                              ),
                            ),
                          ),
                          DataCell(
                            Text(
                              "2023-02-09 09:27",
                              style: TextStyle(
                                  fontSize: 12, fontWeight: FontWeight.bold),
                            ),
                          ),
                        ],
                      )
                  ],
                )
        ],
      ),
    );
  }

  Widget _statsColumn({required String title, required String val}) {
    return Column(
      children: [
        Text(
          title,
          style: const TextStyle(
            fontSize: 12,
            fontWeight: FontWeight.bold,
            overflow: TextOverflow.ellipsis,
          ),
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
          val,
          style: const TextStyle(
            fontSize: 14,
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
                height: 10,
              ),
              const Row(
                children: [
                  Text(
                    "Rating: 4.5",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    width: 20,
                  ),
                  Text(
                    "Trading: 137",
                    style: TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 5,
              ),
              const Text(
                "Fast trades without any delays",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 5,
              ),
              GestureDetector(
                onTap: () {
                  Get.to(() => const EditProfilePage());
                },
                child: const Text(
                  "Edit Profile",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                    color: AppColors.primary,
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
