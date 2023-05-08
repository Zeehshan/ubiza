import 'package:flutter/material.dart';

import '../../../../i18n/i18n.dart';
import '../../../../utils/utils.dart';
import '../../../widgets/widgets.dart';
import 'widgets.dart';

class BodyWidget extends StatelessWidget {
  const BodyWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(horizontal: 20),
      children: [
        Text(
          t.LOGIN_SCREEN.TITLE,
          style: TextsStyle.titleLarge(context: context),
        ),
        const SizedBox(
          height: 62,
        ),
        Text(
          t.LABEL.EMAIL_ID,
          style: TextsStyle.titleLarge(context: context, fontSize: 14),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          t.HINT.EMAIL,
          style: TextsStyle.titleLargeW500(context: context, fontSize: 12),
        ),
        const SizedBox(
          height: 6,
        ),
        const EmailInputWidget(),
        const SizedBox(
          height: 16,
        ),
        Text(
          t.LABEL.PASSWORD,
          style: TextsStyle.titleLarge(context: context, fontSize: 14),
        ),
        const SizedBox(
          height: 6,
        ),
        Text(
          t.HINT.PASSWORD,
          style: TextsStyle.titleLargeW500(context: context, fontSize: 12),
        ),
        const SizedBox(
          height: 6,
        ),
        const PasswordInputWidget(),
        const SizedBox(
          height: 6,
        ),
        const Align(
            alignment: Alignment.bottomRight, child: ForgotPasswordWidget()),
        const SizedBox(
          height: 32,
        ),
        Hero(
          tag: 'login',
          child: ElevatedButtonWidget(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                t.BUTTON.LOG_IN,
                style: TextsStyle.labelSmall(context: context),
              ),
              onPressed: () {}),
        ),
        const SizedBox(
          height: 16,
        ),
        const GetHelpWidget(),
        const SizedBox(
          height: 33,
        ),
        const SocialsLoginWidget(
          authScreenTypel: AuthScreenType.login,
        ),
        const SizedBox(
          height: 16,
        ),
        const LegalWidgets(),
      ],
    );
  }
}
