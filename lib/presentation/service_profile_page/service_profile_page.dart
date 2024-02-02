import 'package:counting_lives/core/app_export.dart';
import 'package:counting_lives/widgets/custom_elevated_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;

// ignore_for_file: must_be_immutable
class ServiceProfilePage extends StatefulWidget {
  const ServiceProfilePage({Key? key})
      : super(
          key: key,
        );

  @override
  ServiceProfilePageState createState() => ServiceProfilePageState();
}

class ServiceProfilePageState extends State<ServiceProfilePage>
    with AutomaticKeepAliveClientMixin<ServiceProfilePage> {
  @override
  bool get wantKeepAlive => true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: appTheme.whiteA700,
      body: SafeArea(
        child: Container(
          width: double.maxFinite,
          decoration: AppDecoration.fillWhiteA,
          child: Column(
            children: [
              SizedBox(height: 23.v),
              _buildOpen(context),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildOpen(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 26.h),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                    children: [
                      Image.asset(
                        'assets/images/image_not_found.png',
                        height: 70.v,
                        width: 70.h,
                      ),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            "Modern Diagnostic Center",
                          ),
                          Text(
                            "Plot 47, Vakil Colony\nNear Padela Hall, \nPune,India - 411001 ",
                            maxLines: 3,
                          ),
                        ],
                      ),
                    ],
                  ),
                ],
              ),
              CustomElevatedButton(
                onPressed: (){},
                height: 30.v,
                width: 90.h,
                text: "Open",
                margin: EdgeInsets.only(
                  top: 2.v,
                  bottom: 43.v,
                ),
                buttonStyle: CustomButtonStyles.fillTealA,
              ),
            ],
          ),
        ),
        SizedBox(height: 13.v),
        Container(
          padding: EdgeInsets.symmetric(
            horizontal: 25.h,
            vertical: 22.v,
          ),
          decoration: BoxDecoration(
            image: DecorationImage(
              image: fs.Svg(
                ImageConstant.imgGroup9,
              ),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 23.h,
                ),
                child: _buildEightyFive(
                  context,
                  day: "Monday:",
                  time: "10 am - 1 pm | 5 pm to 9 pm",
                ),
              ),
              SizedBox(height: 8.v),
              Divider(
                color: appTheme.whiteA700,
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 23.h,
                ),
                child: _buildEightyFive(
                  context,
                  day: "Tuesday:",
                  time: "10 am - 1 pm | 5 pm to 9 pm",
                ),
              ),
              SizedBox(height: 8.v),
              Divider(
                color: appTheme.whiteA700,
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 23.h,
                ),
                child: _buildEightyFive(
                  context,
                  day: "Wednesday:",
                  time: "10 am - 1 pm | 5 pm to 9 pm",
                ),
              ),
              SizedBox(height: 8.v),
              Divider(
                color: appTheme.whiteA700,
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 23.h,
                ),
                child: _buildEightyFive(
                  context,
                  day: "Thursday:",
                  time: "10 am - 1 pm | 5 pm to 9 pm",
                ),
              ),
              SizedBox(height: 9.v),
              Divider(
                color: appTheme.whiteA700,
              ),
              SizedBox(height: 9.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 23.h,
                ),
                child: _buildEightyFive(
                  context,
                  day: "Friday:",
                  time: "10 am - 1 pm | 5 pm to 9 pm",
                ),
              ),
              SizedBox(height: 8.v),
              Divider(
                color: appTheme.whiteA700,
              ),
              SizedBox(height: 10.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 18.h,
                  right: 23.h,
                ),
                child: _buildEightyFive(
                  context,
                  day: "Saturday:",
                  time: "10 am - 1 pm | 5 pm to 9 pm",
                ),
              ),
              SizedBox(height: 8.v),
              Divider(
                color: appTheme.whiteA700,
              ),
              SizedBox(height: 9.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 18.h),
                  child: Row(
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 1.v),
                        child: Text(
                          "Sunday:",
                          style: CustomTextStyles.bodyMediumGray900,
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 45.h),
                        child: Text(
                          "Closed",
                          style: CustomTextStyles.bodyMediumGray900,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Divider(
                color: appTheme.whiteA700,
              ),
            ],
          ),
        ),
      ],
    );
  }

  /// Common widget
  Widget _buildEightyFive(
    BuildContext context, {
    required String day,
    required String time,
  }) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(
          day,
          style: CustomTextStyles.bodyMediumGray900.copyWith(
            color: appTheme.gray900,
          ),
        ),
        Text(
          time,
          style: CustomTextStyles.bodyMediumGray900.copyWith(
            color: appTheme.gray900,
          ),
        ),
      ],
    );
  }
}
