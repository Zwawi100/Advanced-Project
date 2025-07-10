import 'package:advancedproject/presentation/color_manager.dart';
import 'package:advancedproject/presentation/font_manager.dart';
import 'package:advancedproject/presentation/styles_manager.dart';
import 'package:advancedproject/presentation/values_manager.dart';
import 'package:flutter/material.dart';

ThemeData getApplicationTheme() {
  return ThemeData(

      // Main colors
      primaryColor: ColorManager.primary,
      primaryColorLight: ColorManager.primaryLight,
      primaryColorDark: ColorManager.primaryDark,
      disabledColor: ColorManager.grey,
      splashColor: ColorManager.primaryLight,

      // cardView theme
      cardTheme: CardTheme(
        color: ColorManager.white,
        shadowColor: ColorManager.grey,
        elevation: AppSize.extraSmall,
      )

      // AppBar theme
      ,
      appBarTheme: AppBarTheme(
          color: ColorManager.primary,
          centerTitle: true,
          elevation: AppSize.extraSmall,
          shadowColor: ColorManager.primaryLight,
          titleTextStyle: getRegularStyle(
              color: ColorManager.text, fontSize: FontSizeManager.s16)),

      // Button theme
      buttonTheme: ButtonThemeData(
        shape: const StadiumBorder(),
        buttonColor: ColorManager.primary,
        splashColor: ColorManager.primaryLight,
        disabledColor: ColorManager.grey,
      ),

      // Elevated button theme
      elevatedButtonTheme: ElevatedButtonThemeData(
        style: ElevatedButton.styleFrom(
          textStyle: getRegularStyle(color: ColorManager.white , fontSize: FontSizeManager.s17),
          backgroundColor: ColorManager.primary,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(AppBorderRadius.small),
          ),
          
        )
      ),

      // Text theme
      textTheme: TextTheme(
        headlineLarge: getBoldStyle(color: ColorManager.surface , fontSize: FontSizeManager.s18),
        headlineMedium: getSemiBoldStyle(color: ColorManager.surface , fontSize: FontSizeManager.s16),
        bodyMedium : getRegularStyle(color: ColorManager.text, fontSize: FontSizeManager.s12),
      )
      );
}
