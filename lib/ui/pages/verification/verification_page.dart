import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../controllers/controllers.dart';
import '../../widgets/widgtes.dart';

class VerificationPage extends StatelessWidget {
  const VerificationPage({super.key});

  @override
  Widget build(BuildContext context) {
    final _authController = Get.find<AuthenticationController>();
    return Scaffold(
      body: ListView(
        padding: const EdgeInsets.symmetric(horizontal: 33),
        children: [
          const SizedBox(
            height: 170,
          ),
          Text(
            'app.verify'.tr,
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.headline1,
          ),
          const SizedBox(
            height: 12,
          ),
          Text('app.verification.title'.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline2),
          const SizedBox(
            height: 6,
          ),
          Text('app.verification.subtitle'.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1),
          const SizedBox(
            height: 130,
          ),
          ElevatedButtonWidget(
              showGradient: true,
              hight: 56,
              child: Text('app.button.confirm'.tr),
              onPressed: () =>
                  _authController.handleAuthenticationChanged(true)),
          const SizedBox(
            height: 40,
          ),
          TextButton(
              onPressed: () => _authController.logout(),
              child: Text('app.textbutton.try.with.aontoer.email'.tr,
                  style: Theme.of(context)
                      .textTheme
                      .subtitle1!
                      .copyWith(fontSize: 15)))
        ],
      ),
    );
  }
}
