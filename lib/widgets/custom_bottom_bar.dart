import 'package:areeb_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

class CustomBottomBar extends StatefulWidget {
  CustomBottomBar({this.onChanged});

  Function(BottomBarEnum)? onChanged;

  @override
  CustomBottomBarState createState() => CustomBottomBarState();
}

class CustomBottomBarState extends State<CustomBottomBar> {
  int selectedIndex = 0;

  List<BottomMenuModel> bottomMenuList = [
    BottomMenuModel(
      icon: ImageConstant.imgNavTimings,
      activeIcon: ImageConstant.imgNavTimings,
      title: "Timings",
      type: BottomBarEnum.Timings,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgClockGray50002,
      activeIcon: ImageConstant.imgClockGray50002,
      title: "Photos",
      type: BottomBarEnum.Photos,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgNavReviews,
      activeIcon: ImageConstant.imgNavReviews,
      title: "Reviews",
      type: BottomBarEnum.Reviews,
    ),
    BottomMenuModel(
      icon: ImageConstant.imgInbox,
      activeIcon: ImageConstant.imgInbox,
      title: "Details",
      type: BottomBarEnum.Details,
    )
  ];

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 67.v,
      decoration: BoxDecoration(
        color: appTheme.gray200,
      ),
      child: BottomNavigationBar(
        backgroundColor: Colors.transparent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        selectedFontSize: 0,
        elevation: 0,
        currentIndex: selectedIndex,
        type: BottomNavigationBarType.fixed,
        items: List.generate(bottomMenuList.length, (index) {
          return BottomNavigationBarItem(
            icon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].icon,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  color: appTheme.gray50002,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 8.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmallGray50002.copyWith(
                      color: appTheme.gray50002,
                    ),
                  ),
                ),
              ],
            ),
            activeIcon: Column(
              mainAxisSize: MainAxisSize.min,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomImageView(
                  imagePath: bottomMenuList[index].activeIcon,
                  height: 15.adaptSize,
                  width: 15.adaptSize,
                  color: appTheme.black900,
                ),
                Padding(
                  padding: EdgeInsets.only(top: 6.v),
                  child: Text(
                    bottomMenuList[index].title ?? "",
                    style: CustomTextStyles.bodySmall12.copyWith(
                      color: appTheme.black900,
                    ),
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(top: 11.v),
                  child: SizedBox(
                    width: 80.h,
                    child: Divider(
                      color: appTheme.black900,
                    ),
                  ),
                ),
              ],
            ),
            label: '',
          );
        }),
        onTap: (index) {
          selectedIndex = index;
          widget.onChanged?.call(bottomMenuList[index].type);
          setState(() {});
        },
      ),
    );
  }
}

enum BottomBarEnum {
  Timings,
  Photos,
  Reviews,
  Details,
}

class BottomMenuModel {
  BottomMenuModel({
    required this.icon,
    required this.activeIcon,
    this.title,
    required this.type,
  });

  String icon;

  String activeIcon;

  String? title;

  BottomBarEnum type;
}

class DefaultWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.white,
      padding: EdgeInsets.all(10),
      child: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              'Please replace the respective Widget here',
              style: TextStyle(
                fontSize: 18,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
