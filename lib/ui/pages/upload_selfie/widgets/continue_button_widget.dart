import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';

class ContinueButtonWidget extends GetView<UpdateProfileController> {
  const ContinueButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationController authenticationController = Get.find();
    return Obx(() => ElevatedButtonWidget(
          showProgressIndicator: controller.selfieUploading.value,
          hight: 56,
          showGradient: true,
          onPressed: controller.selfie.value.isNotEmpty
              ? () => controller.updatedSelfie(authenticationController)
              : null,
          child: Text(
            'app.button.continue'.tr,
            style:
                Theme.of(context).textTheme.headline5!.copyWith(fontSize: 18),
          ),
        ));
  }
}
