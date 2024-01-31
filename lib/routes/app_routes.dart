import 'package:get/get.dart';
import 'package:sayali_s_application4/presentation/welcome_one_screen/welcome_one_screen.dart';
import 'package:sayali_s_application4/presentation/welcome_one_screen/binding/welcome_one_binding.dart';
import 'package:sayali_s_application4/presentation/sign_in_screen/sign_in_screen.dart';
import 'package:sayali_s_application4/presentation/sign_in_screen/binding/sign_in_binding.dart';
import 'package:sayali_s_application4/presentation/sign_up_form_screen/sign_up_form_screen.dart';
import 'package:sayali_s_application4/presentation/sign_up_form_screen/binding/sign_up_form_binding.dart';
import 'package:sayali_s_application4/presentation/sign_up_otp_screen/sign_up_otp_screen.dart';
import 'package:sayali_s_application4/presentation/sign_up_otp_screen/binding/sign_up_otp_binding.dart';
import 'package:sayali_s_application4/presentation/sign_up_success_screen/sign_up_success_screen.dart';
import 'package:sayali_s_application4/presentation/sign_up_success_screen/binding/sign_up_success_binding.dart';
import 'package:sayali_s_application4/presentation/info_form_one_screen/info_form_one_screen.dart';
import 'package:sayali_s_application4/presentation/info_form_one_screen/binding/info_form_one_binding.dart';
import 'package:sayali_s_application4/presentation/document_upload_screen/document_upload_screen.dart';
import 'package:sayali_s_application4/presentation/document_upload_screen/binding/document_upload_binding.dart';
import 'package:sayali_s_application4/presentation/onboard_final_screen/onboard_final_screen.dart';
import 'package:sayali_s_application4/presentation/onboard_final_screen/binding/onboard_final_binding.dart';
import 'package:sayali_s_application4/presentation/home_screen/home_screen.dart';
import 'package:sayali_s_application4/presentation/home_screen/binding/home_binding.dart';
import 'package:sayali_s_application4/presentation/home_swipe_up_screen/home_swipe_up_screen.dart';
import 'package:sayali_s_application4/presentation/home_swipe_up_screen/binding/home_swipe_up_binding.dart';
import 'package:sayali_s_application4/presentation/category_view_screen/category_view_screen.dart';
import 'package:sayali_s_application4/presentation/category_view_screen/binding/category_view_binding.dart';
import 'package:sayali_s_application4/presentation/category_view_sort_screen/category_view_sort_screen.dart';
import 'package:sayali_s_application4/presentation/category_view_sort_screen/binding/category_view_sort_binding.dart';
import 'package:sayali_s_application4/presentation/category_view_sort_one_screen/category_view_sort_one_screen.dart';
import 'package:sayali_s_application4/presentation/category_view_sort_one_screen/binding/category_view_sort_one_binding.dart';
import 'package:sayali_s_application4/presentation/category_view_criteria_screen/category_view_criteria_screen.dart';
import 'package:sayali_s_application4/presentation/category_view_criteria_screen/binding/category_view_criteria_binding.dart';
import 'package:sayali_s_application4/presentation/sign_up_otp_one_screen/sign_up_otp_one_screen.dart';
import 'package:sayali_s_application4/presentation/sign_up_otp_one_screen/binding/sign_up_otp_one_binding.dart';
import 'package:sayali_s_application4/presentation/doctor_hospital_detail_screen/doctor_hospital_detail_screen.dart';
import 'package:sayali_s_application4/presentation/doctor_hospital_detail_screen/binding/doctor_hospital_detail_binding.dart';
import 'package:sayali_s_application4/presentation/doctor_sign_in_screen/doctor_sign_in_screen.dart';
import 'package:sayali_s_application4/presentation/doctor_sign_in_screen/binding/doctor_sign_in_binding.dart';
import 'package:sayali_s_application4/presentation/sign_up_doctor_screen/sign_up_doctor_screen.dart';
import 'package:sayali_s_application4/presentation/sign_up_doctor_screen/binding/sign_up_doctor_binding.dart';
import 'package:sayali_s_application4/presentation/doctor_document_upload_screen/doctor_document_upload_screen.dart';
import 'package:sayali_s_application4/presentation/doctor_document_upload_screen/binding/doctor_document_upload_binding.dart';
import 'package:sayali_s_application4/presentation/doctor_appointments_screen/doctor_appointments_screen.dart';
import 'package:sayali_s_application4/presentation/doctor_appointments_screen/binding/doctor_appointments_binding.dart';
import 'package:sayali_s_application4/presentation/app_navigation_screen/app_navigation_screen.dart';
import 'package:sayali_s_application4/presentation/app_navigation_screen/binding/app_navigation_binding.dart';

