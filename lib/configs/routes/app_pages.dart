import 'package:get/get.dart';

import '../../ui/pages/pages.dart';
import '../bindings/bindings.dart';

part 'app_routes.dart';

class AppPages {
  static const initial = AppRoutes.splash;
  static final routes = [
    GetPage(
      name: AppRoutes.splash,
      page: () => const SplashPage(),
    ),
    GetPage(
        name: AppRoutes.welcome,
        page: () => const WelcomePage(),
        binding: WelcomeBinding()),
    GetPage(name: AppRoutes.singIn, page: () => const LoginPage()),
    GetPage(name: AppRoutes.signUp, page: () => const SignUpPage()),
    GetPage(name: AppRoutes.verification, page: () => const VerificationPage()),
    GetPage(name: AppRoutes.legal, page: () => const LegaklPage()),
    GetPage(name: AppRoutes.country, page: () => const CountryPage()),
    GetPage(name: AppRoutes.college, page: () => const CollegePage()),
    GetPage(name: AppRoutes.personalInfo, page: () => const PersonalInfoPage()),
    GetPage(name: AppRoutes.uploadSelfie, page: () => const UploadSelfiePage()),
    GetPage(
        name: AppRoutes.uploadDocumentId,
        page: () => const UploadDocuemtnIdPage()),
    GetPage(
        name: AppRoutes.uploadCollegeId,
        page: () => const UploadCollegeIdPage()),
    GetPage(name: AppRoutes.home, page: () => const HomePage()),
    GetPage(
        name: AppRoutes.recordSuccess, page: () => const RecordSuccessPage())
  ];
}
