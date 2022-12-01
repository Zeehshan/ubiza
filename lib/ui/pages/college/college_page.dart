import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../configs/routes/app_pages.dart';
import '../../../controllers/controllers.dart';
import '../../../utils/utils.dart';
import '../../widgets/widgtes.dart';
import 'widgets/widgets.dart';

class CollegePage extends StatelessWidget {
  const CollegePage({super.key});

  @override
  Widget build(BuildContext context) {
    final UpdateProfileController controller = Get.find();
    final AuthenticationController authenticationController = Get.find();
    final user = authenticationController.user.value;

    return Scaffold(
      appBar: AppBarWidget(
        centerTitle: true,
        title: Text(
          'app.college.title'.tr,
          textAlign: TextAlign.center,
          style: Theme.of(context).textTheme.headline1,
        ),
        backButtonCallback: () {
          if (controller.countries.isNotEmpty) {
            controller.countryChanged(controller.countries
                .firstWhere((element) => element.code == user.country));
          }

          Get.offAllNamed(AppRoutes.country);
        },
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 30, vertical: 0),
        child: Column(
          //
          children: [
            Text('app.college.subtitle'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6),
            const SizedBox(
              height: 20,
            ),
            const CollegesWidget(),
            SizedBox(height: CustomSizeHelper.bottomHeight(context)),
          ],
        ),
      ),
    );
  }
}
