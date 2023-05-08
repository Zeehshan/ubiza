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
          t.BUTTON.SIGN_UP,
          style: TextsStyle.titleLarge(context: context, fontSize: 32),
        ),
        const SizedBox(
          height: 12,
        ),
        Text(
          t.SIGN_UP_SCREEN.SUB_TITLE,
          style: TextsStyle.titleSmall(context: context),
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
          height: 32,
        ),
        Hero(
          tag: 'signUp',
          child: ElevatedButtonWidget(
              margin: const EdgeInsets.symmetric(horizontal: 25),
              child: Text(
                t.BUTTON.SIGN_UP,
                style: TextsStyle.labelSmall(context: context),
              ),
              onPressed: () {}),
        ),
        const SizedBox(
          height: 72,
        ),
        const SocialsLoginWidget(authScreenTypel: AuthScreenType.signup),
      ],
    );
  }
}
