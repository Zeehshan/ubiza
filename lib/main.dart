import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'configs/bindings/bindings.dart';
import 'configs/i18n/app_translations.dart';
import 'configs/routes/app_pages.dart';
import 'configs/themes/app_themes.dart';
import 'data/providers/providers.dart';
import 'firebase_configs.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await initServices();
  runApp(const UbizaApp());
}

Future<void> initServices() async {
  FirebaseConfigs firebaseConfigs = FirebaseConfigs();
  await firebaseConfigs.initialize();
  Get.put<ApiProvider>(
    HttpApiProvider(),
    permanent: true,
  );
  Get.put<GalleryProvider>(
    LocalGalleryProvider(),
    permanent: true,
  );
}

class UbizaApp extends StatelessWidget {
  const UbizaApp({super.key});

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: (context, child) {
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          enableLog: true,
          theme: AppThemes.light,
          darkTheme: AppThemes.dark,
          themeMode: ThemeMode.dark,
          locale: AppTranslations.locale,
          fallbackLocale: AppTranslations.fallbackLocale,
          translations: AppTranslations(),
          initialRoute: AppPages.initial,
          initialBinding: InitialBinding(),
          getPages: AppPages.routes,
        );
      },
    );
  }
}
