// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomSizeHelper {
  static double toolbarHeight(
    BuildContext context,
  ) {
    return MediaQuery.of(context).size.height * .07;
  }

  static double bottomHeight(BuildContext context) {
    return ScreenUtil().setHeight(20);
    // return MediaQuery.of(context).size.height * .03;
  }

  static double marginHorizontal(BuildContext context) {
    return 25;
  }

  static double iconHeight(double size) {
    return ScreenUtil().setHeight(size);
  }
}
