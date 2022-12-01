import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/controllers.dart';
import '../../../utils/utils.dart';
import '../../widgets/widgtes.dart';
import 'widgets/widgets.dart';

class CountryPage extends GetView<UpdateProfileController> {
  const CountryPage({super.key});

  @override
  Widget build(BuildContext context) {
    // final UpdateProfileController controller = Get.find();
    return Scaffold(
      appBar: AppBarWidget(
        title: Container(),
        backButtonCallback: null,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        child: Column(
          children: [
            const SizedBox(
              height: 70,
            ),
            Text(
              'app.country.title'.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 6,
            ),
            Text('app.country.subtitle'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline6),
            const SizedBox(
              height: 130,
            ),
            const CountriesWidget(),
            SizedBox(
              height: CustomSizeHelper.bottomHeight(context),
            ),
          ],
        ),
      ),
    );
  }
}
