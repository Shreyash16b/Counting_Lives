import 'package:flutter/material.dart';
import '../../core/app_export.dart';

/// Helper class for managing themes and colors.
class ThemeHelper {
  // The current app theme
  var _appTheme = PrefUtils().getThemeData();

// A map of custom color themes supported by the app
  Map<String, PrimaryColors> _supportedCustomColor = {
    'primary': PrimaryColors()
  };

// A map of color schemes supported by the app
  Map<String, ColorScheme> _supportedColorScheme = {
    'primary': ColorSchemes.primaryColorScheme
  };

  /// Changes the app theme to [_newTheme].
  void changeTheme(String _newTheme) {
    PrefUtils().setThemeData(_newTheme);
    Get.forceAppUpdate();
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors _getThemeColors() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedCustomColor.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    return _supportedCustomColor[_appTheme] ?? PrimaryColors();
  }

  /// Returns the current theme data.
  ThemeData _getThemeData() {
    //throw exception to notify given theme is not found or not generated by the generator
    if (!_supportedColorScheme.containsKey(_appTheme)) {
      throw Exception(
          "$_appTheme is not found.Make sure you have added this theme class in JSON Try running flutter pub run build_runner");
    }
    //return theme from map

    var colorScheme =
        _supportedColorScheme[_appTheme] ?? ColorSchemes.primaryColorScheme;
    return ThemeData(
      visualDensity: VisualDensity.standard,
      colorScheme: colorScheme,
      textTheme: TextThemes.textTheme(colorScheme),
      scaffoldBackgroundColor: appTheme.gray50,
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          backgroundColor: colorScheme.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(24.h),
          ),
          visualDensity: const VisualDensity(
            vertical: -4,
            horizontal: -4,
          ),
          padding: EdgeInsets.zero,
        ),
      ),
      dividerTheme: DividerThemeData(
        thickness: 1,
        space: 1,
        color: appTheme.gray200,
      ),
    );
  }

  /// Returns the primary colors for the current theme.
  PrimaryColors themeColor() => _getThemeColors();

  /// Returns the current theme data.
  ThemeData themeData() => _getThemeData();
}

/// Class containing the supported text theme styles.
class TextThemes {
  static TextTheme textTheme(ColorScheme colorScheme) => TextTheme(
        bodyLarge: TextStyle(
          color: appTheme.redA200.withOpacity(0.53),
          fontSize: 16.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
        bodyMedium: TextStyle(
          color: appTheme.redA200,
          fontSize: 14.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
        bodySmall: TextStyle(
          color: appTheme.gray70001,
          fontSize: 10.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
        displaySmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 38.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        ),
        headlineLarge: TextStyle(
          color: colorScheme.primary,
          fontSize: 32.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
        headlineMedium: TextStyle(
          color: appTheme.tealA70001.withOpacity(0.67),
          fontSize: 28.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w300,
        ),
        headlineSmall: TextStyle(
          color: colorScheme.primary,
          fontSize: 24.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        ),
        titleLarge: TextStyle(
          color: appTheme.tealA70001,
          fontSize: 23.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w400,
        ),
        titleMedium: TextStyle(
          color: colorScheme.primary,
          fontSize: 16.fSize,
          fontFamily: 'Mulish',
          fontWeight: FontWeight.w700,
        ),
      );
}

/// Class containing the supported color schemes.
class ColorSchemes {
  static final primaryColorScheme = ColorScheme.light(
    // Primary colors
    primary: Color(0XFFFFFFFF),
    primaryContainer: Color(0XFF4D4D4D),

    // Error colors
    errorContainer: Color(0XFFA7A7A7),
    onErrorContainer: Color(0XFF1E1D25),

    // On colors(text colors)
    onPrimary: Color(0XFF2F2E41),
  );
}

/// Class containing custom colors for a primary theme.
class PrimaryColors {
  // Black
  Color get black900 => Color(0XFF000000);

  // Blue
  Color get blue50 => Color(0XFFE8F5FF);

  // BlueGray
  Color get blueGray600 => Color(0XFF575A89);
  Color get blueGray700 => Color(0XFF515151);
  Color get blueGray70001 => Color(0XFF535461);
  Color get blueGray800 => Color(0XFF3F3D56);
  Color get blueGray900 => Color(0XFF353146);

  // Cyan
  Color get cyan50 => Color(0XFFDAFFF8);

  // DeepOrange
  Color get deepOrange100 => Color(0XFFFFB8B8);
  Color get deepOrange300 => Color(0XFFFF9955);

  // DeepPurple
  Color get deepPurple100 => Color(0XFFCFCCE0);

  // Gray
  Color get gray100 => Color(0XFFF4F4F4);
  Color get gray10001 => Color(0XFFF2F2F2);
  Color get gray200 => Color(0XFFEBEBEB);
  Color get gray400 => Color(0XFFC8C6C6);
  Color get gray50 => Color(0XFFFBFBFB);
  Color get gray500 => Color(0XFF979696);
  Color get gray50001 => Color(0XFF8F8F8F);
  Color get gray600 => Color(0XFF99607E);
  Color get gray60001 => Color(0XFF747474);
  Color get gray700 => Color(0XFF5E5E5E);
  Color get gray70001 => Color(0XFF616161);
  Color get gray800 => Color(0XFF454545);
  Color get gray80001 => Color(0XFF4C4C4C);
  Color get gray80049 => Color(0X493C3C43);

  // Indigo
  Color get indigoA200 => Color(0XFF6C63FF);
  Color get indigoA700 => Color(0XFF0235FE);

  // LightBlue
  Color get lightBlueA100 => Color(0XFF66DAFF);
  Color get lightBlueA700 => Color(0XFF007AFF);

  // Lime
  Color get limeA700 => Color(0XFFAAD400);

  // Pink
  Color get pink100 => Color(0XFFFFC1C7);
  Color get pink300 => Color(0XFFFF748E);
  Color get pink30001 => Color(0XFFFF5599);

  // Red
  Color get red100 => Color(0XFFFFE0D0);
  Color get red10001 => Color(0XFFFFCCD0);
  Color get redA200 => Color(0XFFFF5555);

  // Teal
  Color get teal50 => Color(0XFFDCE6F2);
  Color get tealA700 => Color(0XFF01D4AA);
  Color get tealA70001 => Color(0XFF00D4AA);
}

PrimaryColors get appTheme => ThemeHelper().themeColor();
ThemeData get theme => ThemeHelper().themeData();