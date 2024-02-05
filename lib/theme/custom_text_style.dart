import 'package:flutter/material.dart';
import '../core/app_export.dart';

/// A collection of pre-defined text styles for customizing text appearance,
/// categorized by different font families and weights.
/// Additionally, this class includes extensions on [TextStyle] to easily apply specific font families to text.

class CustomTextStyles {
  // Body text style
  static get bodyLargeGray80001 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.gray80001,
        fontSize: 18.fSize,
      );
  static get bodyLargeTealA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.tealA700,
      );
  static get bodyLargeWhiteA700 => theme.textTheme.bodyLarge!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyLargeff4d4d4d => theme.textTheme.bodyLarge!.copyWith(
        color: Color(0XFF4D4D4D),
      );
  static get bodyMediumBlack900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
      );
  static get bodyMediumBlack90013 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.black900,
        fontSize: 13.fSize,
      );
  static get bodyMediumGray700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray700,
      );
  static get bodyMediumGray900 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.gray900,
      );
  static get bodyMediumTealA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.tealA700,
      );
  static get bodyMediumWhiteA700 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
      );
  static get bodyMediumWhiteA70015 => theme.textTheme.bodyMedium!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 15.fSize,
      );
  static get bodySmall12 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 12.fSize,
      );
  static get bodySmall9 => theme.textTheme.bodySmall!.copyWith(
        fontSize: 9.fSize,
      );
  static get bodySmallGray400 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray400,
        fontSize: 12.fSize,
      );
  static get bodySmallGray500 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray500,
        fontSize: 12.fSize,
      );
  static get bodySmallGray50002 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray50002,
        fontSize: 12.fSize,
      );
  static get bodySmallGray700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 12.fSize,
      );
  static get bodySmallGray70010 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray700,
        fontSize: 10.fSize,
      );
  static get bodySmallGray80001 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.gray80001,
        fontSize: 12.fSize,
      );
  static get bodySmallOnPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.onPrimary,
        fontSize: 12.fSize,
      );
  static get bodySmallPrimary => theme.textTheme.bodySmall!.copyWith(
        color: theme.colorScheme.primary,
        fontSize: 12.fSize,
      );
  static get bodySmallTealA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.tealA700,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA700 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 10.fSize,
      );
  static get bodySmallWhiteA70012 => theme.textTheme.bodySmall!.copyWith(
        color: appTheme.whiteA700,
        fontSize: 12.fSize,
      );
  // Mulish text style
  static get mulishBlack900 => TextStyle(
        color: appTheme.black900,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).mulish;
  static get mulishGray8004c => TextStyle(
        color: appTheme.gray8004c,
        fontSize: 7.fSize,
        fontWeight: FontWeight.w400,
      ).mulish;
  // Title text style
  static get titleMediumExtraBold => theme.textTheme.titleMedium!.copyWith(
        fontWeight: FontWeight.w800,
      );
  static get titleMediumWhiteA700 => theme.textTheme.titleMedium!.copyWith(
        color: appTheme.whiteA700,
      );
}

extension on TextStyle {
  TextStyle get mulish {
    return copyWith(
      fontFamily: 'Mulish',
    );
  }
}
