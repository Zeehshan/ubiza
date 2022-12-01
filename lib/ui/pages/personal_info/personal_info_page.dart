import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../configs/routes/app_pages.dart';
import '../../../controllers/controllers.dart';
import '../../../utils/utils.dart';
import '../../widgets/widgtes.dart';
import 'widgets/widgets.dart';

class PersonalInfoPage extends GetView<UpdateProfileController> {
  const PersonalInfoPage({super.key});

  @override
  Widget build(BuildContext context) {
    final AuthenticationController authenticationController = Get.find();
    final user = authenticationController.user.value;

    return Scaffold(
      appBar: AppBarWidget(
        title: Container(),
        backButtonCallback: () {
          if (controller.colleges.isNotEmpty) {
            controller.collegeChanged(controller.colleges
                .firstWhere((element) => element.code == user.college));
          }
          Get.offAllNamed(AppRoutes.college);
        },
      ),
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 30),
        children: [
          Center(
            child: NetworkImageWidget(
                isUser: false,
                borderRadius: 100,
                width: 93,
                height: 93,
                padding: 10,
                imageUrl: user.collegeLogo),
          ),
          const SizedBox(
            height: 35,
          ),
          Text(
            'app.info.title'.tr,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          Text('app.info.subtitle'.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline6),
          const SizedBox(
            height: 20,
          ),
          const FNameInputWIdget(),
          const SizedBox(
            height: 15,
          ),
          const LNameInputWIdget(),
          const SizedBox(
            height: 15,
          ),
          const DOBInputWIdget(),
          const SizedBox(
            height: 15,
          ),
          const SelectGendorWidget(),
          const SizedBox(
            height: 15,
          ),
          const EmailInputWidget(),
          const SizedBox(
            height: 60,
          ),
          const ContinueButtonWidget(),
          SizedBox(
            height: CustomSizeHelper.bottomHeight(context),
          ),
        ],
      ),
    );
  }
}
