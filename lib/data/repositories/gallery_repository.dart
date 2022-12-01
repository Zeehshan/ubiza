import 'package:get/get.dart';

import '../providers/providers.dart';

class GalleryRepository {
  final GalleryProvider _apiProvider = Get.find();
  Future<String?> gallery() async {
    try {
      return _apiProvider.gallery();
    } catch (e) {
      rethrow;
    }
  }

  Future<String?> camera() async {
    try {
      return _apiProvider.camera();
    } catch (e) {
      rethrow;
    }
  }
}
