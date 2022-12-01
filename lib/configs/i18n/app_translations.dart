import 'dart:collection';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'en_GB.dart';

class AppTranslations extends Translations {
  static Locale? get locale => Get.deviceLocale;
  static const fallbackLocale = Locale('de', 'DE');
  static void changeLocale(String langCode) {
    final locale = _getLocaleFromLanguage(langCode: langCode);
    Get.updateLocale(locale!);
  }

  static final langCodes = ['de'];
  static final locales = [
    const Locale('en', 'GB'),
  ];
  static final langs = LinkedHashMap.from({
    'en': 'English',
  });
  @override
  Map<String, Map<String, String>> get keys => {'en_GB': enGB};
  static Locale? _getLocaleFromLanguage({String? langCode}) {
    var lang = langCode ?? Get.deviceLocale!.languageCode;
    for (int i = 0; i < langCodes.length; i++) {
      if (lang == langCodes[i]) return locales[i];
    }
    return Get.locale;
  }
}
