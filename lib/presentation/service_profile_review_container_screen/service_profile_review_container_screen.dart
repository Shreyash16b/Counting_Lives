import 'package:areeb_s_application2/core/app_export.dart';
import 'package:areeb_s_application2/presentation/service_profile_details_page/service_profile_details_page.dart';
import 'package:areeb_s_application2/presentation/service_profile_review_page/service_profile_review_page.dart';
import 'package:areeb_s_application2/widgets/custom_bottom_bar.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ServiceProfileReviewContainerScreen extends StatelessWidget {
  ServiceProfileReviewContainerScreen({Key? key}) : super(key: key);

  GlobalKey<NavigatorState> navigatorKey = GlobalKey();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.whiteA700,
            body: Navigator(
                key: navigatorKey,
                initialRoute: AppRoutes.serviceProfileReviewPage,
                onGenerateRoute: (routeSetting) => PageRouteBuilder(
                    pageBuilder: (ctx, ani, ani1) =>
                        getCurrentPage(routeSetting.name!),
                    transitionDuration: Duration(seconds: 0))),
            bottomNavigationBar: _buildBottomBar(context)));
  }

  /// Section Widget
  Widget _buildBottomBar(BuildContext context) {
    return CustomBottomBar(onChanged: (BottomBarEnum type) {
      Navigator.pushNamed(navigatorKey.currentContext!, getCurrentRoute(type));
    });
  }

  ///Handling route based on bottom click actions
  String getCurrentRoute(BottomBarEnum type) {
    switch (type) {
      case BottomBarEnum.Timings:
        return "/";
      case BottomBarEnum.Photos:
        return "/";
      case BottomBarEnum.Reviews:
        return AppRoutes.serviceProfileReviewPage;
      case BottomBarEnum.Details:
        return AppRoutes.serviceProfileDetailsPage;
      default:
        return "/";
    }
  }

  ///Handling page based on route
  Widget getCurrentPage(String currentRoute) {
    switch (currentRoute) {
      case AppRoutes.serviceProfileReviewPage:
        return ServiceProfileReviewPage();
      case AppRoutes.serviceProfileDetailsPage:
        return ServiceProfileDetailsPage();
      default:
        return DefaultWidget();
    }
  }
}
