abstract class AuthApiProvider {
  Future getAuthenticatedUser();
  Future<bool> getAuthenticatedStatus();
  Future<bool> singUp({required String email, required String password});
  Future<bool> singIn({required String email, required String password});
  Future googleLogin();
  Future fbLogin();
  Future appleLogin();
  Future<bool> gmailLogin({required String email});

  Future<bool> logout();
}
