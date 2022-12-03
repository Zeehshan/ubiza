import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../configs/routes/app_pages.dart';
import '../../widgets/widgtes.dart';
import 'widgets/widgets.dart';

class UploadDocuemtnIdPage extends StatelessWidget {
  const UploadDocuemtnIdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Container(),
        backButtonCallback: () {
          Get.offAllNamed(AppRoutes.uploadSelfie);
        },
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Text(
            'app.upload.document.title'.tr,
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
          const UploadDocumentIdWidget(),
          const SizedBox(
            height: 40,
          ),
          const ContinueButtonWidget(),
        ],
      ),
    );
  }
}
