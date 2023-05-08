import 'package:flutter/material.dart';

class TextsStyle {
  static titleLarge({required BuildContext context, double? fontSize}) {
    return Theme.of(context).textTheme.titleLarge!.copyWith(fontSize: fontSize);
  }

  static titleLargeW500({required BuildContext context, double? fontSize}) {
    return Theme.of(context)
        .textTheme
        .titleLarge!
        .copyWith(fontSize: fontSize, fontWeight: FontWeight.w500);
  }

  static titleSmall({required BuildContext context, double? fontSize}) {
    return Theme.of(context).textTheme.titleSmall!.copyWith(fontSize: fontSize);
  }

  static labelSmall({required BuildContext context, double? fontSize}) {
    return Theme.of(context).textTheme.labelSmall!.copyWith(fontSize: fontSize);
  }
}
