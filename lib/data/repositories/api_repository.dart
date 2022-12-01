import 'package:get/get.dart';

import '../../models/models.dart';
import '../providers/providers.dart';

class ApiRepository {
  final ApiProvider _apiProvider = Get.find();

  Future<UserModel?> getAuthenticatedUser() async {
    try {
      return _apiProvider.getAuthenticatedUser();
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> getAuthenticatedStatus() async {
    try {
      return _apiProvider.getAuthenticatedStatus();
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> singIn({
    required String email,
    required String password,
  }) async {
    try {
      return _apiProvider.singIn(
        email: email,
        password: password,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> singUp({
    required String email,
    required String password,
  }) async {
    try {
      return _apiProvider.singUp(
        email: email,
        password: password,
      );
    } catch (e) {
      rethrow;
    }
  }

  Future googleLogin() async {
    try {
      return await _apiProvider.googleLogin();
    } catch (e) {
      rethrow;
    }
  }

  Future fbLogin() async {
    try {
      return await _apiProvider.fbLogin();
    } catch (e) {
      rethrow;
    }
  }

  Future appleLogin() async {
    try {
      return await _apiProvider.appleLogin();
    } catch (e) {
      rethrow;
    }
  }

  Future country({required String country}) async {
    try {
      return await _apiProvider.country(country: country);
    } catch (e) {
      rethrow;
    }
  }

  Future college({required String college}) async {
    try {
      return await _apiProvider.college(college: college);
    } catch (e) {
      rethrow;
    }
  }

  Future<List<CountryModel>> countries() async {
    try {
      return await _apiProvider.countries();
    } catch (e) {
      rethrow;
    }
  }

  Future<List<CollegeModel>> colleges() async {
    try {
      return await _apiProvider.colleges();
    } catch (e) {
      rethrow;
    }
  }

  Future uploadSelfie({required String selfie}) async {
    try {
      return await _apiProvider.uploadSelfie(selfie: selfie);
    } catch (e) {
      rethrow;
    }
  }

  Future uploadDocumentId({required String documentId}) async {
    try {
      return await _apiProvider.uploadDocumentId(documentId: documentId);
    } catch (e) {
      rethrow;
    }
  }

  Future uploadCollegeId({required String collegeId}) async {
    try {
      return await _apiProvider.uploadCollegeId(collegeId: collegeId);
    } catch (e) {
      rethrow;
    }
  }

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
  }) async {
    try {
      return await _apiProvider.updatePrfile(
          fName: fName,
          lName: lName,
          dob: dob,
          geneder: geneder,
          email: email,
          termsAndCondition: termsAndCondition,
          countryCode: countryCode,
          collegeCode: collegeCode,
          collegeLogo: collegeLogo);
    } catch (e) {
      rethrow;
    }
  }

  Future setProfile(
      {required String email,
      String? fName,
      String? lName,
      String? dob,
      int? geneder}) async {
    try {
      return await _apiProvider.setProfile(
          email: email, fName: fName, lName: lName, dob: dob, geneder: geneder);
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> logout() async {
    try {
      return await _apiProvider.logout();
    } catch (e) {
      rethrow;
    }
  }
}
