import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/theme/apptheme.dart';
import '../services/services.dart';

class LocaleController extends GetxController {
  Locale? language;
  String selectedLanguage = 'EN';

  MyServices myServices = Get.find();

  ThemeData appTheme = themeEnglish;

  changeLang(String langcode) {
    selectedLanguage = langcode;
    Locale locale = Locale(langcode);
    myServices.sharedPreferences.setString("lang", langcode);
    appTheme = langcode == "AR" ? themeArabic : themeEnglish;
    Get.changeTheme(appTheme);
    Get.updateLocale(locale);
  }

  @override
  void onInit() {
    String? sharedPrefLang = myServices.sharedPreferences.getString("lang");
    if (sharedPrefLang == "AR") {
      language = const Locale("AR");
      appTheme = themeArabic;
    } else if (sharedPrefLang == "EN") {
      language = const Locale("EN");
      appTheme = themeEnglish;
    } else {
      language = Locale(Get.deviceLocale!.languageCode);
      appTheme = themeEnglish;
    }
    super.onInit();
  }
}
