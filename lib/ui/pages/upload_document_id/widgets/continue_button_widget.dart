import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../configs/routes/app_pages.dart';
import '../../../../controllers/controllers.dart';
import '../../../widgets/widgtes.dart';

class ContinueButtonWidget extends GetView<UpdateProfileController> {
  const ContinueButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationController authenticationController = Get.find();
    return Obx(() => ElevatedButtonWidget(
          showProgressIndicator: controller.documentIdUploading.value,
          hight: 56,
          showGradient: true,
          onPressed: controller.documentId.value.isNotEmpty ||
                  authenticationController.user.value.documentId?.document !=
                      null
              ? () {
                  if (controller.documentId.value.isNotEmpty) {
                    controller.updatedDocumentId(authenticationController);
                  } else {
                    Get.offAllNamed(AppRoutes.uploadCollegeId);
                  }
                }
              : null,
          child: Text(
            'app.button.continue'.tr,
            style:
                Theme.of(context).textTheme.headline5!.copyWith(fontSize: 18),
          ),
        ));
  }
}
