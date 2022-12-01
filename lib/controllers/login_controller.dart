import 'package:firebase_auth/firebase_auth.dart';
import 'package:get/get.dart';

import '../data/repositories/repositories.dart';
import '../models/models.dart';
import '../ui/widgets/snackbar_widget.dart';
import '../utils/utils.dart';
import 'controllers.dart';

class LoginController extends GetxController {
  final ApiRepository _apiRepository = Get.find();
  RxBool isLoginWithFacebookPressed = false.obs;
  RxBool isLoginWithGooglePressed = false.obs;
  RxBool isLoginWithApplePressed = false.obs;
  RxBool isLoginPressed = false.obs;
  RxBool isRegisterPressed = false.obs;
  RxBool isForgotPasswordPressed = false.obs;
  RxBool isResetPasswordPressed = false.obs;
  RxBool isReady = false.obs;

  final AuthenticationController _authenticationController = Get.find();
  Rx<Email> email = const Email.pure().obs;
  Rx<Password> password = const Password.pure().obs;
  Rx<Password> cPassword = const Password.pure().obs;
  Future<void> singIn() async {
    try {
      isLoginPressed.value = true;
      await _apiRepository.singIn(
          email: email.value.value, password: password.value.value);
      _authenticationController.handleAuthenticationChanged(true);
      isLoginPressed.value = false;
    } catch (exception) {
      isLoginPressed.value = false;
      FirebaseAuthException _authException = exception as FirebaseAuthException;
      SnackBarWidget().showError(error: _authException.message);
    }
  }

  Future<void> loginWithFacebook() async {
    try {
      isLoginWithFacebookPressed.value = true;
      await _apiRepository.fbLogin();
      final _user = await getAuthenticatedUser();
      if (_user == null) {
        /// user first time
        await _apiRepository.setProfile(email: email.value.value);
      }
      _authenticationController.handleAuthenticationChanged(true);
      isLoginWithFacebookPressed.value = false;
    } catch (exception) {
      isLoginWithFacebookPressed.value = false;
      FirebaseAuthException _authException = exception as FirebaseAuthException;
      SnackBarWidget().showError(error: _authException.message);
    }
  }

  Future<void> loginWithGoogle() async {
    try {
      isLoginWithGooglePressed.value = true;
      await _apiRepository.googleLogin();
      final _user = await getAuthenticatedUser();
      if (_user == null) {
        /// user first time
        logger.d('loginWithGoogle first time');
        await _apiRepository.setProfile(email: email.value.value);
      }
      _authenticationController.handleAuthenticationChanged(true);
      isLoginWithGooglePressed.value = false;
    } catch (exception) {
      logger.d(exception);
      isLoginWithGooglePressed.value = false;
      final _genericException = GenericException(exception: exception);
      SnackBarWidget().showError(error: _genericException.exception);
    }
  }

  Future<void> loginWithApple() async {
    try {
      isLoginWithApplePressed.value = true;
      await _apiRepository.appleLogin();
      final _user = await getAuthenticatedUser();
      if (_user == null) {
        /// user first time
        await _apiRepository.setProfile(email: email.value.value);
      }
      _authenticationController.handleAuthenticationChanged(true);
      isLoginWithApplePressed.value = false;
    } catch (exception) {
      isLoginWithApplePressed.value = false;
      FirebaseAuthException _authException = exception as FirebaseAuthException;
      SnackBarWidget().showError(error: _authException.message);
    }
  }

  Future<void> singUp() async {
    try {
      isRegisterPressed.value = true;
      await _apiRepository.singUp(
          email: email.value.value, password: password.value.value);
      await _apiRepository.setProfile(email: email.value.value);
      _authenticationController.handleAuthenticationChanged(true);
      isRegisterPressed.value = false;
    } catch (exception) {
      isRegisterPressed.value = false;
      FirebaseAuthException _authException = exception as FirebaseAuthException;
      SnackBarWidget().showError(error: _authException.message);
    }
  }

  Future<void> forgotPassword({required email}) async {
    try {
      isForgotPasswordPressed.value = true;
      await Future.delayed(Duration(seconds: 3));
      isForgotPasswordPressed.value = false;
    } catch (exception) {
      isForgotPasswordPressed.value = false;
      FirebaseAuthException _authException = exception as FirebaseAuthException;
      SnackBarWidget().showError(error: _authException.message);
    }
  }

  Future<void> resetPassword({
    required resetLink,
  }) async {
    try {
      isResetPasswordPressed.value = true;
      await Future.delayed(const Duration(seconds: 3));
      isResetPasswordPressed.value = false;
    } catch (exception) {
      isResetPasswordPressed.value = false;
      FirebaseAuthException _authException = exception as FirebaseAuthException;
      SnackBarWidget().showError(error: _authException.message);
    }
  }

  emailChanged(String value) {
    email.value = Email.dirty(value);
  }

  passwordChanged(String value) {
    password.value = Password.dirty(value);
  }

  confirmPasswordChanged(String value) {
    cPassword.value = Password.dirty(value);
  }

  Future<UserModel?> getAuthenticatedUser() async {
    try {
      final _user = await _apiRepository.getAuthenticatedUser();
      return _user;
    } catch (e) {
      return null;
    }
  }
}
