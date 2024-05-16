import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../components/app_text_field.dart';
import '../../../components/border_button.dart';
import '../../home/home.dart';
import '../widgets/logo_container.dart';

class MobileRegisterScreen extends StatefulWidget {
  const MobileRegisterScreen({super.key});

  @override
  State<MobileRegisterScreen> createState() => _MobileRegisterScreenState();
}

class _MobileRegisterScreenState extends State<MobileRegisterScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  final TextEditingController _repeatPasswordController =
      TextEditingController();
  @override
  Widget build(BuildContext context) {
    return Scaffold(
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
                    "Sign up",
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
                    controller: _usernameController,
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
                    inputType: TextInputType.text,
                    obscure: true,
                    action: TextInputAction.next,
                      deviceType: "mobile"
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  const Text(
                    "Repeat Password",
                    style: TextStyle(
                      fontSize: 16,
                    ),
                  ),
                  AppTextField(
                    controller: _repeatPasswordController,
                    inputType: TextInputType.text,
                    obscure: true,
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
                    text: "Sign up",
                    textSize: 18,
                    fontWeight: FontWeight.bold,
                    width: 150,
                  ),
                ],
              ),
            ),
          )),
        )
      ],
    );
  }
}
