import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../configs/routes/app_pages.dart';
import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';

class ConfirmedButtonWidget extends GetView<UpdateProfileController> {
  const ConfirmedButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationController authenticationController = Get.find();
    final user = authenticationController.user.value;
    return Obx((() => ElevatedButtonWidget(
          width: double.infinity,
          showGradient: true,
          hight: 56,
          showProgressIndicator: controller.collegeConfirmed.value,
          onPressed: () {
            if (controller.selectyedCollege?.code == user.college) {
              Get.toNamed(AppRoutes.personalInfo);
            } else {
              controller.updateCollege(authenticationController);
            }
          },
          child: Text('app.button.confirm'.tr),
        )));
  }
}
