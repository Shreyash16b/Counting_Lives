import 'package:areeb_s_application2/core/app_export.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:areeb_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:areeb_s_application2/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';

class ServiceAppointmentBookRescheduleSuccessScreen extends StatelessWidget {
  const ServiceAppointmentBookRescheduleSuccessScreen({Key? key})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h),
                child: Column(children: [
                  SizedBox(height: 32.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgCheckmark,
                      height: 38.adaptSize,
                      width: 38.adaptSize),
                  SizedBox(height: 19.v),
                  SizedBox(
                      width: 164.h,
                      child: Text("Thank you for booking \nan appointment",
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                          textAlign: TextAlign.center,
                          style: theme.textTheme.bodyLarge)),
                  SizedBox(height: 19.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "at ",
                            style: CustomTextStyles.bodyLargeff4d4d4d),
                        TextSpan(
                            text: "Modern Diagnostic Center",
                            style: theme.textTheme.titleMedium)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 41.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "For ",
                            style: CustomTextStyles.bodyLargeff4d4d4d),
                        TextSpan(
                            text: "X - Ray", style: theme.textTheme.titleMedium)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 7.v),
                  Align(
                      alignment: Alignment.centerRight,
                      child: Padding(
                          padding: EdgeInsets.only(right: 26.h),
                          child: RichText(
                              text: TextSpan(children: [
                                TextSpan(
                                    text: "on ",
                                    style: CustomTextStyles.bodyLargeff4d4d4d),
                                TextSpan(
                                    text: "Monday, 7th November 2023",
                                    style: theme.textTheme.titleMedium)
                              ]),
                              textAlign: TextAlign.left))),
                  SizedBox(height: 6.v),
                  RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "at ",
                            style: CustomTextStyles.bodyLargeff4d4d4d),
                        TextSpan(text: "2", style: theme.textTheme.titleMedium),
                        TextSpan(
                            text: " pm", style: theme.textTheme.titleMedium)
                      ]),
                      textAlign: TextAlign.left),
                  SizedBox(height: 20.v),
                  Text("Your appointment ID is",
                      style: theme.textTheme.bodyLarge),
                  SizedBox(height: 7.v),
                  Text("#RKAD550021",
                      style: CustomTextStyles.bodyLargeTealA700),
                  SizedBox(height: 43.v),
                  Padding(
                      padding: EdgeInsets.only(left: 18.h, right: 10.h),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Expanded(
                                child: CustomElevatedButton(
                                    height: 31.v,
                                    text: "Home",
                                    margin: EdgeInsets.only(right: 17.h),
                                    buttonStyle: CustomButtonStyles.none,
                                    decoration: CustomButtonStyles
                                        .gradientOnPrimaryContainerToTealA1Decoration,
                                    buttonTextStyle:
                                        CustomTextStyles.bodySmallWhiteA70012)),
                            Expanded(
                                child: CustomElevatedButton(
                                    height: 31.v,
                                    text: "Reschedule",
                                    margin: EdgeInsets.only(left: 17.h),
                                    buttonStyle:
                                        CustomButtonStyles.fillPrimary1,
                                    buttonTextStyle:
                                        CustomTextStyles.bodySmallWhiteA70012,
                                    onPressed: () {
                                      onTapReschedule(context);
                                    }))
                          ])),
                  SizedBox(height: 60.v),
                  _buildImage(context)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 26.h, top: 22.v, bottom: 22.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Appointment Confirmed"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.fromLTRB(26.h, 21.v, 26.h, 22.v))
        ],
        styleType: Style.bgGradientnameonPrimaryContainernametealA700);
  }

  /// Section Widget
  Widget _buildImage(BuildContext context) {
    return CustomImageView(
        imagePath: ImageConstant.imgGroup528, height: 212.v, width: 314.h);
  }

  /// Navigates to the serviceAppointmentBookRescheduleScreen when the action is triggered.
  onTapReschedule(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.serviceAppointmentBookRescheduleScreen);
  }
}
