import '../services_sort_screen/widgets/mothersdiagnostic_item_widget.dart';
import 'package:areeb_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

class ServicesSortScreen extends StatelessWidget {
  const ServicesSortScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: SizedBox(
                width: double.maxFinite,
                child: Container(
                    height: 768.v,
                    width: double.maxFinite,
                    decoration: AppDecoration.fillGray,
                    child: Stack(alignment: Alignment.bottomCenter, children: [
                      _buildArrowDown(context),
                      Align(
                          alignment: Alignment.bottomCenter,
                          child: Padding(
                              padding: EdgeInsets.only(
                                  left: 23.h, right: 28.h, bottom: 25.v),
                              child: Column(
                                  mainAxisSize: MainAxisSize.min,
                                  children: [
                                    _buildCentersNearby(context),
                                    SizedBox(height: 14.v),
                                    _buildHillsDiagnostic(context),
                                    SizedBox(height: 19.v),
                                    _buildTwentySix(context),
                                    SizedBox(height: 13.v),
                                    _buildMothersDiagnostic(context)
                                  ]))),
                      Align(
                          alignment: Alignment.center,
                          child: Container(
                              height: 768.v,
                              width: double.maxFinite,
                              decoration: AppDecoration.fillBlack,
                              child: Stack(
                                  alignment: Alignment.bottomCenter,
                                  children: [
                                    _buildSort(context),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 157.v),
                                            child: SizedBox(
                                                width: 374.h,
                                                child: Divider()))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 206.v),
                                            child: SizedBox(
                                                width: 374.h,
                                                child: Divider()))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 108.v),
                                            child: SizedBox(
                                                width: 374.h,
                                                child: Divider()))),
                                    Align(
                                        alignment: Alignment.bottomCenter,
                                        child: Padding(
                                            padding:
                                                EdgeInsets.only(bottom: 60.v),
                                            child: SizedBox(
                                                width: 374.h,
                                                child: Divider())))
                                  ])))
                    ])))));
  }

  /// Section Widget
  Widget _buildArrowDown(BuildContext context) {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 712.v),
            padding: EdgeInsets.symmetric(horizontal: 26.h, vertical: 16.v),
            decoration: AppDecoration.gradientOnPrimaryContainerToTealA,
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgArrowDown,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(top: 2.v, bottom: 5.v)),
                  Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Text("Diagnostic Service Near You",
                          style: CustomTextStyles.titleMediumWhiteA700)),
                  CustomImageView(
                      imagePath: ImageConstant.imgSearch,
                      height: 15.adaptSize,
                      width: 15.adaptSize,
                      margin: EdgeInsets.only(top: 2.v, bottom: 5.v))
                ])));
  }

  /// Section Widget
  Widget _buildCentersNearby(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 3.h),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("8 centers nearby",
                  style: CustomTextStyles.bodySmallGray500),
              Spacer(),
              CustomImageView(
                  imagePath: ImageConstant.imgIconMaterialSort,
                  height: 10.v,
                  width: 15.h,
                  margin: EdgeInsets.symmetric(vertical: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child:
                      Text("Sort", style: CustomTextStyles.bodySmallGray500)),
              CustomImageView(
                  imagePath: ImageConstant.imgIconMaterialSort,
                  height: 10.v,
                  width: 15.h,
                  margin: EdgeInsets.only(left: 12.h, top: 3.v, bottom: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 12.h),
                  child:
                      Text("Filter", style: CustomTextStyles.bodySmallGray500))
            ]));
  }

  /// Section Widget
  Widget _buildHillsDiagnostic(BuildContext context) {
    return SizedBox(
        height: 114.v,
        width: 324.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 8.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(height: 2.v),
                        _buildUltraRadiology(context,
                            text: "7 Hills Diagnostic Center"),
                        SizedBox(height: 3.v),
                        Align(
                            alignment: Alignment.center,
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgIconMaterialAlbum,
                                      height: 10.adaptSize,
                                      width: 10.adaptSize,
                                      margin: EdgeInsets.only(
                                          top: 2.v, bottom: 3.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 8.h),
                                      child: Text("X-Ray, CT Scan",
                                          style: CustomTextStyles
                                              .bodySmallGray700))
                                ])),
                        SizedBox(height: 7.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 100.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgTelevision,
                                      height: 10.adaptSize,
                                      width: 10.adaptSize),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGroup24,
                                      height: 9.v,
                                      width: 62.h,
                                      margin: EdgeInsets.only(left: 9.h))
                                ]))),
                        SizedBox(height: 7.v),
                        Padding(
                            padding: EdgeInsets.only(right: 14.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLinkedin,
                                      height: 10.v,
                                      width: 7.h,
                                      margin: EdgeInsets.only(bottom: 2.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                          "24, 2nd Floor,  New Mondha, Oppo...",
                                          style: CustomTextStyles
                                              .bodySmallGray70010))
                                ])),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 100.h),
                            child: _buildClock(context,
                                timeText: "10:00 AM - 2:00 PM",
                                openText: "Open"))
                      ]))),
          Align(
              alignment: Alignment.centerLeft,
              child: Container(
                  height: 113.v, width: 98.h, decoration: BoxDecoration())),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2261,
              height: 113.v,
              width: 98.h,
              radius: BorderRadius.horizontal(left: Radius.circular(15.h)),
              alignment: Alignment.centerLeft)
        ]));
  }

  /// Section Widget
  Widget _buildTwentySix(BuildContext context) {
    return SizedBox(
        height: 120.v,
        width: 324.h,
        child: Stack(alignment: Alignment.topLeft, children: [
          Align(
              alignment: Alignment.bottomCenter,
              child: Container(
                  padding:
                      EdgeInsets.symmetric(horizontal: 12.h, vertical: 4.v),
                  decoration: AppDecoration.fillWhiteA.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder15),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.end,
                      children: [
                        _buildUltraRadiology(context,
                            text: "Ultra Radiology Center"),
                        SizedBox(height: 4.v),
                        Padding(
                            padding: EdgeInsets.only(right: 59.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  CustomImageView(
                                      imagePath:
                                          ImageConstant.imgIconMaterialAlbum,
                                      height: 10.adaptSize,
                                      width: 10.adaptSize,
                                      margin: EdgeInsets.only(bottom: 5.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 11.h),
                                      child: Text("Sonography, CT Scan",
                                          style: CustomTextStyles
                                              .bodySmallGray700))
                                ])),
                        SizedBox(height: 7.v),
                        Align(
                            alignment: Alignment.centerLeft,
                            child: Padding(
                                padding: EdgeInsets.only(left: 100.h),
                                child: Row(children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgTelevision,
                                      height: 10.adaptSize,
                                      width: 10.adaptSize),
                                  CustomImageView(
                                      imagePath: ImageConstant.imgGroup24,
                                      height: 9.v,
                                      width: 62.h,
                                      margin: EdgeInsets.only(left: 12.h))
                                ]))),
                        SizedBox(height: 8.v),
                        Padding(
                            padding: EdgeInsets.only(right: 13.h),
                            child: Row(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  CustomImageView(
                                      imagePath: ImageConstant.imgLinkedin,
                                      height: 10.v,
                                      width: 7.h,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 1.v)),
                                  Padding(
                                      padding: EdgeInsets.only(left: 10.h),
                                      child: Text(
                                          "Building no. 3, Beside Padela, Vakil...",
                                          style: CustomTextStyles
                                              .bodySmallGray70010))
                                ])),
                        SizedBox(height: 3.v),
                        Padding(
                            padding: EdgeInsets.only(left: 100.h),
                            child: _buildClock(context,
                                timeText: "10:00 AM - 6:00 PM",
                                openText: "Open")),
                        SizedBox(height: 9.v)
                      ]))),
          Align(
              alignment: Alignment.topLeft,
              child: Container(
                  height: 113.v, width: 98.h, decoration: BoxDecoration())),
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2260,
              height: 113.v,
              width: 98.h,
              radius: BorderRadius.horizontal(left: Radius.circular(15.h)),
              alignment: Alignment.bottomLeft)
        ]));
  }

  /// Section Widget
  Widget _buildMothersDiagnostic(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 20.v);
        },
        itemCount: 3,
        itemBuilder: (context, index) {
          return MothersdiagnosticItemWidget();
        });
  }

  /// Section Widget
  Widget _buildSort(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgGroup568WhiteA700),
                    fit: BoxFit.cover)),
            child: Column(
                mainAxisSize: MainAxisSize.min,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Align(
                      alignment: Alignment.centerRight,
                      child: Row(
                          mainAxisAlignment: MainAxisAlignment.end,
                          children: [
                            Text("Sort",
                                style: CustomTextStyles.bodyLargeGray80001),
                            CustomImageView(
                                imagePath: ImageConstant.imgCloseGray800,
                                height: 15.v,
                                width: 14.h,
                                margin: EdgeInsets.only(
                                    left: 129.h, top: 3.v, bottom: 4.v),
                                onTap: () {
                                  onTapImgClose(context);
                                })
                          ])),
                  SizedBox(height: 28.v),
                  GestureDetector(
                      onTap: () {
                        onTapTxtDistanceLowTo(context);
                      },
                      child: Text("Distance: Low to high",
                          style: CustomTextStyles.bodyLargeGray80001)),
                  SizedBox(height: 26.v),
                  Text("Distance: High to low",
                      style: CustomTextStyles.bodyLargeGray80001),
                  SizedBox(height: 25.v),
                  Text("Ratings: High to Low",
                      style: CustomTextStyles.bodyLargeGray80001),
                  SizedBox(height: 26.v),
                  Text("Rating: Low to High",
                      style: CustomTextStyles.bodyLargeGray80001)
                ])));
  }

  /// Common widget
  Widget _buildUltraRadiology(
    BuildContext context, {
    required String text,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      Text(text,
          style: theme.textTheme.bodyMedium!
              .copyWith(color: theme.colorScheme.primary)),
      CustomImageView(
          imagePath: ImageConstant.imgFavorite,
          height: 13.v,
          width: 15.h,
          margin: EdgeInsets.only(left: 38.h, bottom: 4.v))
    ]);
  }

  /// Common widget
  Widget _buildClock(
    BuildContext context, {
    required String timeText,
    required String openText,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.end, children: [
      CustomImageView(
          imagePath: ImageConstant.imgClock,
          height: 10.adaptSize,
          width: 10.adaptSize,
          margin: EdgeInsets.only(bottom: 3.v)),
      Padding(
          padding: EdgeInsets.only(left: 9.h),
          child: Text(timeText,
              style: CustomTextStyles.bodySmallGray70010
                  .copyWith(color: appTheme.gray700))),
      Spacer(),
      SizedBox(
          height: 15.v,
          width: 45.h,
          child: Stack(alignment: Alignment.bottomCenter, children: [
            CustomImageView(
                imagePath: ImageConstant.imgTelevisionTealA700,
                height: 15.v,
                width: 45.h,
                alignment: Alignment.center),
            Align(
                alignment: Alignment.bottomCenter,
                child: Text(openText,
                    style: CustomTextStyles.bodySmallWhiteA700
                        .copyWith(color: appTheme.whiteA700)))
          ]))
    ]);
  }

  /// Navigates to the servicesScreen when the action is triggered.
  onTapImgClose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesScreen);
  }

  /// Navigates to the servicesCriteriaScreen when the action is triggered.
  onTapTxtDistanceLowTo(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesCriteriaScreen);
  }
}
