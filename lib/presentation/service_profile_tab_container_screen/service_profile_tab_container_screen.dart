import 'package:counting_lives/core/app_export.dart';
import 'package:counting_lives/presentation/service_profile_details_page/service_profile_details_page.dart';
import 'package:counting_lives/presentation/service_profile_page/service_profile_page.dart';
//import 'package:counting_lives/presentation/service_profile_review_container_screen/service_profile_review_container_screen.dart';
import 'package:counting_lives/widgets/app_bar/appbar_leading_image.dart';
import 'package:counting_lives/widgets/app_bar/appbar_title.dart';
import 'package:counting_lives/widgets/app_bar/appbar_trailing_image.dart';
import 'package:counting_lives/widgets/app_bar/custom_app_bar.dart';
import 'package:counting_lives/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:counting_lives/presentation/service_profile_review_page/service_profile_review_page.dart';
import 'package:counting_lives/presentation/service_appointment_book_one_screen/service_appointment_book_one_screen.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceProfileTabContainerScreen extends StatefulWidget {
  const ServiceProfileTabContainerScreen({super.key});

  @override
  ServiceProfileTabContainerScreenState createState() =>
      ServiceProfileTabContainerScreenState();
}

// ignore_for_file: must_be_immutable
class ServiceProfileTabContainerScreenState
    extends State<ServiceProfileTabContainerScreen>
    with TickerProviderStateMixin {
  late TabController tabviewController;

  @override
  void initState() {
    super.initState();
    tabviewController = TabController(length: 4, vsync: this);
  }

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.whiteA700,
        appBar: _buildAppBar(context),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              SizedBox(height: 18.v),
              _buildCallRow(context),
              SizedBox(height: 20.v),
              CustomElevatedButton(
                  text: "Book Appointment",
                  margin: EdgeInsets.symmetric(horizontal: 26.h),
                  buttonStyle: CustomButtonStyles.none,
                  decoration:
                      CustomButtonStyles.gradientDeepOrangeToPinkDecoration,
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => ServiceAppointmentBookOneScreen(),
                      ),
                    );
                  }),
              SizedBox(height: 32.v),
              _buildTabview(context),
              Expanded(
                child: SizedBox(
                  height: 416.v,
                  child: TabBarView(
                    controller: tabviewController,
                    children: [
                      ServiceProfilePage(),
                      ServiceProfileReviewPage(),
                      ServiceProfileDetailsPage()
                    ],
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
  PreferredSizeWidget _buildAppBar(BuildContext context) {
    return CustomAppBar(
        leadingWidth: 41.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgArrowDown,
            margin: EdgeInsets.only(left: 26.h, top: 22.v, bottom: 22.v)),
        centerTitle: true,
        title: AppbarTitle(text: "Hospital Name"),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgSearch,
              margin: EdgeInsets.fromLTRB(26.h, 21.v, 26.h, 22.v))
        ],
        styleType: Style.bgGradientnameonPrimaryContainernametealA700_1);
  }

  /// Section Widget
  Widget _buildCallRow(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 26.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle2264,
              height: 113.v,
              width: 98.h,
              radius: BorderRadius.circular(15.h)),
          Padding(
            padding: EdgeInsets.only(left: 16.h, top: 10.v, bottom: 14.v),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(height: 12.v),
                Container(
                  width: 208.h,
                  margin: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.imgCall,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("Contact Number",
                              style: CustomTextStyles.bodySmallGray70010)),
                      // Spacer(),
                      // SvgPicture.asset(
                      //     ImageConstant.imgFavorite,
                      //     height: 13.v,
                      //     width: 15.h)
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    children: [
                      SvgPicture.asset(
                        ImageConstant.imgUser,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                      ),
                      Padding(
                          padding: EdgeInsets.only(left: 16.h),
                          child: Text("CT Scan, X Ray, MRI, Doppler, 2D",
                              style: CustomTextStyles.bodySmallGray70010))
                    ],
                  ),
                ),
                SizedBox(height: 16.v),
                Row(
                  children: [
                    SvgPicture.asset(
                      ImageConstant.imgSignal,
                      height: 11.v,
                      width: 12.h,
                    ),
                    Padding(
                        padding: EdgeInsets.only(left: 15.h),
                        child: Text("4.1",
                            style: CustomTextStyles.bodySmallGray70010))
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTabview(BuildContext context) {
    return Container(
        height: 67.v,
        width: double.maxFinite,
        decoration: BoxDecoration(color: appTheme.gray200),
        child: TabBar(
            controller: tabviewController,
            labelPadding: EdgeInsets.zero,
            labelColor: appTheme.black900,
            labelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400),
            unselectedLabelColor: appTheme.gray50002,
            unselectedLabelStyle: TextStyle(
                fontSize: 12.fSize,
                fontFamily: 'Mulish',
                fontWeight: FontWeight.w400),
            indicatorColor: appTheme.black900,
            tabs: [
              Tab(
                  child: Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgClockBlack900,
                    height: 15.adaptSize,
                    width: 15.adaptSize),
                Padding(
                    padding: EdgeInsets.only(top: 8.v), child: Text("Timings"))
              ])),
              Tab(
                  child: Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgClockGray5000215x15,
                    height: 15.adaptSize,
                    width: 15.adaptSize),
                Padding(
                    padding: EdgeInsets.only(top: 6.v), child: Text("Reviews"))
              ])),
              Tab(
                  child: Column(children: [
                CustomImageView(
                    imagePath: ImageConstant.imgInbox,
                    height: 15.adaptSize,
                    width: 15.adaptSize),
                Padding(
                    padding: EdgeInsets.only(top: 6.v), child: Text("Details"))
              ]))
            ]));
  }

  /// Common widget
  Widget _buildInbox(
    BuildContext context, {
    required String inbox,
    required String details,
  }) {
    return Column(children: [
      CustomImageView(
          imagePath: inbox, height: 15.adaptSize, width: 15.adaptSize),
      SizedBox(height: 6.v),
      Text(details,
          style: CustomTextStyles.bodySmallGray50002
              .copyWith(color: appTheme.gray50002))
    ]);
  }
}
