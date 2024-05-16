import 'package:dash_money/src/modules/authentication/login/login.dart';
import 'package:dash_money/src/modules/authentication/register/register.dart';
import 'package:dash_money/src/modules/authentication/widgets/web_container.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';
import '../../../app_utils/images.dart';
import '../../../components/border_button.dart';

class WebWelcome extends StatefulWidget {
  const WebWelcome({super.key});

  @override
  State<WebWelcome> createState() => _WebWelcomeState();
}

class _WebWelcomeState extends State<WebWelcome> {
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
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  SizedBox(
                    height: 368.h,
                  ),
                  Text(
                    "Get started",
                    style: TextStyle(
                        fontSize: 50.sp,
                        fontWeight: FontWeight.w700,
                        fontFamily: 'Montserrat'),
                  ),
                  SizedBox(
                    height: 230.h,
                  ),
                  SizedBox(
                    width: 352.w,
                    height: 62.h,
                    child: BorderButton(
                      onPressed: () {
                        Get.to(() => const LoginPage());
                      },
                      text: "Log in",
                      radius: 20.sp,
                      textSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      width: 352.w,
                      height: 62,
                    ),
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  SizedBox(
                    width: 352.w,
                    height: 62.h,
                    child: BorderButton(
                      onPressed: () {
                        Get.to(() => const RegisterPage());
                      },
                      text: "Sign up",
                      radius: 20.sp,
                      textSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      width: 352.w,
                      height: 62,
                    ),
                  ),
                  SizedBox(
                    height: 33.h,
                  ),
                  SizedBox(
                    width: 352.w,
                    height: 62.h,
                    child: BorderButton(
                      onPressed: () {},
                      text: "Connect via Dash Network ",
                      radius: 20.sp,
                      textSize: 20.sp,
                      fontWeight: FontWeight.bold,
                      width: 352.w,
                      height: 62,
                      alignment: MainAxisAlignment.center,
                      icon: Padding(
                        padding: EdgeInsets.only(
                          right: 12.w,
                        ),
                        child: SvgPicture.asset(
                          AppImages.logo,
                          height: 25.w,
                          width: 25.w,
                          color: Color(0xff008DE4),
                        ),
                      ),
                    ),
                  ),
                  SizedBox(
                    height: 195.h,
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
