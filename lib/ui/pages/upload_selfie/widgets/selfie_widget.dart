import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/controllers.dart';
import '../../../../utils/enums.dart';
import '../../../widgets/widgtes.dart';

class SelfieWidget extends GetView<UpdateProfileController> {
  const SelfieWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx((() => UploadDocumentWidget(
          path: controller.selfie.value,
          onChangedOption: (DocumentOptionType? type) {
            if (type != null) {
              controller.changedSelfie(type: type);
            }
          },
        )));
  }
}
