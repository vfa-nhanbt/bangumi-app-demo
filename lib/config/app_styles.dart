import 'package:bangumi_app_demo/config/app_colors.dart';
import 'package:bangumi_app_demo/config/app_dimensions.dart';
import 'package:flutter/material.dart';

class AppStyles {
  AppStyles._internal();

  static const FontWeight bold = FontWeight.bold;
  static const FontWeight extraBold = FontWeight.w900;

  static final headline1Style = TextStyle(
    fontSize: AppDimensions.headline1,
    color: AppColors.whiteColor,
    fontWeight: AppStyles.bold,
  );

  static final listTitleStyle = TextStyle(
    fontSize: AppDimensions.headline6,
    color: AppColors.whiteColor,
    fontWeight: AppStyles.bold,
  );

  static final regularTextStyle = TextStyle(
    fontSize: AppDimensions.bodyText1,
    color: AppColors.whiteColor,
  );

  static final subtitleTextStyle = TextStyle(
    fontSize: AppDimensions.bodyText2,
    color: AppColors.secondaryColor,
  );

  static final ColorScheme appColorSchema = ThemeData().colorScheme.copyWith(
        primary: AppColors.primaryColor,
        secondary: AppColors.secondaryColor,
        brightness: Brightness.dark,
      );
}
