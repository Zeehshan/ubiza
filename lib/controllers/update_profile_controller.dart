import 'package:formz/formz.dart';
import 'package:get/get.dart';
import 'package:intl/intl.dart';

import '../configs/routes/app_pages.dart';
import '../data/repositories/repositories.dart';
import '../models/models.dart';
import '../ui/widgets/snackbar_widget.dart';
import '../utils/utils.dart';
import 'authentication_controller.dart';

class UpdateProfileController extends GetxController {
  final ApiRepository _apiRepository = Get.find();
  final GalleryRepository _galleryRepository = Get.find();
  RxList<CountryModel> countries = <CountryModel>[].obs;
  RxList<CollegeModel> colleges = <CollegeModel>[].obs;
  // ignore: unnecessary_cast
  Rx<CollegeModel?> selectyedCollege = (null as CollegeModel?).obs;
  // ignore: unnecessary_cast
  Rx<CountryModel?> selectedCountry = (null as CountryModel?).obs;
  RxBool countryConfirmed = false.obs;
  RxBool collegeConfirmed = false.obs;
  Rx<TextInput> fName = const TextInput.pure().obs;
  Rx<TextInput> lName = const TextInput.pure().obs;
  Rx<TextInput> dob = const TextInput.pure().obs;
  Rx<TextInput> gender = const TextInput.pure().obs;
  Rx<FormzStatus> formStatus = FormzStatus.pure.obs;
  RxString selfie = ''.obs;
  RxString documentId = ''.obs;
  RxString collegeId = ''.obs;
  RxBool formSubmittedPressed = false.obs;
  RxBool selfieUploading = false.obs;
  RxBool documentIdUploading = false.obs;
  RxBool collegeIdUploading = false.obs;
  RxString searchCollegeQuery = ''.obs;
  updateTermsCondiction() async {
    try {
      _apiRepository.updatePrfile(termsAndCondition: true);
      loadCountries();
      Get.offAllNamed(AppRoutes.country);
    } catch (e) {}
  }

  loadCountries() async {
    try {
      countries.value = await _apiRepository.countries();
    } catch (e) {}
  }

  loadingColleges({required String countryCode}) async {
    try {
      colleges.value = await _apiRepository.colleges(countryCode: countryCode);
    } catch (e) {}
  }

  countryChanged(CountryModel country) {
    selectedCountry.value = country;
  }

  collegeChanged(CollegeModel college) {
    selectyedCollege.value = college;
  }

  collegesFilterd(String query) {
    searchCollegeQuery.value = query;
  }

  updateCountry(AuthenticationController authenticationController) async {
    try {
      countryConfirmed.value = true;
      await _apiRepository.updatePrfile(
          countryCode: selectedCountry.value!.code);
      countryConfirmed.value = false;
      authenticationController.handleAuthenticationChanged(true);
    } catch (e) {
      logger.d(e);
      countryConfirmed.value = false;
      SnackBarWidget().showError(error: e.toString());
    }
  }

  updateCollege(AuthenticationController authenticationController) async {
    try {
      collegeConfirmed.value = true;
      await _apiRepository.updatePrfile(
          collegeCode: selectyedCollege.value!.code,
          collegeLogo: selectyedCollege.value!.logo);
      collegeConfirmed.value = false;
      authenticationController.handleAuthenticationChanged(true);
    } catch (e) {
      logger.d(e);
      collegeConfirmed.value = false;
      SnackBarWidget().showError(error: e.toString());
    }
  }

  //// form section personal information
  fNameChanged(String value) {
    final _fName = TextInput.dirty(value);
    fName.value = _fName;
    formStatus.value =
        Formz.validate([_fName, lName.value, dob.value, gender.value]);
  }

  lNameChanged(String value) {
    final _lName = TextInput.dirty(value);
    lName.value = _lName;
    formStatus.value =
        Formz.validate([fName.value, _lName, dob.value, gender.value]);
  }

  dobChanged(String value) {
    final _dob = TextInput.dirty(value);
    dob.value = _dob;
    formStatus.value =
        Formz.validate([fName.value, lName.value, _dob, gender.value]);
  }

  genderChanged(String value) {
    final _gender = TextInput.dirty(value);
    gender.value = _gender;
    formStatus.value =
        Formz.validate([fName.value, lName.value, dob.value, _gender]);
  }

  submittedForm(AuthenticationController authenticationController) async {
    try {
      formSubmittedPressed.value = true;
      await _apiRepository.updatePrfile(
          fName: fName.value.value,
          lName: lName.value.value,
          dob: dob.value.value,
          geneder: _gendor(gender.value.value));
      formSubmittedPressed.value = false;
      authenticationController.handleAuthenticationChanged(true);
    } catch (e) {
      logger.d(e);
      formSubmittedPressed.value = false;
      SnackBarWidget().showError(error: e.toString());
    }
  }

  _gendor(String gender) {
    switch (gender) {
      case 'Male':
        return 0;
      case 'Female':
        return 1;
      case 'Other':
        return 2;
    }
  }

  ////
  ///
  ///
  changedSelfie({required DocumentOptionType type}) async {
    try {
      if (type == DocumentOptionType.camera) {
        selfie.value = await _galleryRepository.camera() ?? '';
      } else {
        selfie.value = await _galleryRepository.gallery() ?? '';
      }
    } catch (e) {
      logger.d(e);
    }
  }

  changedDocumentId({required DocumentOptionType type}) async {
    try {
      if (type == DocumentOptionType.camera) {
        documentId.value = await _galleryRepository.camera() ?? '';
      } else {
        documentId.value = await _galleryRepository.gallery() ?? '';
      }
    } catch (e) {
      logger.d(e);
    }
  }

  changedCollegeId({required DocumentOptionType type}) async {
    try {
      if (type == DocumentOptionType.camera) {
        collegeId.value = await _galleryRepository.camera() ?? '';
      } else {
        collegeId.value = await _galleryRepository.gallery() ?? '';
      }
    } catch (e) {
      logger.d(e);
    }
  }

  ////
  ///
  updatedSelfie(AuthenticationController authenticationController) async {
    try {
      selfieUploading.value = true;
      await _apiRepository.uploadSelfie(selfie: selfie.value);
      selfieUploading.value = false;
      authenticationController.handleAuthenticationChanged(true);
    } catch (e) {
      logger.d(e);
      selfieUploading.value = false;
      SnackBarWidget().showError(error: e.toString());
    }
  }

  updatedDocumentId(AuthenticationController authenticationController) async {
    try {
      documentIdUploading.value = true;
      await _apiRepository.uploadDocumentId(documentId: documentId.value);
      documentIdUploading.value = false;
      authenticationController.handleAuthenticationChanged(true);
    } catch (e) {
      logger.d(e);
      documentIdUploading.value = false;
      SnackBarWidget().showError(error: e.toString());
    }
  }

  updatedCollegeId(AuthenticationController authenticationController) async {
    try {
      collegeIdUploading.value = true;
      await _apiRepository.uploadCollegeId(collegeId: collegeId.value);
      collegeIdUploading.value = false;
      authenticationController.handleAuthenticationChanged(true);
    } catch (e) {
      logger.d(e);
      collegeIdUploading.value = false;
      SnackBarWidget().showError(error: e.toString());
    }
  }
}