class AppRoutes {
  static const String welcomeOneScreen = '/welcome_one_screen';
  static const String signInScreen = '/sign_in_screen';
  static const String signUpFormScreen = '/sign_up_form_screen';
  static const String signUpOtpScreen = '/sign_up_otp_screen';
  static const String signUpSuccessScreen = '/sign_up_success_screen';
  static const String infoFormOneScreen = '/info_form_one_screen';
  static const String documentUploadScreen = '/document_upload_screen';
  static const String onboardFinalScreen = '/onboard_final_screen';
  static const String homeScreen = '/home_screen';
  // static const String homeSwipeUpScreen = '/home_swipe_up_screen';
  static const String homeSwipeUpScreen = '/home_swipe_up';
  static const String categoryViewScreen = '/category_view_screen';
  static const String categoryViewSortScreen = '/category_view_sort_screen';
  static const String categoryViewSortOneScreen =
      '/category_view_sort_one_screen';
  static const String categoryViewCriteriaScreen =
      '/category_view_criteria_screen';
  static const String signUpOtpOneScreen = '/sign_up_otp_one_screen';
  static const String doctorHospitalDetailScreen =
      '/doctor_hospital_detail_screen';
  static const String doctorSignInScreen = '/doctor_sign_in_screen';
  static const String signUpDoctorScreen = '/sign_up_doctor_screen';
  static const String doctorDocumentUploadScreen =
      '/doctor_document_upload_screen';
  static const String doctorAppointmentsScreen = '/doctor_appointments_screen';
  static const String appNavigationScreen = '/app_navigation_screen';
  static const String initialRoute = '/initialRoute';

  static List<GetPage> pages = [
    GetPage(
      name: welcomeOneScreen,
      page: () => WelcomeOneScreen(),
      binding: Get.put(WelcomeOneBinding()),
    ),
    GetPage(
      name: signInScreen,
      page: () => SignInScreen(),
      binding: Get.put(SignInBinding()),
    ),
    GetPage(
      name: signUpFormScreen,
      page: () => SignUpFormScreen(),
      binding: Get.put(SignUpFormBinding()),
    ),
    GetPage(
      name: signUpOtpScreen,
      page: () => SignUpOtpScreen(),
      binding: Get.put(SignUpOtpBinding()),
    ),
    GetPage(
      name: signUpSuccessScreen,
      page: () => SignUpSuccessScreen(),
      binding: Get.put(SignUpSuccessBinding()),
    ),
    GetPage(
      name: infoFormOneScreen,
      page: () => InfoFormOneScreen(),
      binding: Get.put(InfoFormOneBinding()),
    ),
    GetPage(
      name: documentUploadScreen,
      page: () => DocumentUploadScreen(),
      binding: Get.put(DocumentUploadBinding()),
    ),
    GetPage(
      name: onboardFinalScreen,
      page: () => OnboardFinalScreen(),
      binding: OnboardFinalBinding(),
    ),
    GetPage(
      name: homeScreen,
      page: () => HomeScreen(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: homeSwipeUpScreen,
      page: () => HomeSwipeUpScreen(),
      binding: HomeSwipeUpBinding(),
    ),
    GetPage(
      name: categoryViewScreen,
      page: () => CategoryViewScreen(),
      binding: CategoryViewBinding(),
    ),
    GetPage(
      name: categoryViewSortScreen,
      page: () => CategoryViewSortScreen(),
      binding: CategoryViewSortBinding(),
    ),
    GetPage(
      name: categoryViewSortOneScreen,
      page: () => CategoryViewSortOneScreen(),
      binding: CategoryViewSortOneBinding(),
    ),
    GetPage(
      name: categoryViewCriteriaScreen,
      page: () => CategoryViewCriteriaScreen(),
      binding: CategoryViewCriteriaBinding(),
    ),
    GetPage(
      name: signUpOtpOneScreen,
      page: () => SignUpOtpOneScreen(),
      binding: SignUpOtpOneBinding(),
    ),
    GetPage(
      name: doctorHospitalDetailScreen,
      page: () => DoctorHospitalDetailScreen(),
      binding: DoctorHospitalDetailBinding(),
    ),
    GetPage(
      name: doctorSignInScreen,
      page: () => DoctorSignInScreen(),
      binding: DoctorSignInBinding(),
    ),
    GetPage(
      name: signUpDoctorScreen,
      page: () => SignUpDoctorScreen(),
      binding: SignUpDoctorBinding(),
    ),
    GetPage(
      name: doctorDocumentUploadScreen,
      page: () => DoctorDocumentUploadScreen(),
      binding: DoctorDocumentUploadBinding(),
    ),
    GetPage(
      name: doctorAppointmentsScreen,
      page: () => DoctorAppointmentsScreen(),
      binding: DoctorAppointmentsBinding(),
    ),
    GetPage(
      name: appNavigationScreen,
      page: () => AppNavigationScreen(),
      binding: AppNavigationBinding(),
    ),
    GetPage(
      name: initialRoute,
      page: () => SignInScreen(),
      binding: SignInBinding(),
    ),
  ];
}
