import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../configs/routes/routes.dart';
import '../../controllers/controllers.dart';
import 'widgtes.dart';

class AuthGoogleButtonWidget extends GetView<LoginController> {
  final String text;
  const AuthGoogleButtonWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    return Obx((() => ElevatedButtonWidget(
          showProgressIndicator: controller.isLoginWithGooglePressed.value,
          hight: 56,
          child: Row(
            children: [
              const Spacer(),
              Image.asset(
                AssetsRoutes.google,
                width: 24,
                height: 24,
              ),
              const SizedBox(
                width: 24,
              ),
              Text(
                text,
                style: Theme.of(context)
                    .textTheme
                    .headline4!
                    .copyWith(fontSize: 16),
              ),
              const Spacer(),
            ],
          ),
          onPressed: () => controller.loginWithGoogle(),
        )));
  }
}
