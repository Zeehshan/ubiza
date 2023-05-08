import 'package:flutter/material.dart';

import '../../i18n/i18n.dart';
import '../../utils/utils.dart';

class LegalWidgets extends StatelessWidget {
  const LegalWidgets({super.key});

  @override
  Widget build(BuildContext context) {
    final smalStyle = Theme.of(context).textTheme.titleSmall!.copyWith(
        fontSize: 14,
        fontWeight: FontWeight.w700,
        decoration: TextDecoration.underline,
        height: 1.8);
    return Text.rich(
      TextSpan(
          text: t.LEGAL.AUTHENTICATION.TEXT_ONE,
          style: TextsStyle.titleLarge(context: context, fontSize: 14),
          children: [
            TextSpan(text: t.LABEL.TERMS_OF_SERVICE, style: smalStyle),
            const TextSpan(text: ' '),
            TextSpan(text: t.LEGAL.AUTHENTICATION.TEXT_TWO),
            const TextSpan(text: ' '),
            TextSpan(text: t.LABEL.PRIVACY_POLICY, style: smalStyle),
          ]),
      textAlign: TextAlign.center,
    );
  }
}
