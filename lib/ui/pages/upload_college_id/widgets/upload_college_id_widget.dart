import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../controllers/controllers.dart';
import '../../../../utils/utils.dart';
import '../../../widgets/widgtes.dart';

class UploadCollegeIdWidghet extends GetView<UpdateProfileController> {
  const UploadCollegeIdWidghet({super.key});

  @override
  Widget build(BuildContext context) {
    return Obx((() => UploadDocumentWidget(
          path: controller.collegeId.value,
          onChangedOption: (DocumentOptionType? type) {
            if (type != null) {
              controller.changedCollegeId(type: type);
            }
          },
        )));
  }
}
