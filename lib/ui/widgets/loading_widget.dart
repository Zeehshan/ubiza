import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoadingWidget extends StatelessWidget {
  const LoadingWidget({
    Key? key,
    this.color = Colors.white,
  }) : super(key: key);

  final Color color;

  @override
  Widget build(BuildContext context) {
    return Align(
      child: SizedBox(
        width: 25.0,
        height: 25.0,
        child: GetPlatform.isIOS
            ? Theme(
                data: ThemeData(
                  cupertinoOverrideTheme: CupertinoThemeData(
                    brightness: Get.isPlatformDarkMode
                        ? Brightness.light
                        : Brightness.dark,
                  ),
                ),
                child: const CupertinoActivityIndicator(
                  radius: 14.0,
                ),
              )
            : CircularProgressIndicator(
                color: color,
                strokeWidth: 2.0,
              ),
      ),
    );
  }
}
