import 'package:image_cropper/image_cropper.dart';
import 'package:image_picker/image_picker.dart';
import 'providers.dart';

class LocalGalleryProvider implements GalleryProvider {
  @override
  Future<String?> gallery() async {
    try {
      final XFile? pickedFile =
          await ImagePicker().pickImage(source: ImageSource.gallery);
      if (pickedFile == null) {
        return null;
      }
      CroppedFile? croppedFile = await ImageCropper().cropImage(
        sourcePath: pickedFile.path,
        aspectRatio: const CropAspectRatio(
          ratioX: 1.0,
          ratioY: 1.0,
        ),
        compressQuality: 100,
        maxWidth: 1000,
        maxHeight: 1000,
        uiSettings: [
          AndroidUiSettings(
              toolbarTitle: 'Crop photo',
              // lockAspectRatio: f,
              // hideBottomControls: true,
              initAspectRatio: CropAspectRatioPreset.original,
              lockAspectRatio: false),
          IOSUiSettings(title: 'Crop photo', aspectRatioLockEnabled: true)
        ],
      );
      return croppedFile?.path;
    } catch (e) {
      rethrow;
    }
  }

  @override
  Future<String?> camera() async {
    try {
      final XFile? pickedFile =
          await ImagePicker().pickImage(source: ImageSource.camera);
      if (pickedFile == null) {
        return null;
      }
      CroppedFile? croppedFile = await ImageCropper().cropImage(
          sourcePath: pickedFile.path,
          aspectRatio: const CropAspectRatio(
            ratioX: 1.0,
            ratioY: 1.0,
          ),
          compressQuality: 100,
          maxWidth: 1000,
          maxHeight: 1000,
          uiSettings: [
            AndroidUiSettings(
              toolbarTitle: 'Crop photo',
              lockAspectRatio: true,
              hideBottomControls: true,
            ),
            IOSUiSettings(
              title: 'Crop photo',
            )
          ]);
      return croppedFile?.path;
    } catch (e) {
      rethrow;
    }
  }
}
