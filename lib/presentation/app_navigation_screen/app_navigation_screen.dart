import 'package:areeb_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class AppNavigationScreen extends StatelessWidget {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(context),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.servicesScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Service  Profile - Tab Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.serviceProfileTabContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Service Profile - Review - Container",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.serviceProfileReviewContainerScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Service Appointment Book - One",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.serviceAppointmentBookOneScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Service Appointment Book - Two",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.serviceAppointmentBookTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Service Appointment Book -Success",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.serviceAppointmentBookSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Service Appointment Book -Reschedule",
                          onTapScreenTitle: () => onTapScreenTitle(context,
                              AppRoutes.serviceAppointmentBookRescheduleScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Service Appointment Book -Reschedule Two",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .serviceAppointmentBookRescheduleTwoScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle:
                              "Service Appointment Book - reschedule - Success",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context,
                              AppRoutes
                                  .serviceAppointmentBookRescheduleSuccessScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services -  Sort",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.servicesSortScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services -  Filter",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.servicesFilterScreen),
                        ),
                        _buildScreenTitle(
                          context,
                          screenTitle: "Services -  Criteria",
                          onTapScreenTitle: () => onTapScreenTitle(
                              context, AppRoutes.servicesCriteriaScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app.",
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle(
    BuildContext context, {
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(
    BuildContext context,
    String routeName,
  ) {
    Navigator.pushNamed(context, routeName);
  }
}
