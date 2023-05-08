import 'package:flutter/material.dart';
import 'package:flutter_native_splash/flutter_native_splash.dart';
import 'package:go_router/go_router.dart';
import 'package:islamly/configs/routes/assets_path.dart';

import '../../../configs/routes/app_routes.dart';
import '../../../utils/utils.dart';
import '../../widgets/widgets.dart';

class SplashScreen extends StatefulWidget {
  static const routeName = AppRoutes.splash;

  const SplashScreen({super.key});

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  @override
  void initState() {
    super.initState();
    initialise();
  }

  initialise() async {
    final secureStorage = SecureStorage();
    await secureStorage.checkOnBoardingSeen().then((value) {
      if (value) {
        context.go(AppRoutes.welcomeAuths);
      } else {
        context.go(AppRoutes.onBoarding);
      }
      FlutterNativeSplash.remove();
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(AssetsPath.bg), fit: BoxFit.fill)),
          child: const LogoWidget()),
    );
  }
}
