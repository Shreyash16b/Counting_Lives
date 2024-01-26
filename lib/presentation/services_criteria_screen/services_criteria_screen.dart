import '../services_criteria_screen/widgets/diagnosticcenters1_item_widget.dart';
import 'package:areeb_s_application2/core/app_export.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_leading_image.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_subtitle.dart';
import 'package:areeb_s_application2/widgets/app_bar/appbar_trailing_image.dart';
import 'package:areeb_s_application2/widgets/app_bar/custom_app_bar.dart';
import 'package:flutter/material.dart';

class ServicesCriteriaScreen extends StatelessWidget {
  const ServicesCriteriaScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(context),
        body: Container(
          height: 712.v,
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 23.h,
            vertical: 10.v,
          ),
          child: Stack(
            alignment: Alignment.topRight,
            children: [
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 72.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconMaterialSort,
                        height: 10.v,
                        width: 15.h,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "Sort",
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.topRight,
                child: Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgIconMaterialSort,
                        height: 10.v,
                        width: 15.h,
                        margin: EdgeInsets.only(
                          top: 3.v,
                          bottom: 2.v,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 12.h),
                        child: Text(
                          "Filter",
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              Align(
                alignment: Alignment.center,
                child: Padding(
                  padding: EdgeInsets.only(right: 5.h),
                  child: Column(
                    mainAxisSize: MainAxisSize.min,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "8 centers nearby",
                          style: CustomTextStyles.bodySmallGray500,
                        ),
                      ),
                      SizedBox(height: 14.v),
                      _buildDiagnosticCenters(context),
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
      height: 56.v,
      leadingWidth: 41.h,
      leading: AppbarLeadingImage(
        imagePath: ImageConstant.imgArrowDown,
        margin: EdgeInsets.only(
          left: 26.h,
          top: 19.v,
          bottom: 22.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitle(
        text: "Diagnostic centers matcjing your criteria",
      ),
      actions: [
        AppbarTrailingImage(
          imagePath: ImageConstant.imgSearch,
          margin: EdgeInsets.fromLTRB(10.h, 18.v, 26.h, 22.v),
        ),
      ],
      styleType: Style.bgGradientnameonPrimaryContainernametealA700,
    );
  }

  /// Section Widget
  Widget _buildDiagnosticCenters(BuildContext context) {
    return ListView.separated(
      physics: NeverScrollableScrollPhysics(),
      shrinkWrap: true,
      separatorBuilder: (
        context,
        index,
      ) {
        return SizedBox(
          height: 19.v,
        );
      },
      itemCount: 5,
      itemBuilder: (context, index) {
        return Diagnosticcenters1ItemWidget();
      },
    );
  }
}
