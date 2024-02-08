import 'package:counting_lives/core/app_export.dart';
import 'package:counting_lives/presentation/services_screen/services_screen.dart';
import 'package:counting_lives/widgets/app_bar/appbar_leading_image.dart';
import 'package:counting_lives/widgets/app_bar/appbar_title.dart';
import 'package:counting_lives/widgets/app_bar/appbar_trailing_image.dart';
import 'package:counting_lives/widgets/app_bar/custom_app_bar.dart';
import 'package:counting_lives/widgets/custom_elevated_button.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:counting_lives/core/utils/image_constant.dart';
import 'package:flutter_svg/flutter_svg.dart';

class ServiceAppointmentBookSuccessScreen extends StatelessWidget {
  const ServiceAppointmentBookSuccessScreen(
      {super.key, this.hospitalname, this.servicename, this.date, this.time});
  final String? hospitalname;
  final String? servicename;
  final String? date;
  final String? time;
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 30.h),
          child: Column(
            children: [
              SizedBox(height: 32.v),
              SvgPicture.asset(ImageConstant.imgCheckmark,
                  height: 38.adaptSize, width: 38.adaptSize),

              // height: 38.adaptSize,
              // width: 38.adaptSize),
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
                        text: "at ", style: CustomTextStyles.bodyLargeff4d4d4d),
                    TextSpan(
                        text: hospitalname, style: theme.textTheme.titleMedium)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 41.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "For ",
                        style: CustomTextStyles.bodyLargeff4d4d4d),
                    TextSpan(
                        text: servicename, style: theme.textTheme.titleMedium)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 7.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "on ", style: CustomTextStyles.bodyLargeff4d4d4d),
                    TextSpan(text: date, style: theme.textTheme.titleMedium)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 4.v),
              RichText(
                  text: TextSpan(children: [
                    TextSpan(
                        text: "at ", style: CustomTextStyles.bodyLargeff4d4d4d),
                    TextSpan(text: time, style: theme.textTheme.titleMedium)
                  ]),
                  textAlign: TextAlign.left),
              SizedBox(height: 21.v),
              Text("Your appointment ID is", style: theme.textTheme.bodyLarge),
              SizedBox(height: 7.v),
              Text("ID to be generated once backend is executed",
                  style: CustomTextStyles.bodyLargeTealA700),
              SizedBox(height: 43.v),
              Padding(
                padding: EdgeInsets.only(left: 18.h, right: 10.h),
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigator.of(context).push(
                      MaterialPageRoute(
                        builder: (ctx) => ServicesScreen(uid: FirebaseAuth.instance.currentUser!.uid,),
                      ),
                    );
                  },
                  height: 30,
                  width: 90,
                  text: "Home",
                  buttonStyle: CustomButtonStyles.fillTealA,
                ),
              ),
              SizedBox(height: 60.v),
              _buildImage(context)
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
