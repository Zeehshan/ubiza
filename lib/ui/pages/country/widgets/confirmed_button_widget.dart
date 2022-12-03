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
    return Obx((() => controller.selectedCountry.value == null
        ? Container()
        : ElevatedButtonWidget(
            width: double.infinity,
            showGradient: true,
            hight: 56,
            showProgressIndicator: controller.countryConfirmed.value,
            onPressed: () {
              if (controller.selectedCountry.value?.code == user.country) {
                authenticationController.refreshedUser();
                controller.loadingColleges(
                    countryCode: controller.selectedCountry.value!.code);
                Get.toNamed(AppRoutes.college);
              } else {
                controller.updateCountry(authenticationController);
              }
            },
            child: Text('app.button.confirm'.tr),
          )));
  }
}
