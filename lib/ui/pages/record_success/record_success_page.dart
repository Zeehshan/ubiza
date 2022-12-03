import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../configs/routes/assets_routes.dart';
import 'package:get/get.dart';

import '../../../utils/utils.dart';
import '../../widgets/widgtes.dart';

class RecordSuccessPage extends StatelessWidget {
  const RecordSuccessPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Center(
          child: Column(
            children: [
              SizedBox(
                height: CustomSizeHelper.bottomHeight(context) * 5,
              ),
              Image.asset(AssetsRoutes.splashLogo),
              SizedBox(
                height: CustomSizeHelper.bottomHeight(context) * 2,
              ),
              Text(
                'app.record.sucess.title'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.headline1,
              ),
              const SizedBox(
                height: 6,
              ),
              Text(
                'app.record.sucess.subtitle'.tr,
                textAlign: TextAlign.center,
                style: Theme.of(context).textTheme.subtitle1,
              ),
              SizedBox(
                height: CustomSizeHelper.bottomHeight(context) * 3,
              ),
              ElevatedButtonWidget(
                width: 72,
                hight: 72,
                borderRadius: 100,
                showGradient: true,
                child: SvgPicture.asset(AssetsRoutes.nextArrow),
                onPressed: () => exit(0),
              ),
              SizedBox(
                height: CustomSizeHelper.bottomHeight(context),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
