import 'package:get/get.dart';
import 'package:med_sal_app/bindings/login_biding.dart';
import 'package:med_sal_app/features/patient/view/screen/doctor/available_doctors_screen.dart';
import 'package:med_sal_app/features/patient/view/screen/doctor/dentisry_screen.dart';
import 'package:med_sal_app/features/patient/view/screen/doctor/doctor_categories_screen.dart';
import 'package:med_sal_app/features/patient/view/screen/doctor/optics_screen.dart';
import 'package:med_sal_app/features/patient/view/screen/order/my_order_screen.dart';
import 'package:med_sal_app/features/patient/view/screen/order/order_faild_screen.dart';
import 'package:med_sal_app/features/patient/view/screen/order/order_success_screen.dart';
import 'package:med_sal_app/features/service_provider/view/screen/booking/add_products_screen.dart';
import 'package:med_sal_app/features/service_provider/view/screen/booking/add_service_screen.dart';
import 'package:med_sal_app/features/service_provider/view/screen/booking/editing_products_screen.dart';
import 'package:med_sal_app/features/service_provider/view/screen/booking/editting_services_screen.dart';
import '../../../features/patient/view/screen/auth/check_email_screen.dart';
import '../../../features/patient/view/screen/auth/field_login_screen.dart';
import '../../../features/patient/view/screen/auth/forgot_password_screen.dart';
import '../../../features/patient/view/screen/auth/login_screen.dart';
import '../../../features/patient/view/screen/auth/register_screen.dart';
import '../../../features/patient/view/screen/auth/verify_code_screen.dart';
import '../../../features/patient/view/screen/categories/categories_screen.dart';
import '../../../features/patient/view/screen/categories/clinic_screen.dart';
import '../../../features/patient/view/screen/categories/details_screen.dart';
import '../../../features/patient/view/screen/categories/hospital_screen.dart';
import '../../../features/patient/view/screen/categories/labs_screen.dart';
import '../../../features/patient/view/screen/categories/pharmacies_screen.dart';
import '../../../features/patient/view/screen/categories/products_booking_screen.dart';
import '../../../features/patient/view/screen/categories/services_booking_screen.dart';
import '../../../features/patient/view/screen/home/home_screen.dart';
import '../../../features/patient/view/screen/order/order_details_screen.dart';
import '../../../features/patient/view/screen/settings/profile_screen.dart';
import '../../../features/patient/view/screen/settings/reset_password_screen.dart';
import '../../../features/patient/view/screen/settings/settings_screen.dart';

import '../../../features/service_provider/view/screen/auth/register_service_screen.dart';
import '../../../features/service_provider/view/screen/booking/state_booking_screen.dart';
import '../../shared/navigation_screen.dart';
import 'app_routes.dart';

List<GetPage<dynamic>>? routes = [
  // GetPage(name: "/", page: () => const Language(), middlewares: [MyMiddleWare()]),
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
  GetPage(name: AppRoute.details, page: () => DetailsScreen()),
  // Service Provider
  GetPage(name: AppRoute.registerService, page: () => RegisterServiceScreen()),
  GetPage(name: AppRoute.stateBooking, page: () => StateBookingScreen()),
  GetPage(name: AppRoute.editServices, page: () => EditingServiceScreen()),
  GetPage(name: AppRoute.editProducts, page: () => EditingProductsScreen()),
  GetPage(name: AppRoute.addServices, page: () => AddServiceScreen()),
  GetPage(name: AppRoute.addProducts, page: () => AddProductsScreen()),
  //doctor
  GetPage(
      name: AppRoute.doctorCategories, page: () => DoctorCategoriesScreen()),
  GetPage(name: AppRoute.dentistry, page: () => DentistryScreen()),
  GetPage(name: AppRoute.optics, page: () => OpticsScreen()),
  GetPage(name: AppRoute.availableDoctor, page: () => AvailableDoctorsScreen()),
  //My order
  GetPage(name: AppRoute.myOrder, page: () => MyOrderScreen()),
  GetPage(name: AppRoute.orderSuccess, page: () => OrderSuccessScreen()),
  GetPage(name: AppRoute.orderFailed, page: () => OrderFailedScreen()),
  GetPage(name: AppRoute.detailsOrder, page: () => OrderDetailsScreen()),
  //Navigation
  GetPage(name: AppRoute.navigation, page: () => const NavigationScreen()),
];
