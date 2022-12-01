import 'package:get/get.dart';
import '../../controllers/controllers.dart';

class WelcomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<LoginController>(
      LoginController(),
      permanent: true,
    );
  }
}
