import 'package:dash_money/src/app_utils/colors.dart';
import 'package:dash_money/src/app_utils/images.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class LogoContainer extends StatelessWidget {
  const LogoContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: const BoxDecoration(
        color: AppColors.primary,
      ),
      child: Center(
        child: Padding(
          padding: EdgeInsets.only(
            top: MediaQuery.paddingOf(context).top + 20,
            bottom: 25,
            right: 15,
            left: 15,
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SvgPicture.asset(
                AppImages.logo,
                height: MediaQuery.sizeOf(context).height * 0.05,
              ),
              const SizedBox(
                height: 10,
              ),
              const FittedBox(
                child: Text(
                  "Welcome to DASH Local Money",
                  style: TextStyle(
                    fontSize: 22,
                    color: Colors.white,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
