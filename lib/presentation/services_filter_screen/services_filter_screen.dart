import '../services_filter_screen/widgets/diagnosticcenter_item_widget.dart';
import 'package:areeb_s_application2/core/app_export.dart';
import 'package:areeb_s_application2/widgets/custom_elevated_button.dart';
import 'package:areeb_s_application2/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class ServicesFilterScreen extends StatelessWidget {
  ServicesFilterScreen({Key? key}) : super(key: key);

  TextEditingController degreeController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            body: SizedBox(
                height: 724.v,
                width: double.maxFinite,
                child: Stack(alignment: Alignment.bottomCenter, children: [
                  Align(
                      alignment: Alignment.bottomCenter,
                      child: SizedBox(
                          height: 768.v,
                          width: double.maxFinite,
                          child: Stack(
                              alignment: Alignment.bottomCenter,
                              children: [
                                _buildArrowDown(context),
                                Align(
                                    alignment: Alignment.bottomCenter,
                                    child: Padding(
                                        padding: EdgeInsets.only(
                                            left: 23.h,
                                            right: 28.h,
                                            bottom: 25.v),
                                        child: Column(
                                            mainAxisSize: MainAxisSize.min,
                                            children: [
                                              _buildCentersNearby(context),
                                              SizedBox(height: 14.v),
                                              _buildDiagnosticCenter(context)
                                            ]))),
                                Opacity(
                                    opacity: 0.7,
                                    child: Align(
                                        alignment: Alignment.center,
                                        child: Container(
                                            height: 768.v,
                                            width: double.maxFinite,
                                            decoration: BoxDecoration(
                                                color: appTheme.black900
                                                    .withOpacity(0.6)))))
                              ]))),
                  _buildDegree(context)
                ])),
            bottomNavigationBar: _buildApply(context)));
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
  Widget _buildDiagnosticCenter(BuildContext context) {
    return ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return SizedBox(height: 19.v);
        },
        itemCount: 5,
        itemBuilder: (context, index) {
          return DiagnosticcenterItemWidget();
        });
  }

  /// Section Widget
  Widget _buildDegree(BuildContext context) {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            height: 347.v,
            width: double.maxFinite,
            margin: EdgeInsets.only(bottom: 10.v),
            child: Stack(alignment: Alignment.topCenter, children: [
              Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                      margin: EdgeInsets.only(right: 25.h),
                      decoration: BoxDecoration(
                          image: DecorationImage(
                              image: fs.Svg(ImageConstant.imgGroup568WhiteA700),
                              fit: BoxFit.cover)),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Align(
                                alignment: Alignment.centerRight,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.end,
                                    children: [
                                      Text("Filter",
                                          style: CustomTextStyles
                                              .bodyLargeGray80001),
                                      CustomImageView(
                                          imagePath:
                                              ImageConstant.imgCloseGray800,
                                          height: 15.adaptSize,
                                          width: 15.adaptSize,
                                          margin: EdgeInsets.only(
                                              left: 126.h,
                                              top: 4.v,
                                              bottom: 3.v),
                                          onTap: () {
                                            onTapImgClose(context);
                                          })
                                    ])),
                            SizedBox(height: 19.v),
                            Padding(
                                padding: EdgeInsets.only(right: 120.h),
                                child: Row(children: [
                                  CustomTextFormField(
                                      width: 119.h,
                                      controller: degreeController,
                                      hintText: "Degree",
                                      textInputAction: TextInputAction.done,
                                      contentPadding: EdgeInsets.symmetric(
                                          horizontal: 26.h, vertical: 17.v),
                                      borderDecoration:
                                          TextFormFieldStyleHelper.fillCyan,
                                      fillColor: appTheme.cyan50),
                                  Spacer(),
                                  Container(
                                      height: 15.adaptSize,
                                      width: 15.adaptSize,
                                      margin:
                                          EdgeInsets.symmetric(vertical: 17.v),
                                      child: Stack(
                                          alignment: Alignment.center,
                                          children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgUpload,
                                                height: 15.adaptSize,
                                                width: 15.adaptSize,
                                                alignment: Alignment.center),
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgUpload,
                                                height: 15.adaptSize,
                                                width: 15.adaptSize,
                                                alignment: Alignment.center)
                                          ])),
                                  Padding(
                                      padding: EdgeInsets.only(
                                          left: 22.h, top: 19.v, bottom: 14.v),
                                      child: Text("X - Ray",
                                          style: CustomTextStyles
                                              .bodySmallGray80001))
                                ])),
                            SizedBox(width: 119.h, child: Divider()),
                            SizedBox(height: 2.v),
                            Align(
                                alignment: Alignment.center,
                                child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      CustomImageView(
                                          imagePath: ImageConstant.imgUpload,
                                          height: 15.adaptSize,
                                          width: 15.adaptSize),
                                      Padding(
                                          padding: EdgeInsets.only(left: 21.h),
                                          child: Text("MRI ",
                                              style: CustomTextStyles
                                                  .bodySmallGray80001))
                                    ])),
                            Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: Text("Experience",
                                    style:
                                        CustomTextStyles.bodySmallGray80001)),
                            SizedBox(height: 3.v),
                            Padding(
                                padding: EdgeInsets.only(right: 95.h),
                                child: Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 12.v, bottom: 3.v),
                                      child: SizedBox(
                                          width: 119.h, child: Divider())),
                                  Container(
                                      width: 104.h,
                                      margin: EdgeInsets.only(left: 31.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgUpload,
                                            height: 15.adaptSize,
                                            width: 15.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 1.v)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 21.h),
                                            child: Text("Sonography",
                                                style: CustomTextStyles
                                                    .bodySmallGray80001))
                                      ]))
                                ])),
                            SizedBox(height: 15.v),
                            Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: Row(children: [
                                  Padding(
                                      padding: EdgeInsets.only(bottom: 3.v),
                                      child: Text("Days",
                                          style: CustomTextStyles
                                              .bodySmallGray80001)),
                                  Container(
                                      width: 52.h,
                                      margin:
                                          EdgeInsets.only(left: 96.h, top: 3.v),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgUpload,
                                            height: 15.adaptSize,
                                            width: 15.adaptSize),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 21.h),
                                            child: Text("2D",
                                                style: CustomTextStyles
                                                    .bodySmallGray80001))
                                      ]))
                                ])),
                            SizedBox(height: 11.v),
                            SizedBox(width: 119.h, child: Divider()),
                            SizedBox(height: 6.v),
                            Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: Row(
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      Padding(
                                          padding: EdgeInsets.only(top: 11.v),
                                          child: Text("Time",
                                              style: CustomTextStyles
                                                  .bodySmallGray80001)),
                                      Container(
                                          width: 81.h,
                                          margin: EdgeInsets.only(
                                              left: 97.h, bottom: 11.v),
                                          child: Row(children: [
                                            CustomImageView(
                                                imagePath:
                                                    ImageConstant.imgUpload,
                                                height: 15.adaptSize,
                                                width: 15.adaptSize),
                                            Padding(
                                                padding:
                                                    EdgeInsets.only(left: 21.h),
                                                child: Text("CT Scan",
                                                    style: CustomTextStyles
                                                        .bodySmallGray80001))
                                          ]))
                                    ])),
                            SizedBox(height: 9.v),
                            Row(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Padding(
                                      padding: EdgeInsets.only(
                                          top: 7.v, bottom: 8.v),
                                      child: SizedBox(
                                          width: 119.h, child: Divider())),
                                  Container(
                                      width: 80.h,
                                      margin: EdgeInsets.only(left: 31.h),
                                      child: Row(children: [
                                        CustomImageView(
                                            imagePath: ImageConstant.imgUpload,
                                            height: 15.adaptSize,
                                            width: 15.adaptSize,
                                            margin:
                                                EdgeInsets.only(bottom: 1.v)),
                                        Padding(
                                            padding:
                                                EdgeInsets.only(left: 21.h),
                                            child: Text("Doppler",
                                                style: CustomTextStyles
                                                    .bodySmallGray80001))
                                      ]))
                                ]),
                            SizedBox(height: 8.v),
                            Padding(
                                padding: EdgeInsets.only(left: 26.h),
                                child: Text("Location",
                                    style:
                                        CustomTextStyles.bodySmallGray80001)),
                            SizedBox(height: 16.v),
                            SizedBox(width: 119.h, child: Divider())
                          ]))),
              Align(
                  alignment: Alignment.topCenter,
                  child: Padding(
                      padding: EdgeInsets.only(top: 41.v),
                      child: SizedBox(width: 374.h, child: Divider()))),
              Align(
                  alignment: Alignment.bottomCenter,
                  child: SizedBox(width: 374.h, child: Divider())),
              Align(
                  alignment: Alignment.bottomLeft,
                  child: Padding(
                      padding: EdgeInsets.only(left: 119.h),
                      child: SizedBox(
                          height: 305.v,
                          child: VerticalDivider(width: 1.h, thickness: 1.v))))
            ])));
  }

  /// Section Widget
  Widget _buildApply(BuildContext context) {
    return Padding(
        padding: EdgeInsets.only(left: 26.h, right: 18.h, bottom: 14.v),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 6.v, bottom: 7.v),
              child:
                  Text("Clear All", style: CustomTextStyles.bodySmallPrimary)),
          CustomElevatedButton(
              height: 30.v,
              width: 223.h,
              text: "APPLY",
              buttonStyle: CustomButtonStyles.fillTealA,
              buttonTextStyle: CustomTextStyles.bodyMediumWhiteA70015,
              onPressed: () {
                onTapAPPLY(context);
              })
        ]));
  }

  /// Navigates to the servicesScreen when the action is triggered.
  onTapImgClose(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesScreen);
  }

  /// Navigates to the servicesCriteriaScreen when the action is triggered.
  onTapAPPLY(BuildContext context) {
    Navigator.pushNamed(context, AppRoutes.servicesCriteriaScreen);
  }
}
