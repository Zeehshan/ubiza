import 'package:flutter_secure_storage/flutter_secure_storage.dart';

class SecureStorage {
  final _secureStorage = const FlutterSecureStorage();

  static const _onBoadringSeen = 'ON_BOARDING_SEEN';

  Future<bool> onBoardingSeen() async {
    try {
      _secureStorage.write(key: _onBoadringSeen, value: 'true');
      return true;
    } catch (e) {
      rethrow;
    }
  }

  Future<bool> checkOnBoardingSeen() async {
    try {
      final value = await _secureStorage.read(
        key: _onBoadringSeen,
      );
      return value != null;
    } catch (e) {
      rethrow;
    }
  }
}
