import 'package:dash_money/src/app_utils/colors.dart';
import 'package:dash_money/src/modules/authentication/login/login.dart';
import 'package:dash_money/src/modules/authentication/welcome/welcome.dart';
import 'package:dash_money/src/modules/buy_dash/offer/buy.dart';
import 'package:dash_money/src/modules/buy_dash/offer/buy_dash_web.dart';
import 'package:dash_money/src/modules/buy_dash/order/buy_order.dart';
import 'package:dash_money/src/modules/home/home.dart';
import 'package:dash_money/src/modules/profile/edit_profile/edit_profile.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'firebase_options.dart';
import 'src/modules/buy_dash/order/buy_order_web.dart';
import 'src/modules/profile/profile/profile_web.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(
    options: DefaultFirebaseOptions.currentPlatform,
  );

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(1728, 1117),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (context, child) {
        return GetMaterialApp(
            title: 'Local Money',
            theme: ThemeData(
              colorScheme: ColorScheme.fromSeed(
                seedColor: AppColors.primary,
              ),
              primaryColor: AppColors.primary,
              primarySwatch: AppColors.primary,
              useMaterial3: true,
              fontFamily: "Montserrat",
            ),
            home: const HomePage(),);

      },
    );
  }
}
