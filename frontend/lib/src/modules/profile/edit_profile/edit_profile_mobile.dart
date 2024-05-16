import 'package:dash_money/src/components/app_bar.dart';
import 'package:dash_money/src/components/app_button.dart';
import 'package:dash_money/src/components/text_field2.dart';
import 'package:dotted_line/dotted_line.dart';
import 'package:flutter/material.dart';

import '../../../app_utils/colors.dart';

class EditProfileMobile extends StatefulWidget {
  const EditProfileMobile({super.key});

  @override
  State<EditProfileMobile> createState() => _EditProfileMobileState();
}

class _EditProfileMobileState extends State<EditProfileMobile> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MyAppBar(context: context,deviceType: "mobile"),
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
                vertical: 15,
                horizontal: MediaQuery.sizeOf(context).width * 0.06),
            decoration: const BoxDecoration(
              color: AppColors.filledColor,
            ),
            child: const Text(
              "Edit Profile",
              style: TextStyle(
                fontSize: 14,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
          SizedBox(
            height: MediaQuery.sizeOf(context).height * 0.05,
          ),
          Padding(
            padding: EdgeInsets.symmetric(
                horizontal: MediaQuery.sizeOf(context).width * 0.06),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Column(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(20),
                          decoration: const BoxDecoration(
                            color: AppColors.primary,
                            shape: BoxShape.circle,
                          ),
                          child: const Center(
                            child: Text(
                              "M",
                              style: TextStyle(
                                fontSize: 18,
                                color: Colors.white,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        AppButton(
                          onPressed: () {},
                          radius: 5,
                          text: "Upload avatar",
                          width: 140,
                          alignment: MainAxisAlignment.start,
                          textSize: 12,
                          fontWeight: FontWeight.bold,
                          height: 35,
                        )
                      ],
                    ),
                    const SizedBox(
                      width: 15,
                    ),
                    const Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "Margot Paulson",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          "@m_paulson",
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 150,
                          child: Text(
                            "Some text about me. Lorem ipsum dolor sit amet, consectetur adipiscingelit. Etiam lectus enim, tempus a purus id, pharetra molestie ligula. Vestibulum pretium ligula sed elit suscipit, quis blandit sapien bibendum. ",
                            style: TextStyle(
                              fontSize: 12,
                              fontWeight: FontWeight.w500,
                            ),
                          ),
                        )
                      ],
                    )
                  ],
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
                  "Personal Details",
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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Name",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SecondaryTextField(
                            controller: TextEditingController(text: "Margot"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Surname",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SecondaryTextField(
                            controller: TextEditingController(text: "Paulson"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    AppButton(
                      onPressed: () {},
                      text: "Save",
                      radius: 5,
                      fontWeight: FontWeight.bold,
                      height: 45,
                      width: 100,
                    )
                  ],
                ),
                const SizedBox(
                  height: 20,
                ),
                const DottedLine(
                  dashColor: AppColors.greyText,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Account Info",
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
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "Nickname",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SecondaryTextField(
                            controller:
                                TextEditingController(text: "m_paulson"),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(
                      width: 30,
                    ),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          const Text(
                            "E-mail",
                            style: TextStyle(
                              fontSize: 10,
                            ),
                          ),
                          SecondaryTextField(
                            controller: TextEditingController(
                                text: "mpaulson@gmail.com"),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Description",
                  style: TextStyle(fontSize: 10),
                ),
                SizedBox(
                  width: 530,
                  child: ClipRRect(
                    borderRadius: BorderRadius.circular(5),
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
                  textSize: 14,
                  radius: 5,
                  width: 100,
                  height: 45,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 15,
                ),
                const Text(
                  "Security (Change the password)",
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                const SizedBox(
                  height: 15,
                ),
                const SizedBox(
                  width: 200,
                  child: SecondaryTextField(
                    hintText: "Old password",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 200,
                  child: SecondaryTextField(
                    hintText: "New password",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                const SizedBox(
                  width: 200,
                  child: SecondaryTextField(
                    hintText: "Repeat new password",
                  ),
                ),
                const SizedBox(
                  height: 10,
                ),
                AppButton(
                  onPressed: () {},
                  text: "Save",
                  textSize: 14,
                  radius: 5,
                  width: 100,
                  height: 45,
                  fontWeight: FontWeight.bold,
                ),
                const SizedBox(
                  height: 35,
                ),
              ],
            ),
          )
        ],
      ),
    );
  }
}
