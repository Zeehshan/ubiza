import 'dart:io';

import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../configs/routes/app_pages.dart';
import '../../../widgets/widgtes.dart';
import 'widgets.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(
            child: ListView(
          padding: const EdgeInsets.symmetric(horizontal: 25),
          children: [
            Text(
              'app.SignIn.title'.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.headline1,
            ),
            const SizedBox(
              height: 6,
            ),
            Text(
              'app.singIn.subtitle'.tr,
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.subtitle1,
            ),
            const SizedBox(
              height: 59,
            ),
            const EmailInputWidget(),
            const SizedBox(
              height: 15,
            ),
            const PasswordInputWidget(),
            const SizedBox(
              height: 30,
            ),
            const SignInButtonWidget(),
            const SizedBox(
              height: 18,
            ),
            AuthGoogleButtonWidget(
              text: 'app.button.google.singIn'.tr,
            ),
            const SizedBox(
              height: 18,
            ),
            AuthFbButtonWidget(
              text: 'app.button.fb.signIn'.tr,
            ),
            if (Platform.isIOS)
              const SizedBox(
                height: 18,
              ),
            if (Platform.isIOS)
              AuthAppleButtonWidget(
                text: 'app.button.apple.signIn'.tr,
              ),
            const SizedBox(
              height: 18,
            ),
            Text.rich(
              TextSpan(
                  text: 'signIn.goToSignUp'.tr,
                  style: Theme.of(context).textTheme.subtitle1,
                  children: [
                    const TextSpan(text: ' '),
                    TextSpan(
                      text: 'app.SignUp'.tr,
                      recognizer: TapGestureRecognizer()
                        ..onTap = () => Get.offAllNamed(AppRoutes.signUp),
                      style: Theme.of(context).textTheme.headline5!.copyWith(
                          color: Theme.of(context).primaryColor, fontSize: 14),
                    )
                  ]),
              textAlign: TextAlign.center,
            ),
          ],
        ))
      ],
    );
  }
}
