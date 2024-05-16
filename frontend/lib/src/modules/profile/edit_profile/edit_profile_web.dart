import 'package:dash_money/src/components/app_bar.dart';
import 'package:dash_money/src/components/app_button.dart';
import 'package:dash_money/src/components/text_field2.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../app_utils/colors.dart';

class EditProfileWeb extends StatefulWidget {
  const EditProfileWeb({super.key});

  @override
  State<EditProfileWeb> createState() => _EditProfileWebState();
}

class _EditProfileWebState extends State<EditProfileWeb> {
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
      child: Column(
        children: [
          Container(
            width: MediaQuery.sizeOf(context).width,
            padding: EdgeInsets.symmetric(
                vertical: 20,
                horizontal: MediaQuery.sizeOf(context).width * 0.07),
            decoration: const BoxDecoration(
              color: AppColors.filledColor,
            ),
            child: Text(
              "Edit Profile",
              style: TextStyle(
                fontSize: 18.sp,
                fontWeight: FontWeight.w600,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.07),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Column(
                  children: [
                    Container(
                      padding: const EdgeInsets.all(5),
                      height: 100.w,
                      width: 100.w,
                      decoration: const BoxDecoration(
                        color: AppColors.primary,
                        shape: BoxShape.circle,
                      ),
                      child: Center(
                        child: Text(
                          "M",
                          style: TextStyle(
                            fontSize: 36.sp,
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Container(
                      width: 100.w,
                      height: 25,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: AppColors.primary,
                      ),
                      child: Center(
                        child: Text(
                          "Upload avatar",
                          style: TextStyle(
                            fontSize: 16.sp,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  width: 20,
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    const SizedBox(
                      width: 15,
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Margot Paulson",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        SizedBox(
                          height: 3,
                        ),
                        Text(
                          "@m_paulson",
                          style: TextStyle(
                            fontSize: 18.sp,
                            fontWeight: FontWeight.w600,
                          ),
                        ),
                        const SizedBox(
                          height: 5,
                        ),
                        SizedBox(
                          width: 500,
                          child: Text(
                            "Some text about me. Lorem ipsum dolor sit amet, consectetur adipiscingelit. Etiam lectus enim, tempus a purus id, pharetra molestie ligula. Vestibulum pretium ligula sed elit suscipit, quis blandit sapien bibendum. ",
                            style: TextStyle(
                              fontSize: 14.sp,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 800.w),
                          child: Text(
                            "Edit",
                            style: TextStyle(
                                fontSize: 18.w, fontWeight: FontWeight.w600),
                          ),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: const DottedLine(
                        dashColor: AppColors.greyText,
                        dashLength: 1.5,
                        dashGapLength: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Personal Info",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        SizedBox(
                          width: 200.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  Name",
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                                width: 200.w,
                                child: SecondaryTextField(
                                  contentPadding:
                                      EdgeInsets.only(left: 10, bottom: 9),
                                  controller:
                                      TextEditingController(text: "Margot"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 59.w,
                        ),
                        SizedBox(
                          width: 200.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  Surname",
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                                child: SecondaryTextField(
                                  contentPadding:
                                      EdgeInsets.only(left: 10, bottom: 9),
                                  controller:
                                      TextEditingController(text: "Paulson"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 59.w,
                        ),
                        AppButton(
                          onPressed: () {},
                          text: "Save",
                          radius: 5,
                          fontWeight: FontWeight.w600,
                          textSize: 16.sp,
                          height: 40,
                          width: 120.w,
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    SizedBox(
                      width: MediaQuery.sizeOf(context).width * 0.7,
                      child: const DottedLine(
                        dashColor: AppColors.greyText,
                        dashLength: 1.5,
                        dashGapLength: 2,
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    Text(
                      "Account Info",
                      style: TextStyle(
                        fontSize: 14.w,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 12,
                    ),
                    Row(
                      children: [
                        SizedBox(
                          width: 200.w,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  Nickname",
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                                child: SecondaryTextField(
                                  contentPadding:
                                      EdgeInsets.only(left: 10, bottom: 9),
                                  controller:
                                      TextEditingController(text: "m_paulson"),
                                ),
                              ),
                            ],
                          ),
                        ),
                        SizedBox(
                          width: 59.w,
                        ),
                        SizedBox(
                          width: 200.w,
                          // height: 40,
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "  E-mail",
                                style: TextStyle(
                                  fontSize: 8.sp,
                                  fontWeight: FontWeight.w600,
                                ),
                              ),
                              SizedBox(
                                height: 40,
                                child: SecondaryTextField(
                                  contentPadding:
                                      EdgeInsets.only(left: 10, bottom: 9),
                                  controller: TextEditingController(
                                      text: "mpaulson@gmail.com"),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 18,
                    ),
                    Text(
                      "  Description",
                      style: TextStyle(
                        fontSize: 8.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    SizedBox(
                      width: 459.w,
                      child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: TextFormField(
                          maxLines: 4,
                          style: const TextStyle(
                            fontSize: 12,
                            fontWeight: FontWeight.bold,
                          ),
                          decoration: const InputDecoration(
                            filled: true,
                            hintStyle: TextStyle(
                              color: AppColors.greyFilled,
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                            fillColor: AppColors.filledColor,
                            enabledBorder: InputBorder.none,
                            errorBorder: InputBorder.none,
                            focusedBorder: InputBorder.none,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 15,
                    ),
                    AppButton(
                      onPressed: () {},
                      text: "Save",
                      radius: 5,
                      fontWeight: FontWeight.w600,
                      textSize: 16.sp,
                      height: 40,
                      width: 120.w,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                    Text(
                      "Security (Change the password)",
                      style: TextStyle(
                        fontSize: 14.sp,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 200.w,
                      height: 40,
                      child: SecondaryTextField(
                        hintText: "Old password",
                        obscure: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 200.w,
                      height: 40,
                      child: SecondaryTextField(
                        hintText: "New password",
                        obscure: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    SizedBox(
                      width: 200.w,
                      height: 40,
                      child: SecondaryTextField(
                        hintText: "Repeat new password",
                        obscure: true,
                      ),
                    ),
                    const SizedBox(
                      height: 10,
                    ),
                    AppButton(
                      onPressed: () {},
                      text: "Save",
                      radius: 5,
                      fontWeight: FontWeight.w600,
                      textSize: 16.sp,
                      height: 40,
                      width: 120.w,
                    ),
                    const SizedBox(
                      height: 35,
                    ),
                  ],
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
