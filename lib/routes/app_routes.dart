import 'package:flutter/material.dart';
import 'package:counting_lives/presentation/services_screen/services_screen.dart';
import 'package:counting_lives/presentation/service_profile_tab_container_screen/service_profile_tab_container_screen.dart';
import 'package:counting_lives/presentation/service_appointment_book_one_screen/service_appointment_book_one_screen.dart';
import 'package:counting_lives/presentation/service_appointment_book_two_screen/service_appointment_book_two_screen.dart';
import 'package:counting_lives/presentation/service_appointment_book_success_screen/service_appointment_book_success_screen.dart';
import 'package:counting_lives/presentation/app_navigation_screen/app_navigation_screen.dart';

class AppRoutes {
  static const String servicesScreen = '/services_screen';

  static const String serviceProfilePage = '/service_profile_page';

  static const String serviceProfileTabContainerScreen =
      '/service_profile_tab_container_screen';

  static const String serviceProfileReviewPage = '/service_profile_review_page';

  static const String serviceProfileReviewContainerScreen =
      '/service_profile_review_container_screen';

  static const String serviceProfileDetailsPage =
      '/service_profile_details_page';

  static const String serviceAppointmentBookOneScreen =
      '/service_appointment_book_one_screen';

  static const String serviceAppointmentBookTwoScreen =
      '/service_appointment_book_two_screen';

  static const String serviceAppointmentBookSuccessScreen =
      '/service_appointment_book_success_screen';

  static const String serviceAppointmentBookRescheduleScreen =
      '/service_appointment_book_reschedule_screen';

  static const String serviceAppointmentBookRescheduleTwoScreen =
      '/service_appointment_book_reschedule_two_screen';

  static const String serviceAppointmentBookRescheduleSuccessScreen =
      '/service_appointment_book_reschedule_success_screen';

  static const String servicesSortScreen = '/services_sort_screen';

  static const String servicesFilterScreen = '/services_filter_screen';

  static const String servicesCriteriaScreen = '/services_criteria_screen';

  static const String appNavigationScreen = '/app_navigation_screen';

  static Map<String, WidgetBuilder> routes = {
    servicesScreen: (context) => ServicesScreen(),
    serviceProfileTabContainerScreen: (context) =>
        ServiceProfileTabContainerScreen(),
    serviceAppointmentBookOneScreen: (context) =>
        ServiceAppointmentBookOneScreen(),
    serviceAppointmentBookTwoScreen: (context) =>
        ServiceAppointmentBookTwoScreen(),
    serviceAppointmentBookSuccessScreen: (context) =>
        ServiceAppointmentBookSuccessScreen(),
    appNavigationScreen: (context) => AppNavigationScreen()
  };
}
