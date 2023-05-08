import 'package:flutter/material.dart';

import '../../../../i18n/i18n.dart';
import '../../../../utils/utils.dart';

class GetHelpWidget extends StatelessWidget {
  const GetHelpWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
      child: Text.rich(
        TextSpan(text: t.LOGIN_SCREEN.SIGN_IN_TROUBLE, children: [
          const TextSpan(text: ' '),
          TextSpan(
              text: t.LABEL.GET_HELP,
              style: TextsStyle.titleLargeW500(context: context, fontSize: 14))
        ]),
        style: TextsStyle.titleLarge(context: context, fontSize: 14),
        textAlign: TextAlign.center,
      ),
    );
  }
}
