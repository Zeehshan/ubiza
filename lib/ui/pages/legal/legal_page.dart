import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/controllers.dart';
import '../../widgets/widgtes.dart';

class LegaklPage extends StatelessWidget {
  const LegaklPage({super.key});

  @override
  Widget build(BuildContext context) {
    final controller = Get.find<UpdateProfileController>();
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 39),
        children: [
          const SizedBox(
            height: 170,
          ),
          Text(
            'app.termsAndConditionTitle'.tr,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 6,
          ),
          Text('app.termsAndConditionSubtitle'.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6),
          const SizedBox(
            height: 130,
          ),
          ElevatedButtonWidget(
              showGradient: true,
              hight: 56,
              child: Text('app.button.confirm'.tr),
              onPressed: () => controller.updateTermsCondiction()),
        ],
      ),
    );
  }
}
