import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:islamly/configs/routes/assets_path.dart';

class BackIconWidget extends StatelessWidget {
  const BackIconWidget({super.key});

  @override
  Widget build(BuildContext context) {
    if (Platform.isIOS) {
      return Icon(
        Platform.isIOS ? Icons.arrow_back_ios : Icons.arrow_back,
        size: 20.0,
        color: Theme.of(context).iconTheme.color,
      );
    } else {
      return Center(
        child: SvgPicture.asset(
          AssetsPath.backArrow,
        ),
      );
    }
  }
}
