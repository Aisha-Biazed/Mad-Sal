import 'package:get/get.dart';
import 'package:med_sal_app/bindings/login_biding.dart';
import 'package:med_sal_app/view/screen/auth/check_email_screen.dart';
import 'package:med_sal_app/view/screen/auth/field_login_screen.dart';
import 'package:med_sal_app/view/screen/auth/verify_code_screen.dart';
import 'package:med_sal_app/view/screen/categories/categories_screen.dart';
import 'package:med_sal_app/view/screen/categories/hospital_screen.dart';
import 'package:med_sal_app/view/screen/categories/pharmacies_screen.dart';
import 'package:med_sal_app/view/screen/categories/products_booking.dart';
import 'package:med_sal_app/view/screen/categories/services_booking_screen.dart';
import 'package:med_sal_app/view/screen/home/home_screen.dart';
import 'package:med_sal_app/view/screen/settings/profile_screen.dart';
import 'package:med_sal_app/view/screen/settings/reset_password_screen.dart';
import 'package:med_sal_app/view/screen/settings/settings_screen.dart';
import '../../../view/screen/auth/forgot_password_screen.dart';
import '../../../view/screen/auth/login_screen.dart';
import '../../../view/screen/auth/register_screen.dart';
import '../../../view/screen/categories/clinic_screen.dart';
import '../../../view/screen/categories/labs_screen.dart';
import '../../../view/screen/language.dart';
import 'app_routes.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),

  //Splash
  GetPage(
    name: AppRoute.lang,
    page: () => Language(),
    // binding: SplashBinding()
  ),
//  Auth
  GetPage(
      name: AppRoute.login, page: () => LoginScreen(), binding: LoginBinding()),
  GetPage(name: AppRoute.fieldLogin, page: () => const FieldLoginScreen()),
  GetPage(name: AppRoute.register, page: () => const RegisterScreen()),
  GetPage(name: AppRoute.checkEmail, page: () => const CheckEmailScreen()),
  GetPage(name: AppRoute.verifyCod, page: () => const VerifyCodeScreen()),
  GetPage(
      name: AppRoute.forgetPassword, page: () => const ForgotPasswordScreen()),

  //settings
  GetPage(name: AppRoute.settings, page: () => const SettingsScreen()),
  GetPage(
      name: AppRoute.resetPassword, page: () => const ResetPasswordScreen()),
  GetPage(name: AppRoute.profile, page: () => const ProfileScreen()),
  // home
  GetPage(name: AppRoute.home, page: () => HomeScreen()),
  //Categories
  GetPage(name: AppRoute.categories, page: () => CategoriesScreen()),
  GetPage(name: AppRoute.hospital, page: () => HospitalScreen()),
  GetPage(name: AppRoute.labs, page: () => LabsScreen()),
  GetPage(name: AppRoute.clinic, page: () => ClinicScreen()),
  GetPage(name: AppRoute.pharmacies, page: () => PharmaciesScreen()),
  GetPage(name: AppRoute.productsBooking, page: () => ProductsBookingScreen()),
  GetPage(name: AppRoute.servicesBooking, page: () => ServicesBookingScreen()),
];
