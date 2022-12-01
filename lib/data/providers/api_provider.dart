import '../../models/models.dart';

abstract class ApiProvider {
  Future<UserModel?> getAuthenticatedUser();
  Future<bool> getAuthenticatedStatus();
  Future<bool> singUp({required String email, required String password});
  Future<bool> singIn({required String email, required String password});
  Future googleLogin();
  Future fbLogin();
  Future appleLogin();
  Future country({required String country});
  Future college({required String college});
  Future<List<CountryModel>> countries();
  Future<List<CollegeModel>> colleges();
  Future uploadSelfie({required String selfie});
  Future uploadDocumentId({required String documentId});
  Future uploadCollegeId({required String collegeId});
  Future updatePrfile({
    String? fName,
    String? lName,
    String? dob,
    int? geneder,
    String? email,
    bool? termsAndCondition,
    String? countryCode,
    String? collegeCode,
    String? collegeLogo,
  });
  Future setProfile(
      {required String email,
      String? fName,
      String? lName,
      String? dob,
      int? geneder});

  Future<bool> logout();
}
