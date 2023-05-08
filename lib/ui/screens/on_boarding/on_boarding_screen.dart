// ignore_for_file: depend_on_referenced_packages

import 'package:flutter/material.dart';
import '../../../configs/routes/app_routes.dart';
import '../../../configs/routes/assets_path.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../i18n/i18n.dart';
import '../../../utils/utils.dart';
import 'widgets/widgets.dart';

class OnBoardingScreen extends StatefulWidget {
  static const routeName = AppRoutes.onBoarding;
  const OnBoardingScreen({super.key});

  @override
  State<OnBoardingScreen> createState() => _OnBoardingScreenState();
}

class _OnBoardingScreenState extends State<OnBoardingScreen> {
  int startAt = 1;
  final PageController controller = PageController();
  int pageIndex = 0;
  final data = [
    OnBoardingData(
        title: t.ON_BOARDING_SCREEN.PAGE_ONE.TITLE,
        subtitle: t.ON_BOARDING_SCREEN.PAGE_ONE.SUB_TITLE,
        image: AssetsPath.b1,
        top: -80,
        right: -120),
    OnBoardingData(
        title: t.ON_BOARDING_SCREEN.PAGE_TWO.TITLE,
        subtitle: t.ON_BOARDING_SCREEN.PAGE_TWO.SUB_TITLE,
        image: AssetsPath.b2,
        top: -80,
        right: -120),
    OnBoardingData(
        title: t.ON_BOARDING_SCREEN.PAGE_THREE.TITLE,
        subtitle: t.ON_BOARDING_SCREEN.PAGE_THREE.SUB_TITLE,
        image: AssetsPath.b3,
        top: -75,
        right: -120),
  ];
  @override
  Widget build(BuildContext context) {
    double h = 500;
    return Scaffold(
      body: Container(
        decoration: const BoxDecoration(
            image: DecorationImage(
                image: AssetImage(AssetsPath.bg), fit: BoxFit.fill)),
        child: Stack(
          children: [
            SafeArea(
                top: false,
                right: false,
                child: PageView(
                  controller: controller,
                  onPageChanged: (index) {
                    pageIndex = index;
                    setState(() {});
                  },
                  children: data
                      .map((e) => Padding(
                            padding: EdgeInsets.only(
                                bottom: ScreenUtil().setHeight(
                                    MediaQuery.of(context).size.height * .2)),
                            child: Align(
                              alignment: Alignment.bottomLeft,
                              child: ListTile(
                                title: Text(
                                  e.title,
                                  style:
                                      TextsStyle.titleLarge(context: context),
                                ),
                                subtitle: Padding(
                                  padding: const EdgeInsets.only(top: 16),
                                  child: Text(
                                    e.subtitle,
                                    style:
                                        TextsStyle.titleSmall(context: context),
                                  ),
                                ),
                              ),
                            ),
                          ))
                      .toList(),
                )),
            Positioned(
                top: data[pageIndex].top,
                right: data[pageIndex].right,
                child: Image.asset(
                  data[pageIndex].image,
                  fit: BoxFit.fitHeight,
                  height: h,
                )),
            if (pageIndex == 2)
              Positioned(
                  left: 2,
                  right: 15,
                  bottom: CustomSizeHelper.bottomHeight(context),
                  child: const BottomToolBarWidget())
          ],
        ),
      ),
    );
  }
}

class OnBoardingData {
  final String title, subtitle, image;
  final double top, right;
  OnBoardingData({
    required this.title,
    required this.subtitle,
    required this.image,
    required this.top,
    required this.right,
  });
}
