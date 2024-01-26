import 'package:areeb_s_application2/core/app_export.dart';
import 'package:flutter/material.dart';

// ignore: must_be_immutable
class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  CustomAppBar({
    Key? key,
    this.height,
    this.styleType,
    this.leadingWidth,
    this.leading,
    this.title,
    this.centerTitle,
    this.actions,
  }) : super(
          key: key,
        );

  final double? height;

  final Style? styleType;

  final double? leadingWidth;

  final Widget? leading;

  final Widget? title;

  final bool? centerTitle;

  final List<Widget>? actions;

  @override
  Widget build(BuildContext context) {
    return AppBar(
      elevation: 0,
      toolbarHeight: height ?? 59.v,
      automaticallyImplyLeading: false,
      backgroundColor: Colors.transparent,
      flexibleSpace: _getStyle(),
      leadingWidth: leadingWidth ?? 0,
      leading: leading,
      title: title,
      titleSpacing: 0,
      centerTitle: centerTitle ?? false,
      actions: actions,
    );
  }

  @override
  Size get preferredSize => Size(
        SizeUtils.width,
        height ?? 59.v,
      );
  _getStyle() {
    switch (styleType) {
      case Style.bgGradientnameonPrimaryContainernametealA700:
        return Container(
          height: 56.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0.12),
              end: Alignment(1, 1),
              colors: [
                theme.colorScheme.onPrimaryContainer,
                appTheme.tealA700,
              ],
            ),
          ),
        );
      case Style.bgGradientnameonPrimaryContainernametealA700_1:
        return Container(
          height: 59.v,
          width: double.maxFinite,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: Alignment(0, 0),
              end: Alignment(0.98, 1),
              colors: [
                theme.colorScheme.onPrimaryContainer,
                appTheme.tealA700,
              ],
            ),
          ),
        );
      default:
        return null;
    }
  }
}

enum Style {
  bgGradientnameonPrimaryContainernametealA700,
  bgGradientnameonPrimaryContainernametealA700_1,
}
