import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../configs/routes/app_pages.dart';
import '../data/repositories/repositories.dart';
import '../models/models.dart';
import '../ui/widgets/snackbar_widget.dart';
import '../utils/utils.dart';
import 'controllers.dart';

class AuthenticationController extends GetxController {
  final UpdateProfileController updateProfileController = Get.find();
  final ApiRepository _apiRepository = Get.find();

  Rx<UserModel> user = UserModel(email: '').obs;

  RxBool isUserAuthenticated = false.obs;

  @override
  void onInit() async {
    ever(isUserAuthenticated, handleAuthenticationChanged);
    isUserAuthenticated.value = await getAuthenticatedStatus();
    super.onInit();
  }

  void handleAuthenticationChanged(
    bool isUserAuthenticated,
  ) async {
    // TEST: go to HOME, skip public area (login, register, etc...)
    // Get.offAllNamed(AppRoutes.home);

    if (isUserAuthenticated == false) {
      Get.offAllNamed(AppRoutes.welcome);
    } else {
      FirebaseAuth auth = FirebaseAuth.instance;
      await auth.currentUser?.reload();
      if (auth.currentUser?.emailVerified == false) {
        Get.offAllNamed(AppRoutes.verification);
        SnackBarWidget().showWarning(message: 'app.warning.verify.email'.tr);
      } else {
        await refreshedUser();
        if (user.value.termsAndConditionsAccepted != true) {
          Get.offAllNamed(AppRoutes.legal);
        } else if (user.value.country == '') {
          if (updateProfileController.countries.isEmpty) {
            updateProfileController.loadCountries();
          }

          Get.offAllNamed(AppRoutes.country);
        } else if (user.value.college == '') {
          if (updateProfileController.countries.isEmpty) {
            updateProfileController.loadCountries();
          }
          if (updateProfileController.colleges.isEmpty) {
            updateProfileController.loadingColleges(
                countryCode: user.value.country);
          }
          Get.offAllNamed(AppRoutes.college);
        } else if (user.value.dob.isEmpty) {
          if (updateProfileController.countries.isEmpty) {
            updateProfileController.loadCountries();
          }
          if (updateProfileController.colleges.isEmpty) {
            updateProfileController.loadingColleges(
                countryCode: user.value.country);
          }
          Get.offAllNamed(AppRoutes.personalInfo);
        } else if (user.value.selfie == null) {
          Get.offAllNamed(AppRoutes.uploadSelfie);
        } else if (user.value.documentId == null) {
          Get.offAllNamed(AppRoutes.uploadDocumentId);
        } else if (user.value.collegeId == null) {
          Get.offAllNamed(AppRoutes.uploadCollegeId);
        } else {
          Get.offAllNamed(AppRoutes.recordSuccess);
        }
      }
    }
  }

  void logout() async {
    try {
      await _apiRepository.logout();

      handleAuthenticationChanged(false);
    } catch (exception) {
      FirebaseAuthException _authException = exception as FirebaseAuthException;
      SnackBarWidget().showError(error: _authException.message);
    }
  }

  Future<bool> getAuthenticatedStatus() async {
    /// just for test TODO:
    // await _apiRepository.logout();
    await Future.delayed(const Duration(seconds: 2));
    final _authenticatedUser = await _apiRepository.getAuthenticatedStatus();
    return _authenticatedUser;
  }

  Future refreshedUser() async {
    try {
      final _loggedUser = await _apiRepository.getAuthenticatedUser();
      if (_loggedUser != null) {
        user.value = _loggedUser;
      }
    } catch (e) {
      logger.e(e);
    }
  }
}
