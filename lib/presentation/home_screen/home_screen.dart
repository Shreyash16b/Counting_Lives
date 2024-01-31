import '../home_screen/widgets/home_item_widget.dart';
import '../home_screen/widgets/userprofile_item_widget.dart';
import '../home_screen/widgets/view_item_widget.dart';
import 'controller/home_controller.dart';
import 'models/home_item_model.dart';
import 'models/userprofile_item_model.dart';
import 'models/view_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:sayali_s_application4/core/app_export.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_leading_image.dart';
import 'package:sayali_s_application4/widgets/app_bar/appbar_subtitle.dart';
import 'package:sayali_s_application4/widgets/app_bar/custom_app_bar.dart';
import 'package:sayali_s_application4/widgets/custom_elevated_button.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: SizedBox(
          width: SizeUtils.width,
          child: SingleChildScrollView(
            padding: EdgeInsets.only(top: 15.v),
            child: SizedBox(
              height: 775.v,
              width: double.maxFinite,
              child: Stack(
                alignment: Alignment.bottomCenter,
                children: [
                  Align(
                    alignment: Alignment.topCenter,
                    child: SizedBox(
                      height: 689.v,
                      width: double.maxFinite,
                      child: Stack(
                        alignment: Alignment.topCenter,
                        children: [
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              children: [
                                Text(
                                  "msg_choose_a_category".tr,
                                  style: CustomTextStyles.bodyLargeTealA70001,
                                ),
                                SizedBox(height: 130.v),
                                SizedBox(
                                  height: 536.v,
                                  width: double.maxFinite,
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      _buildChooseAService(),
                                      _buildSettings(),
                                      _buildNextButton(),
                                    ],
                                  ),
                                ),
                              ],
                            ),
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgRepeatGrid3,
                            height: 70.v,
                            width: 362.h,
                            alignment: Alignment.topCenter,
                            margin: EdgeInsets.only(top: 213.v),
                          ),
                          _buildHome(),
                        ],
                      ),
                    ),
                  ),
                  _buildUserProfile(),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }

  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 27.h,
        leading: AppbarLeadingImage(
            imagePath: ImageConstant.imgNotification,
            margin: EdgeInsets.only(left: 21.h, top: 15.v, bottom: 15.v)),
        title: Container(
            width: 316.h,
            margin: EdgeInsets.only(left: 17.h),
            padding: EdgeInsets.all(17.h),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgGroup577),
                    fit: BoxFit.cover)),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  AppbarSubtitle(
                      text: "msg_search_for_doctors".tr,
                      margin: EdgeInsets.only(top: 2.v)),
                  AppbarImage(
                      imagePath: ImageConstant.imgSearch,
                      margin:
                          EdgeInsets.only(left: 42.h, right: 5.h, bottom: 1.v))
                ])),
        styleType: Style.bgStyle);
  }

  Widget _buildChooseAService() {
    return Align(
        alignment: Alignment.topCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 116.h, vertical: 17.v),
            decoration: AppDecoration.gradientDeepOrangeToPink,
            child: Text("msg_choose_a_service".tr,
                style: CustomTextStyles.bodyLargePrimary18)));
  }

  Widget _buildSettings() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Container(
            padding: EdgeInsets.symmetric(horizontal: 26.h),
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: fs.Svg(ImageConstant.imgGroup107),
                    fit: BoxFit.cover)),
            child: Column(mainAxisSize: MainAxisSize.min, children: [
              GestureDetector(
                  onTap: () {
                    onTapSettings();
                  },
                  child: Container(
                      height: 34.v,
                      width: 251.h,
                      padding:
                          EdgeInsets.only(top: 6.v, right: 114.h, bottom: 6.v),
                      decoration: AppDecoration.fillPrimary,
                      child: CustomImageView(
                          imagePath: ImageConstant.imgSettingsTealA7000111x18,
                          height: 11.v,
                          width: 18.h,
                          alignment: Alignment.bottomRight))),
              SizedBox(height: 2.v),
              Text("msg_doctors_near_you".tr,
                  style: CustomTextStyles.bodyLargePrimaryContainer),
              SizedBox(height: 17.v),
              Align(
                  alignment: Alignment.centerLeft,
                  child: SizedBox(
                      height: 279.v,
                      child: Obx(() => ListView.separated(
                          padding: EdgeInsets.only(right: 151.h),
                          scrollDirection: Axis.horizontal,
                          separatorBuilder: (context, index) {
                            return SizedBox(width: 38.h);
                          },
                          itemCount: controller
                              .homeModelObj.value.viewItemList.value.length,
                          itemBuilder: (context, index) {
                            ViewItemModel model = controller
                                .homeModelObj.value.viewItemList.value[index];
                            return ViewItemWidget(model);
                          })))),
              SizedBox(height: 17.v)
            ])));
  }

  Widget _buildHome() {
    return Align(
        alignment: Alignment.topCenter,
        child: SizedBox(
            height: 689.v,
            child: Obx(() => ListView.separated(
                padding: EdgeInsets.only(top: 41.v, bottom: 556.v),
                scrollDirection: Axis.horizontal,
                separatorBuilder: (context, index) {
                  return SizedBox(width: 10.h);
                },
                itemCount:
                    controller.homeModelObj.value.homeItemList.value.length,
                itemBuilder: (context, index) {
                  HomeItemModel model =
                      controller.homeModelObj.value.homeItemList.value[index];
                  return HomeItemWidget(model, onTapFortySix: () {
                    onTapFortySix();
                  });
                }))));
  }

  Widget _buildUserProfile() {
    return Align(
        alignment: Alignment.bottomCenter,
        child: Padding(
            padding: EdgeInsets.only(left: 26.h, top: 392.v, right: 22.h),
            child: Obx(() => ListView.separated(
                physics: NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) {
                  return SizedBox(height: 22.v);
                },
                itemCount: controller
                    .homeModelObj.value.userprofileItemList.value.length,
                itemBuilder: (context, index) {
                  UserprofileItemModel model = controller
                      .homeModelObj.value.userprofileItemList.value[index];
                  return UserprofileItemWidget(model);
                }))));
  }

  Widget _buildNextButton() {
    return Align(
      alignment: Alignment.center,
      child: Padding(
        padding: EdgeInsets.all(10.h),
        child: CustomElevatedButton(
          text: "lbl_next".tr,
          onPressed: onTapNext,
        ),
      ),
    );
  }

  void onTapSettings() {
    // Implement the logic for onTapSettings
    print('Settings tapped!');
    Get.toNamed(AppRoutes.homeSwipeUpScreen);
    // Add your logic here
  }

  void onTapFortySix() {
    // Implement the logic for onTapFortySix
    print('FortySix tapped!');
    Get.toNamed(AppRoutes.homeSwipeUpScreen);
    // Add your logic here
  }

  void onTapNext() {
    print('Next button tapped!');
    Get.toNamed(AppRoutes.homeSwipeUpScreen);
    print('Navigating to the next screen...');
  }
}
