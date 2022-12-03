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
    return Obx((() => controller.selectyedCollege.value == null
        ? Container()
        : ElevatedButtonWidget(
            width: double.infinity,
            showGradient: true,
            hight: 56,
            showProgressIndicator: controller.collegeConfirmed.value,
            onPressed: () {
              final user = authenticationController.user.value;

              if (controller.selectyedCollege.value?.code == user.college) {
                Get.toNamed(AppRoutes.personalInfo);
              } else {
                controller.updateCollege(authenticationController);
              }
            },
            child: Text('app.button.confirm'.tr),
          )));
  }
}
