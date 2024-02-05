import 'dart:ui';
import 'package:counting_lives/core/app_export.dart';
import 'package:flutter/material.dart';

/// A class that offers pre-defined button styles for customizing button appearance.
class CustomButtonStyles {
  // Filled button style
  static ButtonStyle get fillPrimary => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(21.h),
        ),
      );
  static ButtonStyle get fillPrimary1 => ElevatedButton.styleFrom(
        backgroundColor: theme.colorScheme.primary,
      );
  static ButtonStyle get fillTealA => ElevatedButton.styleFrom(
        backgroundColor: appTheme.tealA700,
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(15.h),
        ),
      );

  // Gradient button style
  static BoxDecoration get gradientDeepOrangeToPinkDecoration => BoxDecoration(
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(
            22.h,
          ),
          topRight: Radius.circular(
            22.h,
          ),
          bottomLeft: Radius.circular(
            21.h,
          ),
          bottomRight: Radius.circular(
            21.h,
          ),
        ),
        gradient: LinearGradient(
          begin: Alignment(0.05, 0),
          end: Alignment(0.96, 1),
          colors: [
            appTheme.deepOrange300,
            appTheme.pink300,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToTealADecoration =>
      BoxDecoration(
        borderRadius: BorderRadius.circular(21.h),
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(0.96, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            appTheme.tealA700,
          ],
        ),
      );
  static BoxDecoration get gradientOnPrimaryContainerToTealA1Decoration =>
      BoxDecoration(
        gradient: LinearGradient(
          begin: Alignment(0.0, 0),
          end: Alignment(0.96, 0),
          colors: [
            theme.colorScheme.onPrimaryContainer,
            appTheme.tealA700,
          ],
        ),
      );
  // text button style
  static ButtonStyle get none => ButtonStyle(
        backgroundColor: MaterialStateProperty.all<Color>(Colors.transparent),
        elevation: MaterialStateProperty.all<double>(0),
      );
}
