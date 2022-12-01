import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/widgtes.dart';
import 'widgets/widgets.dart';

class UploadCollegeIdPage extends StatelessWidget {
  const UploadCollegeIdPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBarWidget(
        title: Container(),
        backButtonCallback: null,
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Text(
            'app.upload.collegeId.title'.tr,
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
          const UploadCollegeIdWidghet(),
          const SizedBox(
            height: 40,
          ),
          const ContinueButtonWidget(),
        ],
      ),
    );
  }
}
