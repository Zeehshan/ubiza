import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/controllers.dart';
import '../../../../utils/enums.dart';
import '../../../widgets/widgtes.dart';

class SelfieWidget extends GetView<UpdateProfileController> {
  const SelfieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationController authenticationController = Get.find();
    return Obx((() => UploadDocumentWidget(
          isHttp: authenticationController.user.value.selfie?.document != null,
          path: authenticationController.user.value.selfie?.document ??
              controller.selfie.value,
          onChangedOption: (DocumentOptionType? type) {
            if (type != null) {
              controller.changedSelfie(type: type);
            }
          },
        )));
  }
}
