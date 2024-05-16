import 'package:dash_money/src/app_utils/colors.dart';
import 'package:dash_money/src/components/app_text_field.dart';
import 'package:dash_money/src/components/border_button.dart';
import 'package:dash_money/src/modules/authentication/register/register.dart';
import 'package:dash_money/src/modules/authentication/widgets/logo_container.dart';
import 'package:dash_money/src/modules/home/home.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MobileWelcomeScreen extends StatefulWidget {
  const MobileWelcomeScreen({super.key});

  @override
  State<MobileWelcomeScreen> createState() => _MobileWelcomeScreenState();
}

class _MobileWelcomeScreenState extends State<MobileWelcomeScreen> {
  final TextEditingController _usernamecontroller = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: _bodyColumn(),
    );
  }

  Widget _bodyColumn() {
    return Column(
      children: [
        const LogoContainer(),
        Expanded(
          child: Form(
              child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 20),
            child: SingleChildScrollView(
              child: Column(
                children: [
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Log in",
                    style: TextStyle(
                      fontSize: 36,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  const Text(
                    "Username",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  AppTextField(
                    controller: _usernamecontroller,
                    inputType: TextInputType.text,
                    action: TextInputAction.next,
                      deviceType: "mobile"
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Password",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  AppTextField(
                    controller: _passwordController,
                    obscure: true,
                    inputType: TextInputType.text,
                    action: TextInputAction.done,
                      deviceType: "mobile"
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  BorderButton(
                    onPressed: () {
                      Get.to(() => const HomePage());
                    },
                    text: "Login",
                    textSize: 18,
                    fontWeight: FontWeight.bold,
                    width: 150,
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  TextButton(
                    onPressed: () {
                      Get.to(() => const RegisterPage());
                    },
                    child: const Text(
                      "Sign up",
                      style: TextStyle(
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                        color: AppColors.primary,
                      ),
                    ),
                  )
                ],
              ),
            ),
          )),
        )
      ],
    );
  }
}
