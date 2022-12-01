import 'package:formz/formz.dart';
import 'package:get/get.dart';

import '../configs/routes/app_pages.dart';
import '../data/repositories/repositories.dart';
import '../models/models.dart';
import '../ui/widgets/snackbar_widget.dart';
import '../utils/utils.dart';
import 'authentication_controller.dart';

class UpdateProfileController extends GetxController {
  final ApiRepository _apiRepository = Get.find();
  final GalleryRepository _galleryRepository = Get.find();
  List<CountryModel> countries = [];
  List<CollegeModel> colleges = [];
  CollegeModel? selectyedCollege;
  CountryModel? selectedCountry;
  RxBool countryConfirmed = false.obs;
  RxBool collegeConfirmed = false.obs;
  TextInput fName = const TextInput.pure();
  TextInput lName = const TextInput.pure();
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
  updateTermsCondiction() async {
    try {
      _apiRepository.updatePrfile(termsAndCondition: true);
      loadCountries();
      Get.offAllNamed(AppRoutes.country);
    } catch (e) {}
  }

  loadCountries() async {
    try {
      countries = await _apiRepository.countries();
      update();
    } catch (e) {}
  }

  loadingColleges() async {
    try {
      colleges = await _apiRepository.colleges();
      update();
    } catch (e) {}
  }

  countryChanged(CountryModel country) {
    selectedCountry = country;
    update();
  }

  collegeChanged(CollegeModel college) {
    selectyedCollege = college;
    update();
  }

  updateCountry(AuthenticationController authenticationController) async {
    try {
      countryConfirmed.value = true;
      await _apiRepository.updatePrfile(countryCode: selectedCountry!.code);
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
          collegeCode: selectyedCollege!.code,
          collegeLogo: selectyedCollege!.logo);
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
    fName = TextInput.dirty(value);
    formStatus.value = Formz.validate([fName, lName, dob.value, gender.value]);
  }

  lNameChanged(String value) {
    lName = TextInput.dirty(value);
    formStatus.value = Formz.validate([fName, lName, dob.value, gender.value]);
  }

  dobChanged(String value) {
    dob.value = TextInput.dirty(value);
    formStatus.value = Formz.validate([fName, lName, dob.value, gender.value]);
  }

  genderChanged(String value) {
    gender.value = TextInput.dirty(value);
    formStatus.value = Formz.validate([fName, lName, dob.value, gender.value]);
  }

  submittedForm(AuthenticationController authenticationController) async {
    try {
      formSubmittedPressed.value = true;
      await _apiRepository.updatePrfile(
          fName: fName.value,
          lName: lName.value,
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
