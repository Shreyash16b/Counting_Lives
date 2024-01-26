import 'package:areeb_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class MothersdiagnosticItemWidget extends StatelessWidget {
  const MothersdiagnosticItemWidget({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: AppDecoration.fillWhiteA.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Container(
            height: 113.v,
            width: 98.h,
            decoration: AppDecoration.outlineBlack,
            child: CustomImageView(
              imagePath: ImageConstant.imgRectangle2259,
              height: 113.v,
              width: 98.h,
              radius: BorderRadius.horizontal(
                left: Radius.circular(15.h),
              ),
              alignment: Alignment.center,
            ),
          ),
          Padding(
            padding: EdgeInsets.only(
              top: 13.v,
              right: 12.h,
              bottom: 8.v,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(
                      "Tesla Imagery Services",
                      style: theme.textTheme.bodyMedium,
                    ),
                    CustomImageView(
                      imagePath: ImageConstant.imgFavorite,
                      height: 13.v,
                      width: 15.h,
                      margin: EdgeInsets.only(
                        left: 36.h,
                        bottom: 3.v,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                Row(
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
                        "X ray, MRI, CT Scan",
                        style: CustomTextStyles.bodySmallGray700,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 6.v),
                Row(
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
                SizedBox(height: 7.v),
                Row(
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
                        "A wing, Galaxy - Inayat Nagar, Parb...",
                        style: CustomTextStyles.bodySmallGray70010,
                      ),
                    ),
                  ],
                ),
                SizedBox(height: 2.v),
                SizedBox(
                  width: 200.h,
                  child: Row(
                    children: [
                      CustomImageView(
                        imagePath: ImageConstant.imgClock,
                        height: 10.adaptSize,
                        width: 10.adaptSize,
                        margin: EdgeInsets.only(top: 4.v),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 9.h),
                        child: Text(
                          "10:00 AM - 2 PM",
                          style: CustomTextStyles.bodySmallGray70010,
                        ),
                      ),
                      Spacer(),
                      SizedBox(
                        height: 15.v,
                        width: 45.h,
                        child: Stack(
                          alignment: Alignment.center,
                          children: [
                            CustomImageView(
                              imagePath: ImageConstant.imgTelevisionPrimary,
                              height: 15.v,
                              width: 45.h,
                              alignment: Alignment.center,
                            ),
                            Align(
                              alignment: Alignment.center,
                              child: Text(
                                "Closed",
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
        ],
      ),
    );
  }
}
