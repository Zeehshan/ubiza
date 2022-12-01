import 'package:get/get.dart';

import '../../controllers/controllers.dart';
import '../../data/repositories/repositories.dart';

class InitialBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<GalleryRepository>(
      GalleryRepository(),
    );
    Get.put<ApiRepository>(
      ApiRepository(),
    );
    Get.put<UpdateProfileController>(UpdateProfileController(),
        permanent: true);
    Get.put<AuthenticationController>(
      AuthenticationController(),
      permanent: true,
    );
  }
}
