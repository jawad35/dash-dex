import 'package:dash_money/src/app_utils/colors.dart';
import 'package:dash_money/src/modules/authentication/register/register.dart';
import 'package:dash_money/src/modules/authentication/widgets/web_container.dart';
import 'package:dash_money/src/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import '../../../components/app_text_field.dart';
import '../../../components/border_button.dart';

class WebLogin extends StatefulWidget {
  const WebLogin({super.key});

  @override
  State<WebLogin> createState() => _WebLoginState();
}

class _WebLoginState extends State<WebLogin> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          const WebLogoContainer(),
          Container(
            width: 655.w,
            decoration: const BoxDecoration(
              color: Colors.white,
            ),
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 90),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  Text(
                    "Log in",
                    style: TextStyle(
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat'),
                  ),
                  const SizedBox(
                    height: 50,
                  ),
                  Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 14.sp,
                      color: Colors.black,
                      fontWeight: FontWeight.w800,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  SizedBox(
                    width: 352.w,
                    height: 62.h,
                    child: AppTextField(
                      controller: TextEditingController(),
                      inputType: TextInputType.text,
                      action: TextInputAction.next,
                    ),
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 14.sp,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  SizedBox(
                    height: 3.h,
                  ),
                  SizedBox(
                    width: 352.w,
                    height: 62.h,
                    child: AppTextField(
                      controller: TextEditingController(),
                      obscure: true,
                      inputType: TextInputType.text,
                      action: TextInputAction.done,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BorderButton(
                    onPressed: () {
                      Get.to(() => const HomePage());
                    },
                    text: "Login",
                    textSize: 16.sp,
                    fontWeight: FontWeight.bold,
                    width: 123.w,
                    height: 50.h,
                    radius: 20,

                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const RegisterPage());
                    },
                    child: Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  )
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
