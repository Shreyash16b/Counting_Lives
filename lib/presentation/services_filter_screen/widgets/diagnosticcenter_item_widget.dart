import 'package:areeb_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class DiagnosticcenterItemWidget extends StatelessWidget {
  const DiagnosticcenterItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 114.v,
      width: 324.h,
      child: Stack(
        alignment: Alignment.centerLeft,
        children: [
          Align(
            alignment: Alignment.center,
            child: Container(
              padding: EdgeInsets.symmetric(
                horizontal: 12.h,
                vertical: 8.v,
              ),
              decoration: AppDecoration.fillWhiteA.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder15,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.end,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  SizedBox(height: 2.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.end,
                    children: [
                      Text(
                        "7 Hills Diagnostic Center",
                        style: theme.textTheme.bodyMedium,
                      ),
                      CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 13.v,
                        width: 15.h,
                        margin: EdgeInsets.only(
                          left: 26.h,
                          bottom: 4.v,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 3.v),
                  Align(
                    alignment: Alignment.center,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgIconMaterialAlbum,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(
                            top: 2.v,
                            bottom: 3.v,
                          ),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 8.h),
                          child: Text(
                            "X-Ray, CT Scan",
                            style: CustomTextStyles.bodySmallGray700,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Padding(
                      padding: EdgeInsets.only(left: 100.h),
                      child: Row(
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgTelevision,
                            height: 10.adaptSize,
                            width: 10.adaptSize,
                          ),
                          CustomImageView(
                            imagePath: ImageConstant.imgGroup24,
                            height: 9.v,
                            width: 62.h,
                            margin: EdgeInsets.only(left: 9.h),
                          ),
                        ],
                      ),
                    ),
                  ),
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
                          margin: EdgeInsets.only(bottom: 2.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 10.h),
                          child: Text(
                            "24, 2nd Floor,  New Mondha, Oppo...",
                            style: CustomTextStyles.bodySmallGray70010,
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 3.v),
                  Padding(
                    padding: EdgeInsets.only(left: 100.h),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        CustomImageView(
                          imagePath: ImageConstant.imgClock,
                          height: 10.adaptSize,
                          width: 10.adaptSize,
                          margin: EdgeInsets.only(top: 3.v),
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 9.h),
                          child: Text(
                            "10:00 AM - 2:00 PM",
                            style: CustomTextStyles.bodySmallGray70010,
                          ),
                        ),
                        Spacer(),
                        SizedBox(
                          height: 15.v,
                          width: 45.h,
                          child: Stack(
                            alignment: Alignment.bottomCenter,
                            children: [
                              CustomImageView(
                                imagePath: ImageConstant.imgTelevisionTealA700,
                                height: 15.v,
                                width: 45.h,
                                alignment: Alignment.center,
                              ),
                              Align(
                                alignment: Alignment.bottomCenter,
                                child: Text(
                                  "Open",
                                  style: CustomTextStyles.bodySmallWhiteA700,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
          Align(
            alignment: Alignment.centerLeft,
            child: Container(
              height: 113.v,
              width: 98.h,
              decoration: BoxDecoration(),
            ),
          ),
          CustomImageView(
            imagePath: ImageConstant.imgRectangle2261,
            height: 113.v,
            width: 98.h,
            radius: BorderRadius.horizontal(
              left: Radius.circular(15.h),
            ),
            alignment: Alignment.centerLeft,
          ),
        ],
      ),
    );
  }
}
