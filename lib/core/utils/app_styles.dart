import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:marketly/core/constants/app_constants.dart';
import 'package:marketly/core/utils/color_manager.dart';

import 'font_weight_values.dart';

class AppStyles {
  
  static  TextStyle semiBold24White = TextStyle(
    fontSize: 24.sp,
    fontWeight: FontWeightValues.semiBold,
    color: ColorManager.whiteColor,
    fontFamily: AppConstants.fontFamily,
  );
  static  TextStyle light16White = TextStyle(
    fontSize: 16.sp,
    fontWeight: FontWeightValues.light,
    color: ColorManager.whiteColor,
    fontFamily: AppConstants.fontFamily,
  );
  static  TextStyle medium18White = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightValues.medium,
    color: ColorManager.whiteColor,
    fontFamily: AppConstants.fontFamily,
  );
  static  TextStyle light18Black = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightValues.light,
    color: ColorManager.blackColor.withOpacity(0.7),
    fontFamily: AppConstants.fontFamily,
  );
  static  TextStyle regular18White = TextStyle(
    fontSize: 18.sp,
    fontWeight: FontWeightValues.regular,
    color: ColorManager.whiteColor,
    fontFamily: AppConstants.fontFamily,
  );
  static  TextStyle semiBold20Primary= TextStyle(
    fontSize: 20.sp,
    fontWeight: FontWeightValues.semiBold,
    color: ColorManager.primaryColor,
    fontFamily: AppConstants.fontFamily,
  );
}