import 'package:dash_money/src/app_utils/colors.dart';
import 'package:dash_money/src/app_utils/images.dart';
import 'package:dash_money/src/modules/authentication/login/login.dart';
import 'package:dash_money/src/modules/profile/profile/profile.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

class MyAppBar extends AppBar {
  String? deviceType;

  MyAppBar({
    Key? key,
    required BuildContext context, deviceType,
  }) : super(
          key: key,
          leadingWidth: 0,
          titleSpacing: 68.w,
          toolbarHeight: 78.h,
          title: SvgPicture.asset(
            AppImages.dashLogo,
            height: 44.h,
            width: 44.w,
          ),
          backgroundColor: AppColors.primary,
          elevation: 0,
          automaticallyImplyLeading: false,
          actions: <Widget>[
            SvgPicture.asset(
              AppImages.bellIcon,
              fit: BoxFit.contain,
              width: 25.sp,
            ),
            SizedBox(width: 27.w),
            TextButton(
              onPressed: () {
                Get.to(() => const ProfilePage());
              },
              style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(0)),
              ),
              child: Text(
                "Profile",
                style: TextStyle(
                    fontSize: deviceType == "mobile" ? 14 : 20.sp,
                    fontWeight: FontWeight.w500,
                    fontFamily: "Montserrat",
                    color: Colors.white),
              ),
            ),
            SizedBox(width: 27.w),

            deviceType == "mobile" ? const Text(
              "Log out",
              style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w500,
                  color: Colors.white),
            ) :
            TextButton(
              style: ButtonStyle(
                padding:
                    MaterialStateProperty.all<EdgeInsets>(const EdgeInsets.all(0)),
              ),
              onPressed: () {
                Get.offAll(() => const LoginPage());
              },
              child: Text(
                "Log out",
                style: TextStyle(
                    fontSize: 20.sp,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
            ),
            SizedBox(
              width: 53.w,
            )
          ],
        );
}
