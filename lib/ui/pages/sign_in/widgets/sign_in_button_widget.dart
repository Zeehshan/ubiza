import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';

class SignInButtonWidget extends GetView<LoginController> {
  const SignInButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx(() => ElevatedButtonWidget(
          showProgressIndicator: controller.isLoginPressed.value,
          hight: 56,
          showGradient: true,
          onPressed:
              controller.email.value.valid && controller.password.value.valid
                  ? controller.singIn
                  : null,
          child: Text(
            'app.SignIn.title'.tr,
            style:
                Theme.of(context).textTheme.headline5!.copyWith(fontSize: 18),
          ),
        ));
  }
}
