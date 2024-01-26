import 'package:areeb_s_application2/core/app_export.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_title.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:areeb_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:areeb_s_application2/widgets/custom_checkbox_button.dart';
import 'package:areeb_s_application2/widgets/custom_elevated_button.dart';
import 'package:areeb_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';

// ignore_for_file: must_be_immutable
class ServiceAppointmentBookRescheduleScreen extends StatelessWidget {
  ServiceAppointmentBookRescheduleScreen({Key? key}) : super(key: key);

  TextEditingController searchController = TextEditingController();

  bool sonography = false;

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            appBar: _buildAppBar(context),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 18.v),
                child: Column(children: [
                  _buildLinkedIn(context),
                  SizedBox(height: 20.v),
                  _buildSearch(context),
                  SizedBox(height: 26.v),
                  _buildCalendar(context),
                  SizedBox(height: 49.v),
                  CustomElevatedButton(
                      text: "Reschedule",
                      margin: EdgeInsets.symmetric(horizontal: 26.h),
                      buttonStyle: CustomButtonStyles.fillPrimary,
                      buttonTextStyle: CustomTextStyles.titleMediumWhiteA700,
                      onPressed: () {
                        onTapReschedule(context);
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 39.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 24.h, top: 22.v, bottom: 22.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Reschedule"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.fromLTRB(26.h, 21.v, 26.h, 22.v))
        ],
        styleType: Style.bgGradientnameonPrimaryContainernametealA700);
  }

  /// Section Widget
  Widget _buildLinkedIn(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2264,
              height: 113.v,
              width: 98.h,
              radius: BorderRadius.circular(15.h)),
          Padding(
              padding: EdgeInsets.only(left: 15.h, bottom: 4.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgLinkedinPrimary,
                          height: 14.v,
                          width: 10.h),
                      Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text("Modern Diagnostic Center",
                              style: CustomTextStyles.bodySmallGray70010)),
                      Container(
                          height: 15.v,
                          width: 45.h,
                          margin: EdgeInsets.only(left: 24.h),
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                CustomImageView(
                                    imagePath:
                                        ImageConstant.imgTelevisionTealA700,
                                    height: 15.v,
                                    width: 45.h,
                                    alignment: Alignment.center),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Text("Open",
                                        style: CustomTextStyles
                                            .bodySmallWhiteA700))
                              ]))
                    ]),
                    SizedBox(height: 8.v),
                    SizedBox(
                        width: 179.h,
                        child: Text(
                            "Plot 47, Vakil Colony, Near Padela Hall, \nPune, India - 411001 ",
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                            style: CustomTextStyles.bodySmallGray70010)),
                    SizedBox(height: 15.v),
                    Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgClosePrimary,
                          height: 13.v,
                          width: 12.h,
                          margin: EdgeInsets.only(bottom: 1.v)),
                      Padding(
                          padding: EdgeInsets.only(left: 6.h, bottom: 1.v),
                          child: Text("Closed on:",
                              style: CustomTextStyles.bodySmallGray70010)),
                      Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text("Sunday",
                              style: CustomTextStyles.bodySmallGray70010))
                    ]),
                    SizedBox(height: 15.v),
                    Row(children: [
                      CustomImageView(
                          imagePath: ImageConstant.imgCalendar,
                          height: 13.v,
                          width: 12.h),
                      Padding(
                          padding: EdgeInsets.only(left: 5.h),
                          child: Text("Today:",
                              style: CustomTextStyles.bodySmallGray70010)),
                      Padding(
                          padding: EdgeInsets.only(left: 12.h),
                          child: Text("Tuesday, 24th October 2023 ",
                              style: CustomTextStyles.bodySmallGray70010))
                    ])
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildSearch(BuildContext context) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 16.v),
        decoration: AppDecoration.fillGray20001,
        child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(children: [
                Padding(
                    padding: EdgeInsets.only(top: 8.v, bottom: 5.v),
                    child: Text("Referred by:",
                        style: CustomTextStyles.bodySmall12)),
                Expanded(
                    child: Padding(
                        padding: EdgeInsets.only(left: 10.h),
                        child: CustomTextFormField(
                            controller: searchController,
                            hintText: "Search Doctor...",
                            textInputAction: TextInputAction.done)))
              ]),
              SizedBox(height: 15.v),
              Padding(
                  padding: EdgeInsets.only(right: 21.h),
                  child: Row(children: [
                    Text("For:", style: CustomTextStyles.bodySmall12),
                    Spacer(flex: 27),
                    CustomImageView(
                        imagePath: ImageConstant.imgUpload,
                        height: 15.adaptSize,
                        width: 15.adaptSize,
                        margin: EdgeInsets.only(bottom: 2.v)),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text("X - Ray",
                            style: CustomTextStyles.bodySmallGray80001)),
                    Spacer(flex: 72),
                    CustomCheckboxButton(
                        text: "Sonography",
                        value: sonography,
                        onChange: (value) {
                          sonography = value;
                        })
                  ])),
              SizedBox(height: 13.v),
              Padding(
                  padding: EdgeInsets.only(left: 53.h, right: 67.h),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        SizedBox(
                            width: 72.h,
                            child: Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgUpload,
                                      height: 15.adaptSize,
                                      width: 15.adaptSize),
                                  Text("CT Scan",
                                      style:
                                          CustomTextStyles.bodySmallGray80001)
                                ])),
                        Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgUpload,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize),
                              Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text("MRI",
                                      style:
                                          CustomTextStyles.bodySmallGray80001))
                            ])
                      ])),
              SizedBox(height: 14.v),
              Padding(
                  padding: EdgeInsets.only(left: 53.h, right: 72.h),
                  child: Row(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgUpload,
                        height: 15.adaptSize,
                        width: 15.adaptSize),
                    Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text("Doppler",
                            style: CustomTextStyles.bodySmallGray80001)),
                    Spacer(),
                    SizedBox(
                        width: 43.h,
                        child: Row(
                            mainAxisAlignment: MainAxisAlignment.spaceBetween,
                            children: [
                              CustomImageView(
                                  imagePath: ImageConstant.imgUpload,
                                  height: 15.adaptSize,
                                  width: 15.adaptSize),
                              Text("2D",
                                  style: CustomTextStyles.bodySmallGray80001)
                            ]))
                  ])),
              SizedBox(height: 3.v)
            ]));
  }

  /// Section Widget
  Widget _buildCalendar(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 26.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Column(children: [
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 1.h),
                    child: Text("November 2023",
                        style: theme.textTheme.bodySmall))),
            SizedBox(height: 10.v),
            Container(
                width: 182.h,
                margin: EdgeInsets.only(right: 3.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("SUN", style: CustomTextStyles.mulishGray8004c),
                      Text("MON", style: CustomTextStyles.mulishGray8004c),
                      Text("TUE", style: CustomTextStyles.mulishGray8004c),
                      Text("WED", style: CustomTextStyles.mulishGray8004c),
                      Text("THU", style: CustomTextStyles.mulishGray8004c),
                      Text("FRI", style: CustomTextStyles.mulishGray8004c),
                      Text("SAT", style: CustomTextStyles.mulishGray8004c)
                    ])),
            SizedBox(height: 8.v),
            Align(
                alignment: Alignment.centerRight,
                child: Padding(
                    padding: EdgeInsets.only(right: 5.h),
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.end,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                              padding: EdgeInsets.only(top: 4.v, bottom: 8.v),
                              child: Text("1",
                                  style: CustomTextStyles.bodySmall9)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 22.h, top: 4.v, bottom: 8.v),
                              child: Text("2",
                                  style: CustomTextStyles.bodySmall9)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 22.h, top: 4.v, bottom: 8.v),
                              child: Text("3",
                                  style: CustomTextStyles.bodySmall9)),
                          Container(
                              height: 25.v,
                              width: 26.h,
                              margin: EdgeInsets.only(left: 12.h),
                              child: Stack(
                                  alignment: Alignment.topCenter,
                                  children: [
                                    CustomImageView(
                                        imagePath: ImageConstant.imgColour,
                                        height: 25.v,
                                        width: 26.h,
                                        alignment: Alignment.center),
                                    Align(
                                        alignment: Alignment.topCenter,
                                        child: Padding(
                                            padding: EdgeInsets.only(top: 2.v),
                                            child: Text("4",
                                                style: CustomTextStyles
                                                    .bodySmall12)))
                                  ])),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 11.h, top: 4.v, bottom: 8.v),
                              child: Text("5",
                                  style: CustomTextStyles.bodySmall9)),
                          Padding(
                              padding: EdgeInsets.only(
                                  left: 23.h, top: 4.v, bottom: 8.v),
                              child:
                                  Text("6", style: CustomTextStyles.bodySmall9))
                        ]))),
            SizedBox(height: 8.v),
            Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              Padding(
                  padding: EdgeInsets.only(bottom: 2.v),
                  child: Text("7", style: CustomTextStyles.bodySmall9)),
              Padding(
                  padding: EdgeInsets.only(left: 23.h, bottom: 2.v),
                  child: Text("8", style: CustomTextStyles.bodySmall9)),
              Padding(
                  padding: EdgeInsets.only(left: 22.h, bottom: 2.v),
                  child: Text("9", style: CustomTextStyles.bodySmall9)),
              Padding(
                  padding: EdgeInsets.only(left: 19.h),
                  child: Text("10", style: theme.textTheme.bodySmall)),
              Padding(
                  padding: EdgeInsets.only(left: 15.h),
                  child: Text("11", style: theme.textTheme.bodySmall)),
              Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text("12", style: theme.textTheme.bodySmall)),
              Padding(
                  padding: EdgeInsets.only(left: 14.h),
                  child: Text("13", style: theme.textTheme.bodySmall))
            ]),
            SizedBox(height: 14.v),
            Container(
                width: 184.h,
                margin: EdgeInsets.only(left: 2.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("14", style: theme.textTheme.bodySmall),
                      Text("15", style: theme.textTheme.bodySmall),
                      Text("16", style: theme.textTheme.bodySmall),
                      Text("17", style: theme.textTheme.bodySmall),
                      Text("18", style: theme.textTheme.bodySmall),
                      Text("19", style: theme.textTheme.bodySmall),
                      Text("20", style: theme.textTheme.bodySmall)
                    ])),
            SizedBox(height: 13.v),
            Container(
                width: 183.h,
                margin: EdgeInsets.only(left: 2.h),
                child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Text("21", style: theme.textTheme.bodySmall),
                      Text("22", style: theme.textTheme.bodySmall),
                      Text("23", style: theme.textTheme.bodySmall),
                      Text("24", style: theme.textTheme.bodySmall),
                      Text("25", style: theme.textTheme.bodySmall),
                      Text("26", style: theme.textTheme.bodySmall),
                      Text("27", style: theme.textTheme.bodySmall)
                    ])),
            SizedBox(height: 15.v),
            Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                    padding: EdgeInsets.only(left: 2.h),
                    child: Row(children: [
                      Text("28", style: theme.textTheme.bodySmall),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: Text("29", style: theme.textTheme.bodySmall)),
                      Padding(
                          padding: EdgeInsets.only(left: 15.h),
                          child: Text("30", style: theme.textTheme.bodySmall))
                    ]))),
            SizedBox(height: 9.v),
            Container(
                width: 183.h,
                margin: EdgeInsets.only(left: 1.h, right: 2.h),
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  Padding(
                      padding: EdgeInsets.only(top: 3.v, bottom: 4.v),
                      child: Text("Time", style: theme.textTheme.bodySmall)),
                  Spacer(),
                  Container(
                      width: 51.h,
                      padding: EdgeInsets.symmetric(horizontal: 4.h),
                      decoration: AppDecoration.fillSecondaryContainer.copyWith(
                          borderRadius: BorderRadiusStyle.roundedBorder6),
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Padding(
                                padding: EdgeInsets.only(top: 1.v, bottom: 2.v),
                                child: Text("09",
                                    style:
                                        CustomTextStyles.bodyMediumBlack90013)),
                            Padding(
                                padding: EdgeInsets.only(top: 1.v),
                                child: Text(":",
                                    style:
                                        CustomTextStyles.bodyMediumBlack90013)),
                            Padding(
                                padding: EdgeInsets.only(
                                    left: 3.h, top: 1.v, bottom: 2.v),
                                child: Text("41",
                                    style:
                                        CustomTextStyles.bodyMediumBlack90013))
                          ])),
                  Container(
                      height: 21.v,
                      width: 60.h,
                      margin: EdgeInsets.only(left: 3.h),
                      child: Stack(alignment: Alignment.centerLeft, children: [
                        Align(
                            alignment: Alignment.center,
                            child: Container(
                                padding: EdgeInsets.symmetric(
                                    horizontal: 11.h, vertical: 4.v),
                                decoration: AppDecoration.fillSecondaryContainer
                                    .copyWith(
                                        borderRadius:
                                            BorderRadiusStyle.roundedBorder9),
                                child: Column(
                                    mainAxisSize: MainAxisSize.min,
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      SizedBox(height: 2.v),
                                      Text("PM",
                                          style:
                                              CustomTextStyles.mulishBlack900)
                                    ]))),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 10.h),
                                child: Text("AM",
                                    style: CustomTextStyles.mulishBlack900)))
                      ]))
                ]))
          ]),
          Column(children: [
            Container(
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
                decoration: AppDecoration.fillGray40002
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Container(
                          width: 73.h,
                          margin: EdgeInsets.only(right: 4.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Padding(
                                    padding: EdgeInsets.only(top: 1.v),
                                    child: Text("Today",
                                        style: CustomTextStyles
                                            .bodySmallWhiteA700)),
                                CustomImageView(
                                    imagePath: ImageConstant.imgMobile,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize)
                              ])),
                      SizedBox(height: 8.v),
                      Text("Evening 8 pm",
                          style: CustomTextStyles.bodySmallWhiteA700)
                    ])),
            SizedBox(height: 22.v),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
                decoration: AppDecoration.fillGray40002
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Container(
                          width: 76.h,
                          margin: EdgeInsets.only(right: 2.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tomorrow",
                                    style: CustomTextStyles.bodySmallWhiteA700),
                                CustomImageView(
                                    imagePath: ImageConstant.imgMobile,
                                    height: 14.adaptSize,
                                    width: 14.adaptSize)
                              ])),
                      SizedBox(height: 8.v),
                      Text("Evening 6 pm",
                          style: CustomTextStyles.bodySmallWhiteA700)
                    ])),
            SizedBox(height: 21.v),
            Container(
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 8.v),
                decoration: AppDecoration.fillGray40002
                    .copyWith(borderRadius: BorderRadiusStyle.roundedBorder6),
                child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 1.v),
                      Container(
                          width: 81.h,
                          margin: EdgeInsets.only(left: 1.h),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Tomorrow",
                                    style: CustomTextStyles.bodySmallWhiteA700),
                                CustomImageView(
                                    imagePath: ImageConstant.imgBrightness,
                                    height: 14.v,
                                    width: 15.h)
                              ])),
                      SizedBox(height: 8.v),
                      Padding(
                          padding: EdgeInsets.only(left: 1.h),
                          child: Text("Morning 10 am",
                              style: CustomTextStyles.bodySmallWhiteA700))
                    ]))
          ])
        ]));
  }

  /// Navigates to the serviceAppointmentBookRescheduleTwoScreen when the action is triggered.
  onTapReschedule(BuildContext context) {
    Navigator.pushNamed(
        context, AppRoutes.serviceAppointmentBookRescheduleTwoScreen);
  }
}
