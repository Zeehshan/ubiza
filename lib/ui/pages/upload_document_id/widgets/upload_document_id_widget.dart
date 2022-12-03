import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/controllers.dart';
import '../../../../utils/utils.dart';
import '../../../widgets/widgtes.dart';

class UploadDocumentIdWidget extends GetView<UpdateProfileController> {
  const UploadDocumentIdWidget({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationController authenticationController = Get.find();
    return Obx((() => UploadDocumentWidget(
          isHttp:
              authenticationController.user.value.documentId?.document != null,
          path: authenticationController.user.value.documentId?.document ??
              controller.documentId.value,
          onChangedOption: (DocumentOptionType? type) {
            if (type != null) {
              controller.changedDocumentId(type: type);
            }
          },
        )));
  }
}
