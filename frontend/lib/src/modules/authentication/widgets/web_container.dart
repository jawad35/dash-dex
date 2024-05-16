import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'package:google_fonts/google_fonts.dart';

import '../../../app_utils/colors.dart';
import '../../../app_utils/images.dart';

class WebLogoContainer extends StatelessWidget {
  const WebLogoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 1073.w,
      decoration: const BoxDecoration(
        color: AppColors.primary,
      ),
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 120),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Expanded(child: SizedBox()),
            SvgPicture.asset(
              AppImages.logo,
              height: 300.w,
              width: 300.w,
            ),
            const Expanded(child: SizedBox()),
            Text(
              "Welcome to DASH Local Money.\nLorem ipsum dolor sit amet, consectetur adipiscing elit. Etiam lectus enim, tempus a purus id, pharetra molestie ligula. Vestibulum pretium ligula sed elit suscipit, quis blandit sapien bibendum. Praesent in mi sed purus commodo feugiat. Donec a lacus ante. Nulla in imperdiet augue, a lacinia orci. Quisque tincidunt nunc nec arcu facilisis egestas. Cras gravida tortor massa, aliquet ullamcorper enim semper id. Vestibulum in lectus vestibulum, scelerisque magna vitae, viverra dui. Pellentesque nec volutpat nibh, id dictum ipsum. Ut erat ex, tincidunt eu eleifend et, congue a mi.",
              style: GoogleFonts.openSans(
                fontSize: 18.sp,
                fontWeight: FontWeight.w700,
                height: (24.51 / 18.sp).sp,
                color: Colors.white,
              ),
            ),
            const Expanded(child: SizedBox()),
          ],
        ),
      ),
    );
  }
}
