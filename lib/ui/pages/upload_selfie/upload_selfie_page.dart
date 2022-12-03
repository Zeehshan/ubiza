import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../configs/routes/app_pages.dart';
import '../../../controllers/controllers.dart';
import '../../widgets/widgtes.dart';
import 'widgets/widgets.dart';

class UploadSelfiePage extends GetView<UpdateProfileController> {
  const UploadSelfiePage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationController authenticationController = Get.find();
    return Scaffold(
      appBar: AppBarWidget(
        title: Container(),
        backButtonCallback: () {
          Get.offAllNamed(AppRoutes.personalInfo);
          controller.dobChanged(authenticationController.user.value.dob);
          controller
              .genderChanged(authenticationController.user.value.gender.name);
        },
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Text(
            'app.upload.selfie.title'.tr,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 6,
          ),
          Text('app.upload.selfie.subtitle'.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6),
          const SizedBox(
            height: 120,
          ),
          const SelfieWidget(),
          const SizedBox(
            height: 40,
          ),
          const ContinueButtonWidget(),
        ],
      ),
    );
  }
}
