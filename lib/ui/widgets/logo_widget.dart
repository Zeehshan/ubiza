import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamly/configs/routes/assets_path.dart';

class LogoWidget extends StatelessWidget {
  const LogoWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Image.asset(
      AssetsPath.app,
      width: 100,
      height: 100,
    ));
  }
}
