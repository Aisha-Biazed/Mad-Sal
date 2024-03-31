import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:med_sal_app/core/constant/router/app_routes.dart';
import 'package:med_sal_app/core/localization/translation.dart';
import 'core/constant/router/routes.dart';
import 'core/localization/change_local.dart';

class App extends StatelessWidget {
  const App({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(390, 844),
      minTextAdapt: false,
      splitScreenMode: true,
      child: Builder(builder: (context) {
        LocaleController controller = Get.put(LocaleController());
        return GetMaterialApp(
          debugShowCheckedModeBanner: false,
          initialRoute: AppRoute.servicesBooking,
          translations: MyTranslation(),
          theme: controller.appTheme,
          locale: controller.language,
          getPages: routes,
        );
      }),
    );
  }
}
