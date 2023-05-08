import 'package:flutter/material.dart';
import 'package:islamly/utils/utils.dart';

import '../../../../i18n/i18n.dart';

class ForgotPasswordWidget extends StatelessWidget {
  const ForgotPasswordWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text(
        t.BUTTON.FORGOT_PASSWORD,
        style: TextsStyle.titleLarge(context: context, fontSize: 12),
      ),
    );
  }
}
